import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_6644_754
    (a1 : have x1 : PEqualNP.CircuitLowerBounds.Circuit → ℕ := fun (x1 : PEqualNP.CircuitLowerBounds.Circuit) => {x2 : Fin x1.gates.length | (x1.gates.get x2).op = PEqualNP.CircuitLowerBounds.GateOp.or}.ncard; have x2 : ℕ → PEqualNP.CircuitLowerBounds.Circuit → Prop := fun (x2 : ℕ) (x3 : PEqualNP.CircuitLowerBounds.Circuit) => ∀ (x4 : Fin x3.gates.length), (x3.gates.get x4).op = PEqualNP.CircuitLowerBounds.GateOp.or → ∃ (x6 : ℕ) (x7 : ℕ), (x3.gates.get x4).inputs = [x6, x7] ∧ x6 ≠ x7 ∧ x6 < x2 + ↑x4 ∧ x7 < x2 + ↑x4; have x3 : Fin (42 : ℕ) → Fin (42 : ℕ) → Prop := fun (x3 x4 : Fin (42 : ℕ)) => ↑x3 < (21 : ℕ) ∧ (21 : ℕ) ≤ ↑x4 ∧ (↑x4 + (21 : ℕ) - ↑x3) % (21 : ℕ) ∈ [(0 : ℕ), (5 : ℕ), (7 : ℕ), (17 : ℕ), (20 : ℕ)];
      ∀ (x4 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x4 →
      x2 (42 : ℕ) x4 →
      (∀ (x7 : Fin x4.gates.length), (x4.gates.get x7).op = PEqualNP.CircuitLowerBounds.GateOp.or → ∀ x9 ∈ (x4.gates.get x7).inputs, ∃ (x11 : Fin (42 : ℕ)) (x12 : Fin (42 : ℕ)), x3 x11 x12 ∧ { gates := x4.gates.set ↑x7 { op := PEqualNP.CircuitLowerBounds.GateOp.and, inputs := [x9] : PEqualNP.CircuitLowerBounds.Gate }, output := x4.output : PEqualNP.CircuitLowerBounds.Circuit }.eval (List.ofFn fun (x13 : Fin (42 : ℕ)) => Decidable.decide (x13 = x11 ∨ x13 = x12)) = Bool.false) →
      (∀ (x8 : Fin (42 : ℕ) → Bool), x4.eval (List.ofFn x8) = Bool.true ↔ ∃ (x9 : Fin (42 : ℕ)) (x10 : Fin (42 : ℕ)), x3 x9 x10 ∧ x8 x9 = Bool.true ∧ x8 x10 = Bool.true) →
      x4.output < 42 →
      (104 : ℕ) ≤ x1 x4)
    (a2 : have x1 : PEqualNP.CircuitLowerBounds.Circuit → ℕ := fun (x1 : PEqualNP.CircuitLowerBounds.Circuit) => {x2 : Fin x1.gates.length | (x1.gates.get x2).op = PEqualNP.CircuitLowerBounds.GateOp.or}.ncard; have x2 : ℕ → PEqualNP.CircuitLowerBounds.Circuit → Prop := fun (x2 : ℕ) (x3 : PEqualNP.CircuitLowerBounds.Circuit) => ∀ (x4 : Fin x3.gates.length), (x3.gates.get x4).op = PEqualNP.CircuitLowerBounds.GateOp.or → ∃ (x6 : ℕ) (x7 : ℕ), (x3.gates.get x4).inputs = [x6, x7] ∧ x6 ≠ x7 ∧ x6 < x2 + ↑x4 ∧ x7 < x2 + ↑x4; have x3 : Fin (42 : ℕ) → Fin (42 : ℕ) → Prop := fun (x3 x4 : Fin (42 : ℕ)) => ↑x3 < (21 : ℕ) ∧ (21 : ℕ) ≤ ↑x4 ∧ (↑x4 + (21 : ℕ) - ↑x3) % (21 : ℕ) ∈ [(0 : ℕ), (5 : ℕ), (7 : ℕ), (17 : ℕ), (20 : ℕ)];
      ∀ (x4 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x4 →
      x2 (42 : ℕ) x4 →
      (∀ (x7 : Fin x4.gates.length), (x4.gates.get x7).op = PEqualNP.CircuitLowerBounds.GateOp.or → ∀ x9 ∈ (x4.gates.get x7).inputs, ∃ (x11 : Fin (42 : ℕ)) (x12 : Fin (42 : ℕ)), x3 x11 x12 ∧ { gates := x4.gates.set ↑x7 { op := PEqualNP.CircuitLowerBounds.GateOp.and, inputs := [x9] : PEqualNP.CircuitLowerBounds.Gate }, output := x4.output : PEqualNP.CircuitLowerBounds.Circuit }.eval (List.ofFn fun (x13 : Fin (42 : ℕ)) => Decidable.decide (x13 = x11 ∨ x13 = x12)) = Bool.false) →
      (∀ (x8 : Fin (42 : ℕ) → Bool), x4.eval (List.ofFn x8) = Bool.true ↔ ∃ (x9 : Fin (42 : ℕ)) (x10 : Fin (42 : ℕ)), x3 x9 x10 ∧ x8 x9 = Bool.true ∧ x8 x10 = Bool.true) →
      42 ≤ x4.output →
      (104 : ℕ) ≤ x1 x4)
    : have x1 : PEqualNP.CircuitLowerBounds.Circuit → ℕ := fun (x1 : PEqualNP.CircuitLowerBounds.Circuit) => {x2 : Fin x1.gates.length | (x1.gates.get x2).op = PEqualNP.CircuitLowerBounds.GateOp.or}.ncard; have x2 : ℕ → PEqualNP.CircuitLowerBounds.Circuit → Prop := fun (x2 : ℕ) (x3 : PEqualNP.CircuitLowerBounds.Circuit) => ∀ (x4 : Fin x3.gates.length), (x3.gates.get x4).op = PEqualNP.CircuitLowerBounds.GateOp.or → ∃ (x6 : ℕ) (x7 : ℕ), (x3.gates.get x4).inputs = [x6, x7] ∧ x6 ≠ x7 ∧ x6 < x2 + ↑x4 ∧ x7 < x2 + ↑x4; have x3 : Fin (42 : ℕ) → Fin (42 : ℕ) → Prop := fun (x3 x4 : Fin (42 : ℕ)) => ↑x3 < (21 : ℕ) ∧ (21 : ℕ) ≤ ↑x4 ∧ (↑x4 + (21 : ℕ) - ↑x3) % (21 : ℕ) ∈ [(0 : ℕ), (5 : ℕ), (7 : ℕ), (17 : ℕ), (20 : ℕ)];
      ∀ (x4 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x4 →
      x2 (42 : ℕ) x4 →
      (∀ (x7 : Fin x4.gates.length), (x4.gates.get x7).op = PEqualNP.CircuitLowerBounds.GateOp.or → ∀ x9 ∈ (x4.gates.get x7).inputs, ∃ (x11 : Fin (42 : ℕ)) (x12 : Fin (42 : ℕ)), x3 x11 x12 ∧ { gates := x4.gates.set ↑x7 { op := PEqualNP.CircuitLowerBounds.GateOp.and, inputs := [x9] : PEqualNP.CircuitLowerBounds.Gate }, output := x4.output : PEqualNP.CircuitLowerBounds.Circuit }.eval (List.ofFn fun (x13 : Fin (42 : ℕ)) => Decidable.decide (x13 = x11 ∨ x13 = x12)) = Bool.false) →
      (∀ (x8 : Fin (42 : ℕ) → Bool), x4.eval (List.ofFn x8) = Bool.true ↔ ∃ (x9 : Fin (42 : ℕ)) (x10 : Fin (42 : ℕ)), x3 x9 x10 ∧ x8 x9 = Bool.true ∧ x8 x10 = Bool.true) →
      (104 : ℕ) ≤ x1 x4 := by
  dsimp only
  intro x4 h1 h2 h3 h4
  by_cases h : x4.output < 42
  · exact a1 x4 h1 h2 h3 h4 h
  · exact a2 x4 h1 h2 h3 h4 (Nat.le_of_not_lt h)
