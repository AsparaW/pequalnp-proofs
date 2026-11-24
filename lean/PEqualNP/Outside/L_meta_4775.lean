import Mathlib
import PEqualNP.Defs

namespace PEqualNP.Outside.L_meta_4775

open PEqualNP.CircuitLowerBounds

/-- Two wire lists compared pointwise, with a missing wire reading `false` (which is what
`Circuit.eval` does).  `false` is the bottom of `Bool`, so this is the order the evaluation is
monotone in. -/
def LeW (w1 w2 : List Bool) : Prop :=
  w1.length = w2.length ∧ ∀ i, w1.getD i false ≤ w2.getD i false

lemma LeW.append {w1 w2 : List Bool} (h : LeW w1 w2) {v1 v2 : Bool} (hv : v1 ≤ v2) :
    LeW (w1 ++ [v1]) (w2 ++ [v2]) := by
  have hlen : w1.length = w2.length := h.1
  refine ⟨by simp [hlen], ?_⟩
  intro i
  rcases lt_or_ge i w1.length with hlt | hge
  · rw [List.getD_append _ _ _ _ hlt, List.getD_append _ _ _ _ (hlen ▸ hlt)]
    exact h.2 i
  · rw [List.getD_append_right _ _ _ _ hge, List.getD_append_right _ _ _ _ (hlen ▸ hge)]
    rcases eq_or_lt_of_le hge with heq | hgt
    · rw [← heq]
      simpa [hlen] using hv
    · have hgt2 : w2.length < i := hlen ▸ hgt
      have e1 : 1 ≤ i - w1.length := by omega
      have e2 : 1 ≤ i - w2.length := by omega
      rw [List.getD_eq_default _ _ (by simpa using e1),
          List.getD_eq_default _ _ (by simpa using e2)]

/-- The value a gate puts on its own wire, as a function of the wire list. -/
def gateVal (g : Gate) (w : List Bool) : Bool :=
  g.op.eval (g.inputs.map fun i => w.getD i false)

lemma all_le {l1 l2 : List Bool} (hlen : l1.length = l2.length)
    (h : ∀ i, l1.getD i false ≤ l2.getD i false) : l1.all id ≤ l2.all id := by
  intro h1
  rw [List.all_eq_true] at h1 ⊢
  intro b hb
  obtain ⟨i, hi, rfl⟩ := List.mem_iff_getElem.mp hb
  have hi1 : i < l1.length := by rw [hlen]; exact hi
  have h1i : l1.getD i false = true := by
    rw [List.getD_eq_getElem _ _ hi1]
    exact h1 _ (List.getElem_mem hi1)
  have hle := h i
  rw [h1i, List.getD_eq_getElem _ _ hi] at hle
  exact hle rfl

lemma any_le {l1 l2 : List Bool} (hlen : l1.length = l2.length)
    (h : ∀ i, l1.getD i false ≤ l2.getD i false) : l1.any id ≤ l2.any id := by
  intro h1
  rw [List.any_eq_true] at h1 ⊢
  obtain ⟨b, hb, hbt⟩ := h1
  obtain ⟨i, hi, rfl⟩ := List.mem_iff_getElem.mp hb
  have hi1 : i < l1.length := hi
  have hi2 : i < l2.length := by omega
  refine ⟨l2[i], List.getElem_mem hi2, ?_⟩
  have h1i : l1.getD i false = true := by
    rw [List.getD_eq_getElem _ _ hi1]
    exact hbt
  have hle := h i
  rw [h1i, List.getD_eq_getElem _ _ hi2] at hle
  exact hle rfl

lemma gateVal_mono {g : Gate} (hop : g.op = GateOp.and ∨ g.op = GateOp.or)
    {w1 w2 : List Bool} (h : LeW w1 w2) : gateVal g w1 ≤ gateVal g w2 := by
  have hlen : (g.inputs.map fun i => w1.getD i false).length
      = (g.inputs.map fun i => w2.getD i false).length := by simp
  have hpt : ∀ i, (g.inputs.map fun i => w1.getD i false).getD i false
      ≤ (g.inputs.map fun i => w2.getD i false).getD i false := by
    intro i
    by_cases hi : i < g.inputs.length
    · rw [List.getD_eq_getElem _ _ (by simpa using hi),
          List.getD_eq_getElem _ _ (by simpa using hi)]
      simp only [List.getElem_map]
      exact h.2 _
    · rw [List.getD_eq_default _ _ (by simpa using Nat.le_of_not_lt hi),
          List.getD_eq_default _ _ (by simpa using Nat.le_of_not_lt hi)]
  unfold gateVal
  rcases hop with hop | hop
  · rw [hop]
    exact all_le hlen hpt
  · rw [hop]
    exact any_le hlen hpt

/-- The fold that builds the wire list preserves the pointwise order, as long as every gate is
an AND or an OR. -/
lemma foldl_leW (gs : List Gate) (hmono : ∀ g ∈ gs, g.op = GateOp.and ∨ g.op = GateOp.or) :
    ∀ w1 w2 : List Bool, LeW w1 w2 →
      LeW (gs.foldl (fun w g => w ++ [gateVal g w]) w1)
          (gs.foldl (fun w g => w ++ [gateVal g w]) w2) := by
  induction gs with
  | nil => intro w1 w2 h; exact h
  | cons g gs ih =>
    intro w1 w2 h
    simp only [List.foldl_cons]
    exact ih (fun g' hg' => hmono g' (List.mem_cons_of_mem _ hg'))
      _ _ (h.append (gateVal_mono (hmono g List.mem_cons_self) h))

lemma leW_ofFn {n : ℕ} {a b : Fin n → Bool} (h : a ≤ b) :
    LeW (List.ofFn a) (List.ofFn b) := by
  refine ⟨by simp, ?_⟩
  intro i
  by_cases hi : i < n
  · rw [List.getD_eq_getElem _ _ (by simpa using hi),
        List.getD_eq_getElem _ _ (by simpa using hi)]
    rw [List.getElem_ofFn, List.getElem_ofFn]
    exact h ⟨i, hi⟩
  · rw [List.getD_eq_default _ _ (by simpa using Nat.le_of_not_lt hi),
        List.getD_eq_default _ _ (by simpa using Nat.le_of_not_lt hi)]

end PEqualNP.Outside.L_meta_4775

theorem PEqualNP.Outside.L_meta_4775 :
    ∀ (x1 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x1 →
      ∀ (x3 x4 : Fin (14 : ℕ) → Bool),
        (∀ (x5 : Fin (14 : ℕ)), x3 x5 = Bool.true → x4 x5 = Bool.true) →
        x1.eval (List.ofFn x3) = Bool.true → x1.eval (List.ofFn x4) = Bool.true := by
  intro C hC a b hab h1
  have haoo : ∀ g ∈ C.gates,
      g.op = PEqualNP.CircuitLowerBounds.GateOp.and ∨
        g.op = PEqualNP.CircuitLowerBounds.GateOp.or := by
    intro g hg
    have h := (hC g hg).1
    simpa using h
  have hle : a ≤ b := fun i => hab i
  unfold PEqualNP.CircuitLowerBounds.Circuit.eval at h1 ⊢
  change (C.wires (List.ofFn a)).getD C.output false = true at h1
  change (C.wires (List.ofFn b)).getD C.output false = true
  have hw := PEqualNP.Outside.L_meta_4775.foldl_leW C.gates haoo
    (List.ofFn a) (List.ofFn b) (PEqualNP.Outside.L_meta_4775.leW_ofFn hle)
  have hlen : (C.wires (List.ofFn a)).length = (C.wires (List.ofFn b)).length := hw.1
  have hmono : (C.wires (List.ofFn a)).getD C.output false
      ≤ (C.wires (List.ofFn b)).getD C.output false := by
    by_cases ho : C.output < (C.wires (List.ofFn a)).length
    · have ho2 : C.output < (C.wires (List.ofFn b)).length := by omega
      simpa only [PEqualNP.CircuitLowerBounds.Circuit.wires,
        PEqualNP.Outside.L_meta_4775.gateVal] using hw.2 C.output
    · have ho2 : ¬ C.output < (C.wires (List.ofFn b)).length := by omega
      rw [List.getD_eq_default _ _ (by omega), List.getD_eq_default _ _ (by omega)]
  rw [h1] at hmono
  exact hmono rfl
