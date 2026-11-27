import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_8321_751
    (a1 : have x1 : PEqualNP.CircuitLowerBounds.Circuit → Prop := fun (x1 : PEqualNP.CircuitLowerBounds.Circuit) => ∀ (x2 : Fin (42 : ℕ) → Bool), x1.eval (List.ofFn x2) = Bool.true ↔ ∃ (x3 : Fin (42 : ℕ)) (x4 : Fin (42 : ℕ)), (↑x3 < (21 : ℕ) ∧ (21 : ℕ) ≤ ↑x4 ∧ (↑x4 + (21 : ℕ) - ↑x3) % (21 : ℕ) ∈ [(0 : ℕ), (5 : ℕ), (7 : ℕ), (17 : ℕ), (20 : ℕ)]) ∧ x2 x3 = Bool.true ∧ x2 x4 = Bool.true; have x2 : PEqualNP.CircuitLowerBounds.Circuit → Prop := fun (x2 : PEqualNP.CircuitLowerBounds.Circuit) => ∀ (x3 : ℕ) (x4 : PEqualNP.CircuitLowerBounds.Gate), x2.gates[x3]? = Option.some x4 → x4.op = PEqualNP.CircuitLowerBounds.GateOp.and → ∀ (x7 : Fin (42 : ℕ) → Bool), (x2.wires (List.ofFn x7)).getD ((42 : ℕ) + x3) Bool.false = Bool.true → x2.eval (List.ofFn x7) = Bool.true; have x3 : PEqualNP.CircuitLowerBounds.Circuit → ℕ := fun (x3 : PEqualNP.CircuitLowerBounds.Circuit) => List.countP (fun (x4 : PEqualNP.CircuitLowerBounds.Gate) => PEqualNP.CircuitLowerBounds.GateOp.casesOn x4.op Bool.false Bool.true Bool.false (fun (x5 : ℕ) => Bool.false) Bool.false) x3.gates;
      ∀ (x4 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x4 →
      x1 x4 →
      x4.output < 26 →
      ∃ (x7 : PEqualNP.CircuitLowerBounds.Circuit), PEqualNP.MetaComplexity.Monotone2 x7 ∧ x1 x7 ∧ x2 x7 ∧ x3 x7 ≤ x3 x4)
    (a2 : have x1 : PEqualNP.CircuitLowerBounds.Circuit → Prop := fun (x1 : PEqualNP.CircuitLowerBounds.Circuit) => ∀ (x2 : Fin (42 : ℕ) → Bool), x1.eval (List.ofFn x2) = Bool.true ↔ ∃ (x3 : Fin (42 : ℕ)) (x4 : Fin (42 : ℕ)), (↑x3 < (21 : ℕ) ∧ (21 : ℕ) ≤ ↑x4 ∧ (↑x4 + (21 : ℕ) - ↑x3) % (21 : ℕ) ∈ [(0 : ℕ), (5 : ℕ), (7 : ℕ), (17 : ℕ), (20 : ℕ)]) ∧ x2 x3 = Bool.true ∧ x2 x4 = Bool.true; have x2 : PEqualNP.CircuitLowerBounds.Circuit → Prop := fun (x2 : PEqualNP.CircuitLowerBounds.Circuit) => ∀ (x3 : ℕ) (x4 : PEqualNP.CircuitLowerBounds.Gate), x2.gates[x3]? = Option.some x4 → x4.op = PEqualNP.CircuitLowerBounds.GateOp.and → ∀ (x7 : Fin (42 : ℕ) → Bool), (x2.wires (List.ofFn x7)).getD ((42 : ℕ) + x3) Bool.false = Bool.true → x2.eval (List.ofFn x7) = Bool.true; have x3 : PEqualNP.CircuitLowerBounds.Circuit → ℕ := fun (x3 : PEqualNP.CircuitLowerBounds.Circuit) => List.countP (fun (x4 : PEqualNP.CircuitLowerBounds.Gate) => PEqualNP.CircuitLowerBounds.GateOp.casesOn x4.op Bool.false Bool.true Bool.false (fun (x5 : ℕ) => Bool.false) Bool.false) x3.gates;
      ∀ (x4 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x4 →
      x1 x4 →
      26 ≤ x4.output →
      ∃ (x7 : PEqualNP.CircuitLowerBounds.Circuit), PEqualNP.MetaComplexity.Monotone2 x7 ∧ x1 x7 ∧ x2 x7 ∧ x3 x7 ≤ x3 x4)
    : have x1 : PEqualNP.CircuitLowerBounds.Circuit → Prop := fun (x1 : PEqualNP.CircuitLowerBounds.Circuit) => ∀ (x2 : Fin (42 : ℕ) → Bool), x1.eval (List.ofFn x2) = Bool.true ↔ ∃ (x3 : Fin (42 : ℕ)) (x4 : Fin (42 : ℕ)), (↑x3 < (21 : ℕ) ∧ (21 : ℕ) ≤ ↑x4 ∧ (↑x4 + (21 : ℕ) - ↑x3) % (21 : ℕ) ∈ [(0 : ℕ), (5 : ℕ), (7 : ℕ), (17 : ℕ), (20 : ℕ)]) ∧ x2 x3 = Bool.true ∧ x2 x4 = Bool.true; have x2 : PEqualNP.CircuitLowerBounds.Circuit → Prop := fun (x2 : PEqualNP.CircuitLowerBounds.Circuit) => ∀ (x3 : ℕ) (x4 : PEqualNP.CircuitLowerBounds.Gate), x2.gates[x3]? = Option.some x4 → x4.op = PEqualNP.CircuitLowerBounds.GateOp.and → ∀ (x7 : Fin (42 : ℕ) → Bool), (x2.wires (List.ofFn x7)).getD ((42 : ℕ) + x3) Bool.false = Bool.true → x2.eval (List.ofFn x7) = Bool.true; have x3 : PEqualNP.CircuitLowerBounds.Circuit → ℕ := fun (x3 : PEqualNP.CircuitLowerBounds.Circuit) => List.countP (fun (x4 : PEqualNP.CircuitLowerBounds.Gate) => PEqualNP.CircuitLowerBounds.GateOp.casesOn x4.op Bool.false Bool.true Bool.false (fun (x5 : ℕ) => Bool.false) Bool.false) x3.gates;
      ∀ (x4 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x4 →
      x1 x4 →
      ∃ (x7 : PEqualNP.CircuitLowerBounds.Circuit), PEqualNP.MetaComplexity.Monotone2 x7 ∧ x1 x7 ∧ x2 x7 ∧ x3 x7 ≤ x3 x4 := by
  dsimp only
  intro x4 h1 h2
  by_cases h : x4.output < 26
  · exact a1 x4 h1 h2 h
  · exact a2 x4 h1 h2 (Nat.le_of_not_lt h)
