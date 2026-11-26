import PEqualNP.Defs

/-!
Parity of six inputs in twenty gates: the exclusive or of two wires is
`(a or b) and not (a and b)`, four gates, and folding the six inputs left to
right uses five of them.  Inputs are wires 0..5 and gate j drives wire 6+j.
-/

def parity6FanInTwoBool (C : PEqualNP.CircuitLowerBounds.Circuit) : Bool :=
  C.gates.all fun g =>
    (match g.op with
     | .and => true
     | .or => true
     | .not => true
     | _ => false) && decide (g.inputs.length ≤ 2)

theorem parity6FanInTwo_of_bool (C : PEqualNP.CircuitLowerBounds.Circuit)
    (h : parity6FanInTwoBool C = true) : PEqualNP.MetaComplexity.FanInTwo C := by
  intro g hg
  have hall := List.all_eq_true.mp h g hg
  simp only [Bool.and_eq_true, decide_eq_true_eq] at hall
  refine ⟨?_, hall.2⟩
  cases hop : g.op <;> simp [hop] at hall ⊢

def parity6Witness : PEqualNP.CircuitLowerBounds.Circuit :=
  ⟨[
    ⟨.or,  [0, 1]⟩,
    ⟨.and, [0, 1]⟩,
    ⟨.not, [7]⟩,
    ⟨.and, [6, 8]⟩,
    ⟨.or,  [9, 2]⟩,
    ⟨.and, [9, 2]⟩,
    ⟨.not, [11]⟩,
    ⟨.and, [10, 12]⟩,
    ⟨.or,  [13, 3]⟩,
    ⟨.and, [13, 3]⟩,
    ⟨.not, [15]⟩,
    ⟨.and, [14, 16]⟩,
    ⟨.or,  [17, 4]⟩,
    ⟨.and, [17, 4]⟩,
    ⟨.not, [19]⟩,
    ⟨.and, [18, 20]⟩,
    ⟨.or,  [21, 5]⟩,
    ⟨.and, [21, 5]⟩,
    ⟨.not, [23]⟩,
    ⟨.and, [22, 24]⟩
  ], 25⟩

theorem parity6_basis : PEqualNP.MetaComplexity.FanInTwo parity6Witness :=
  parity6FanInTwo_of_bool parity6Witness (by decide +kernel)

theorem parity6_evals :
    ∀ x : Fin 6 → Bool,
      parity6Witness.eval (List.ofFn x)
        = (7608434000728254870 : ℕ).testBit (PEqualNP.MetaComplexity.tableIndex x) := by
  decide +kernel

theorem PEqualNP.Outside.L_meta_20787 :
    PEqualNP.MetaComplexity.HasCircuitSize 6
      (fun x : Fin 6 → Bool =>
        (7608434000728254870 : ℕ).testBit (PEqualNP.MetaComplexity.tableIndex x)) 20 :=
  ⟨parity6Witness, parity6_basis, by decide +kernel, parity6_evals⟩
