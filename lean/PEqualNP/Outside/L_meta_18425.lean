import PEqualNP.Defs

/-!
A fan-in-two circuit whose gates are all OR gates computes an OR of its input wires: there is a
fixed set `S` of input wires with `C.eval x = true ↔ ∃ i ∈ S, x i = true`.

The step `L-meta-18425` assumes such a circuit is right on the point-line incidence function of the
plane of order three.  That function is false on every singleton input and true on some pair, so no
OR of input wires can match it; the step's hypotheses are therefore contradictory.
-/

namespace PEqualNP.Outside.L_meta_18425

open PEqualNP.CircuitLowerBounds

/-- The support contributed by one gate: an OR unions the supports of the two wires it reads. -/
def gateSupp (n : ℕ) (m : List (Finset (Fin n))) (g : Gate) : Finset (Fin n) :=
  match g.op with
  | GateOp.or => (m.getD (g.inputs.getD 0 0) ∅) ∪ (m.getD (g.inputs.getD 1 0) ∅)
  | _ => ∅

/-- The support of every wire, folded like `Circuit.wires`. -/
def supps (n : ℕ) (gs : List Gate) : List (Finset (Fin n)) :=
  gs.foldl (fun m g => m ++ [gateSupp n m g]) (List.ofFn fun i => ({i} : Finset (Fin n)))

/-- The value fold, spelled out so that one step can be reasoned about on its own. -/
def stepVal (m : List Bool) (g : Gate) : List Bool :=
  m ++ [g.op.eval (g.inputs.map fun i => m.getD i false)]

theorem wires_eq_fold (C : Circuit) (x : List Bool) :
    C.wires x = C.gates.foldl stepVal x := rfl

theorem supps_length_aux (n : ℕ) (gs : List Gate) (m : List (Finset (Fin n))) :
    (gs.foldl (fun m g => m ++ [gateSupp n m g]) m).length = m.length + gs.length := by
  induction gs generalizing m with
  | nil => simp
  | cons g rest ih =>
    simp only [List.foldl_cons, List.length_cons]
    rw [ih (m ++ [gateSupp n m g])]
    simp
    omega

theorem supps_length (n : ℕ) (gs : List Gate) : (supps n gs).length = n + gs.length := by
  unfold supps
  rw [supps_length_aux]
  simp

theorem stepVal_old (m : List Bool) (g : Gate) {k : ℕ} (h : k < m.length) :
    (stepVal m g).getD k false = m.getD k false := by
  unfold stepVal
  rw [List.getD_append _ _ _ _ h]

theorem stepSupp_old (n : ℕ) (m : List (Finset (Fin n))) (g : Gate) {k : ℕ}
    (h : k < m.length) :
    (m ++ [gateSupp n m g]).getD k ∅ = m.getD k ∅ := by
  rw [List.getD_append _ _ _ _ h]

/-- The invariant: a wire of the fold is true exactly when the input hits its support. -/
theorem fold_invariant (n : ℕ) (x : Fin n → Bool) :
    ∀ (gs : List Gate) (m : List (Finset (Fin n))) (v : List Bool),
      v.length = m.length →
      (∀ k, k < v.length → (v.getD k false = true ↔ ∃ i ∈ m.getD k ∅, x i = true)) →
      (∀ g ∈ gs, g.op = GateOp.or) →
      (∀ g ∈ gs, g.inputs.length = 2) →
      (∀ (k : ℕ), k < gs.length → ∀ g, gs[k]? = some g → ∀ i ∈ g.inputs, i < v.length + k) →
      ∀ k, k < (gs.foldl stepVal v).length →
        ((gs.foldl stepVal v).getD k false = true ↔
          ∃ i ∈ (gs.foldl (fun m g => m ++ [gateSupp n m g]) m).getD k ∅, x i = true) := by
  intro gs
  induction gs with
  | nil =>
    intro m v _ hinv _ _ _ k hk
    simpa using hinv k (by simpa using hk)
  | cons g rest ih =>
    intro m v hlen hinv hor hfan hread k hk
    have hgor : g.op = GateOp.or := hor g List.mem_cons_self
    have hgfan : g.inputs.length = 2 := hfan g List.mem_cons_self
    obtain ⟨a, b, hab⟩ : ∃ a b : ℕ, g.inputs = [a, b] := by
      cases hgi : g.inputs with
      | nil => rw [hgi] at hgfan; simp at hgfan
      | cons a t =>
        cases t with
        | nil => rw [hgi] at hgfan; simp at hgfan
        | cons b t2 =>
          cases t2 with
          | nil => exact ⟨a, b, by simp [hgi]⟩
          | cons c t3 => rw [hgi] at hgfan; simp at hgfan
    have ha : a < v.length := by
      have := hread 0 (by simp) g rfl a (by rw [hab]; simp)
      simpa using this
    have hb : b < v.length := by
      have := hread 0 (by simp) g rfl b (by rw [hab]; simp)
      simpa using this
    have hnew_val : (stepVal v g).getD v.length false
        = ((v.getD a false) || (v.getD b false)) := by
      have h1 : (stepVal v g).getD v.length false
          = (g.op.eval (g.inputs.map fun i => v.getD i false)) := by
        unfold stepVal
        rw [List.getD_append_right _ _ _ _ (le_refl _)]
        rw [Nat.sub_self]
        rfl
      rw [h1, hgor, hab]
      simp [GateOp.eval]
    have hnew_supp : (m ++ [gateSupp n m g]).getD v.length ∅
        = (m.getD a ∅) ∪ (m.getD b ∅) := by
      have h1 : (m ++ [gateSupp n m g]).getD m.length ∅ = gateSupp n m g := by
        rw [List.getD_append_right _ _ _ _ (le_refl _)]
        rw [Nat.sub_self]
        rfl
      rw [hlen, h1]
      unfold gateSupp
      rw [hgor]
      simp [hab]
    have hlen' : (stepVal v g).length = (m ++ [gateSupp n m g]).length := by
      simp [stepVal, hlen]
    have hinv' : ∀ k, k < (stepVal v g).length →
        ((stepVal v g).getD k false = true ↔
          ∃ i ∈ (m ++ [gateSupp n m g]).getD k ∅, x i = true) := by
      intro k hk'
      rcases Nat.lt_succ_iff_lt_or_eq.mp (by simpa [stepVal] using hk') with hlt | heq
      · rw [stepVal_old _ _ hlt, stepSupp_old _ _ _ (by omega)]
        exact hinv k hlt
      · subst heq
        rw [hnew_val, hnew_supp, Bool.or_eq_true]
        constructor
        · rintro (h' | h')
          · obtain ⟨i, hi, hxi⟩ := (hinv a ha).mp h'
            exact ⟨i, Finset.mem_union_left _ hi, hxi⟩
          · obtain ⟨i, hi, hxi⟩ := (hinv b hb).mp h'
            exact ⟨i, Finset.mem_union_right _ hi, hxi⟩
        · rintro ⟨i, hi, hxi⟩
          rcases Finset.mem_union.mp hi with hi | hi
          · exact Or.inl ((hinv a ha).mpr ⟨i, hi, hxi⟩)
          · exact Or.inr ((hinv b hb).mpr ⟨i, hi, hxi⟩)
    have hread' : ∀ (k : ℕ), k < rest.length → ∀ g', rest[k]? = some g' →
        ∀ i ∈ g'.inputs, i < (stepVal v g).length + k := by
      intro k' hk' g' hg' i hi
      have := hread (k' + 1) (by simpa using hk') g' (by simpa using hg') i hi
      simp only [stepVal]
      simp only [List.length_append, List.length_singleton] at this ⊢
      omega
    exact ih (m ++ [gateSupp n m g]) (stepVal v g) hlen' hinv'
      (fun g' hg' => hor g' (List.mem_cons_of_mem _ hg'))
      (fun g' hg' => hfan g' (List.mem_cons_of_mem _ hg'))
      hread' k (by simpa [stepVal] using hk)

/-- The circuit value is an OR of its input wires. -/
theorem eval_is_or (x1 : Circuit) (haoo : ∀ g ∈ x1.gates, g.op = GateOp.or)
    (hfan : ∀ g ∈ x1.gates, g.inputs.length = 2)
    (hrb : ∀ (j : ℕ), j < x1.gates.length →
      ∀ i ∈ (PEqualNP.MetaComplexity.NestedCover.gateAt x1 j).inputs, i < 26 + j)
    (x : Fin 26 → Bool) :
    x1.eval (List.ofFn x) = true ↔
      ∃ i ∈ (supps 26 x1.gates).getD x1.output ∅, x i = true := by
  have hlen : (List.ofFn x : List Bool).length
      = (List.ofFn fun i : Fin 26 => ({i} : Finset (Fin 26))).length := by simp
  have hinv : ∀ k, k < (List.ofFn x : List Bool).length →
      ((List.ofFn x : List Bool).getD k false = true ↔
        ∃ i ∈ (List.ofFn fun i : Fin 26 => ({i} : Finset (Fin 26))).getD k ∅, x i = true) := by
    intro k hk
    have hk1 : k < (List.ofFn x : List Bool).length := hk
    have hk2 : k < (List.ofFn fun i : Fin 26 => ({i} : Finset (Fin 26))).length := by
      simpa using hk
    rw [List.getD_eq_getElem _ _ hk1, List.getD_eq_getElem _ _ hk2]
    rw [List.getElem_ofFn, List.getElem_ofFn]
    simp
  have hread : ∀ (k : ℕ), k < x1.gates.length → ∀ g, x1.gates[k]? = some g →
      ∀ i ∈ g.inputs, i < (List.ofFn x : List Bool).length + k := by
    intro k hk g hg i hi
    have hgk : PEqualNP.MetaComplexity.NestedCover.gateAt x1 k = g := by
      unfold PEqualNP.MetaComplexity.NestedCover.gateAt
      simp only [List.getD_eq_getElem?_getD]
      rw [hg]
      rfl
    rw [← hgk] at hi
    have := hrb k hk i hi
    simpa using this
  have hlen3 : ∀ (gs : List Gate) (v : List Bool),
      (gs.foldl stepVal v).length = v.length + gs.length := by
    intro gs v
    induction gs generalizing v with
    | nil => simp
    | cons g rest ih =>
      simp only [List.foldl_cons]
      show (rest.foldl stepVal (stepVal v g)).length = v.length + (rest.length + 1)
      rw [ih (stepVal v g)]
      simp only [stepVal, List.length_append, List.length_singleton]
      omega
  have hlen2 : (x1.gates.foldl stepVal (List.ofFn x)).length
      = (List.ofFn x).length + x1.gates.length := hlen3 x1.gates (List.ofFn x)
  unfold Circuit.eval
  rw [wires_eq_fold]
  by_cases ho : x1.output < (x1.gates.foldl stepVal (List.ofFn x)).length
  · have hmain := fold_invariant 26 x x1.gates
        (List.ofFn fun i : Fin 26 => ({i} : Finset (Fin 26))) (List.ofFn x)
        hlen hinv haoo hfan hread x1.output ho
    unfold supps
    exact hmain
  · have hsupp : (supps 26 x1.gates).getD x1.output ∅ = ∅ := by
      unfold supps
      rw [List.getD_eq_default _ _ (by rw [supps_length_aux]; omega)]
    rw [List.getD_eq_default _ _ (by omega), hsupp]
    simp

end PEqualNP.Outside.L_meta_18425

/-- The step: an all-OR circuit cannot compute the point-line incidence function of the plane of
order three, so the hypotheses are contradictory and the conclusion follows. -/
theorem PEqualNP.Outside.L_meta_18425 :
    ∀ (x1 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.TopForm.IsAO2 (26 : ℕ) x1 →
      (¬∃ (x3 : Fin x1.gates.length),
        (x1.gates.get x3).op = PEqualNP.CircuitLowerBounds.GateOp.and) →
      x1.size ≤ (63 : ℕ) →
      (∀ (x5 : Fin (26 : ℕ) → Bool),
        x1.eval (List.ofFn x5) = Bool.true ↔
          ∃ (x6 : Fin (13 : ℕ)) (x7 : Fin (13 : ℕ)),
            (x6 = x7 ∨ x6 = x7 + (1 : Fin (13 : ℕ)) ∨ x6 = x7 + (3 : Fin (13 : ℕ)) ∨
              x6 = x7 + (9 : Fin (13 : ℕ))) ∧
            x5 (Fin.castAdd (13 : ℕ) x6) = Bool.true ∧
            x5 (Fin.natAdd (13 : ℕ) x7) = Bool.true) →
      ∃ (x6 : Fin (26 : ℕ)) (x7 : PEqualNP.CircuitLowerBounds.Circuit),
        PEqualNP.TopForm.IsAO2 (26 : ℕ) x7 ∧ x7.size + (5 : ℕ) ≤ x1.size ∧
          ∀ (x8 : Fin (26 : ℕ) → Bool),
            x7.eval (List.ofFn x8) = Bool.true ↔
              ∃ (x9 : Fin (13 : ℕ)) (x10 : Fin (13 : ℕ)),
                (x9 = x10 ∨ x9 = x10 + (1 : Fin (13 : ℕ)) ∨ x9 = x10 + (3 : Fin (13 : ℕ)) ∨
                  x9 = x10 + (9 : Fin (13 : ℕ))) ∧
                Fin.castAdd (13 : ℕ) x9 ≠ x6 ∧ Fin.natAdd (13 : ℕ) x10 ≠ x6 ∧
                x8 (Fin.castAdd (13 : ℕ) x9) = Bool.true ∧
                x8 (Fin.natAdd (13 : ℕ) x10) = Bool.true := by
  intro x1 hAO hnoand _ hfun
  obtain ⟨haoo, hrb, hfan⟩ := hAO
  -- every gate is an OR gate
  have hor : ∀ g ∈ x1.gates, g.op = PEqualNP.CircuitLowerBounds.GateOp.or := by
    intro g hg
    rcases haoo g hg with h | h
    · exfalso
      obtain ⟨k, hkeq⟩ := List.mem_iff_get.mp hg
      exact hnoand ⟨k, by rw [hkeq]; exact h⟩
    · exact h
  -- the value of the circuit is an OR of the input wires
  have hS : ∀ x : Fin 26 → Bool,
      x1.eval (List.ofFn x) = true ↔
        ∃ i ∈ (PEqualNP.Outside.L_meta_18425.supps 26 x1.gates).getD x1.output ∅, x i = true := by
    intro x
    have hrb' : ∀ (j : ℕ), j < x1.gates.length →
        ∀ i ∈ (PEqualNP.MetaComplexity.NestedCover.gateAt x1 j).inputs, i < 26 + j := hrb
    exact PEqualNP.Outside.L_meta_18425.eval_is_or x1 hor hfan hrb' x
  -- no single input is accepted
  have hsingle : ∀ i : Fin 26,
      ¬ (∃ (x6 x7 : Fin 13),
          (x6 = x7 ∨ x6 = x7 + (1 : Fin 13) ∨ x6 = x7 + (3 : Fin 13) ∨ x6 = x7 + (9 : Fin 13)) ∧
          (fun j : Fin 26 => decide (j = i)) (Fin.castAdd 13 x6) = true ∧
          (fun j : Fin 26 => decide (j = i)) (Fin.natAdd 13 x7) = true) := by
    rintro i ⟨x6, x7, -, h1, h2⟩
    simp only [decide_eq_true_eq] at h1 h2
    have heq : Fin.castAdd 13 x6 = Fin.natAdd 13 x7 := by rw [h1, h2]
    have hv : (Fin.castAdd 13 x6).val = (Fin.natAdd 13 x7).val := by rw [heq]
    have e1 : (Fin.castAdd 13 x6).val = x6.val := rfl
    have e2 : (Fin.natAdd 13 x7).val = 13 + x7.val := rfl
    omega
  -- hence the support is empty
  have hempty : (PEqualNP.Outside.L_meta_18425.supps 26 x1.gates).getD x1.output ∅ = ∅ := by
    by_contra hne
    obtain ⟨i, hi⟩ := Finset.nonempty_iff_ne_empty.mpr hne
    have htrue : x1.eval (List.ofFn fun j : Fin 26 => decide (j = i)) = true := by
      rw [hS]
      exact ⟨i, hi, by simp⟩
    exact hsingle i ((hfun (fun j : Fin 26 => decide (j = i))).mp htrue)
  -- but the pair input is accepted
  have hpair : x1.eval (List.ofFn fun j : Fin 26 => decide (j = 0 ∨ j = 13)) = true := by
    rw [hfun]
    exact ⟨0, 0, Or.inl rfl, by decide, by decide⟩
  have hcontra : ¬ (x1.eval (List.ofFn fun j : Fin 26 => decide (j = 0 ∨ j = 13)) = true) := by
    intro h
    rw [hS (fun j : Fin 26 => decide (j = 0 ∨ j = 13)), hempty] at h
    simpa using h
  exact absurd hpair hcontra
