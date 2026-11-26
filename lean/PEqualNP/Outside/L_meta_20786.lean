import PEqualNP.Defs

/-!
Two parity circuits.  An exclusive-or of two wires costs four gates,

  xor a b = (a or b) and not (a and b),

and folding left to right gives four of them for five inputs (sixteen gates) and
five of them for six inputs (twenty gates), which is exactly the size each step
asks for.  Inputs are wires 0..n-1 and gate j drives wire n+j.
-/

def parityFanInTwoBool (C : PEqualNP.CircuitLowerBounds.Circuit) : Bool :=
  C.gates.all fun g =>
    (match g.op with
     | .and => true
     | .or => true
     | .not => true
     | _ => false) && decide (g.inputs.length ≤ 2)

theorem parityFanInTwo_of_bool (C : PEqualNP.CircuitLowerBounds.Circuit)
    (h : parityFanInTwoBool C = true) : PEqualNP.MetaComplexity.FanInTwo C := by
  intro g hg
  have hall := List.all_eq_true.mp h g hg
  simp only [Bool.and_eq_true, decide_eq_true_eq] at hall
  refine ⟨?_, hall.2⟩
  cases hop : g.op <;> simp [hop] at hall ⊢

def parity5Witness : PEqualNP.CircuitLowerBounds.Circuit :=
  ⟨[
    ⟨.or,  [0, 1]⟩,
    ⟨.and, [0, 1]⟩,
    ⟨.not, [6]⟩,
    ⟨.and, [5, 7]⟩,
    ⟨.or,  [8, 2]⟩,
    ⟨.and, [8, 2]⟩,
    ⟨.not, [10]⟩,
    ⟨.and, [9, 11]⟩,
    ⟨.or,  [12, 3]⟩,
    ⟨.and, [12, 3]⟩,
    ⟨.not, [14]⟩,
    ⟨.and, [13, 15]⟩,
    ⟨.or,  [16, 4]⟩,
    ⟨.and, [16, 4]⟩,
    ⟨.not, [18]⟩,
    ⟨.and, [17, 19]⟩
  ], 20⟩

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

theorem parity5_basis : PEqualNP.MetaComplexity.FanInTwo parity5Witness :=
  parityFanInTwo_of_bool parity5Witness (by decide +kernel)

theorem parity5_evals :
    ∀ x : Fin 5 → Bool,
      parity5Witness.eval (List.ofFn x)
        = (2523490710 : ℕ).testBit (PEqualNP.MetaComplexity.tableIndex x) := by
  decide +kernel

theorem PEqualNP.Outside.L_meta_20786 :
    PEqualNP.MetaComplexity.HasCircuitSize 5
      (fun x : Fin 5 → Bool =>
        (2523490710 : ℕ).testBit (PEqualNP.MetaComplexity.tableIndex x)) 16 :=
  ⟨parity5Witness, parity5_basis, by decide +kernel, parity5_evals⟩
