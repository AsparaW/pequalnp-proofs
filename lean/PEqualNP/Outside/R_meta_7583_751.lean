import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_7583_751
    (a1 : have x1 : Fin (21 : ℕ) → Fin (21 : ℕ) → Prop := fun (x1 x2 : Fin (21 : ℕ)) => (↑x2 + (21 : ℕ) - ↑x1) % (21 : ℕ) ∈ [(0 : ℕ), (5 : ℕ), (7 : ℕ), (17 : ℕ), (20 : ℕ)]; have x2 : (Fin (21 : ℕ) → Bool) → (Fin (21 : ℕ) → Bool) → (Fin (21 : ℕ) → Fin (21 : ℕ) → Prop) → Prop := fun (x2 x3 : Fin (21 : ℕ) → Bool) (x4 : Fin (21 : ℕ) → Fin (21 : ℕ) → Prop) => ∀ (x5 : Finset (Fin (21 : ℕ))), x5.card ≤ (6 : ℕ) → (∀ (x7 : Fin (21 : ℕ)), x2 x7 = Bool.true → x7 ∈ x5) → ∃ x8 ∈ x5, ∃ (x9 : Fin (21 : ℕ)), x3 x9 = Bool.true ∧ x4 x8 x9;
      ∀ (x3 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x3 →
      (∀ (x5 : Fin (42 : ℕ) → Bool),         have x6 : Fin (21 : ℕ) → Bool := fun (x6 : Fin (21 : ℕ)) => x5 (Fin.castAdd (21 : ℕ) x6);         have x7 : Fin (21 : ℕ) → Bool := fun (x7 : Fin (21 : ℕ)) => x5 (Fin.natAdd (21 : ℕ) x7);         x3.eval (List.ofFn x5) = Bool.true ↔ x2 x6 x7 x1 ∧ x2 x7 x6 fun (x8 x9 : Fin (21 : ℕ)) => x1 x9 x8) →
      (∀ (x6 : Fin x3.gates.length), (x3.gates.get x6).op = PEqualNP.CircuitLowerBounds.GateOp.or → ∀ x8 ∈ (x3.gates.get x6).inputs, ∃ (x10 : Fin (42 : ℕ) → Bool), { gates := x3.gates.set ↑x6 { op := PEqualNP.CircuitLowerBounds.GateOp.and, inputs := [x8] : PEqualNP.CircuitLowerBounds.Gate }, output := x3.output : PEqualNP.CircuitLowerBounds.Circuit }.eval (List.ofFn x10) ≠ x3.eval (List.ofFn x10)) →
      x3.output < 42 →
      (104 : ℕ) ≤ {x7 : Fin x3.gates.length | (x3.gates.get x7).op = PEqualNP.CircuitLowerBounds.GateOp.or}.ncard)
    (a2 : have x1 : Fin (21 : ℕ) → Fin (21 : ℕ) → Prop := fun (x1 x2 : Fin (21 : ℕ)) => (↑x2 + (21 : ℕ) - ↑x1) % (21 : ℕ) ∈ [(0 : ℕ), (5 : ℕ), (7 : ℕ), (17 : ℕ), (20 : ℕ)]; have x2 : (Fin (21 : ℕ) → Bool) → (Fin (21 : ℕ) → Bool) → (Fin (21 : ℕ) → Fin (21 : ℕ) → Prop) → Prop := fun (x2 x3 : Fin (21 : ℕ) → Bool) (x4 : Fin (21 : ℕ) → Fin (21 : ℕ) → Prop) => ∀ (x5 : Finset (Fin (21 : ℕ))), x5.card ≤ (6 : ℕ) → (∀ (x7 : Fin (21 : ℕ)), x2 x7 = Bool.true → x7 ∈ x5) → ∃ x8 ∈ x5, ∃ (x9 : Fin (21 : ℕ)), x3 x9 = Bool.true ∧ x4 x8 x9;
      ∀ (x3 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x3 →
      (∀ (x5 : Fin (42 : ℕ) → Bool),         have x6 : Fin (21 : ℕ) → Bool := fun (x6 : Fin (21 : ℕ)) => x5 (Fin.castAdd (21 : ℕ) x6);         have x7 : Fin (21 : ℕ) → Bool := fun (x7 : Fin (21 : ℕ)) => x5 (Fin.natAdd (21 : ℕ) x7);         x3.eval (List.ofFn x5) = Bool.true ↔ x2 x6 x7 x1 ∧ x2 x7 x6 fun (x8 x9 : Fin (21 : ℕ)) => x1 x9 x8) →
      (∀ (x6 : Fin x3.gates.length), (x3.gates.get x6).op = PEqualNP.CircuitLowerBounds.GateOp.or → ∀ x8 ∈ (x3.gates.get x6).inputs, ∃ (x10 : Fin (42 : ℕ) → Bool), { gates := x3.gates.set ↑x6 { op := PEqualNP.CircuitLowerBounds.GateOp.and, inputs := [x8] : PEqualNP.CircuitLowerBounds.Gate }, output := x3.output : PEqualNP.CircuitLowerBounds.Circuit }.eval (List.ofFn x10) ≠ x3.eval (List.ofFn x10)) →
      42 ≤ x3.output →
      (104 : ℕ) ≤ {x7 : Fin x3.gates.length | (x3.gates.get x7).op = PEqualNP.CircuitLowerBounds.GateOp.or}.ncard)
    : have x1 : Fin (21 : ℕ) → Fin (21 : ℕ) → Prop := fun (x1 x2 : Fin (21 : ℕ)) => (↑x2 + (21 : ℕ) - ↑x1) % (21 : ℕ) ∈ [(0 : ℕ), (5 : ℕ), (7 : ℕ), (17 : ℕ), (20 : ℕ)]; have x2 : (Fin (21 : ℕ) → Bool) → (Fin (21 : ℕ) → Bool) → (Fin (21 : ℕ) → Fin (21 : ℕ) → Prop) → Prop := fun (x2 x3 : Fin (21 : ℕ) → Bool) (x4 : Fin (21 : ℕ) → Fin (21 : ℕ) → Prop) => ∀ (x5 : Finset (Fin (21 : ℕ))), x5.card ≤ (6 : ℕ) → (∀ (x7 : Fin (21 : ℕ)), x2 x7 = Bool.true → x7 ∈ x5) → ∃ x8 ∈ x5, ∃ (x9 : Fin (21 : ℕ)), x3 x9 = Bool.true ∧ x4 x8 x9;
      ∀ (x3 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x3 →
      (∀ (x5 : Fin (42 : ℕ) → Bool),         have x6 : Fin (21 : ℕ) → Bool := fun (x6 : Fin (21 : ℕ)) => x5 (Fin.castAdd (21 : ℕ) x6);         have x7 : Fin (21 : ℕ) → Bool := fun (x7 : Fin (21 : ℕ)) => x5 (Fin.natAdd (21 : ℕ) x7);         x3.eval (List.ofFn x5) = Bool.true ↔ x2 x6 x7 x1 ∧ x2 x7 x6 fun (x8 x9 : Fin (21 : ℕ)) => x1 x9 x8) →
      (∀ (x6 : Fin x3.gates.length), (x3.gates.get x6).op = PEqualNP.CircuitLowerBounds.GateOp.or → ∀ x8 ∈ (x3.gates.get x6).inputs, ∃ (x10 : Fin (42 : ℕ) → Bool), { gates := x3.gates.set ↑x6 { op := PEqualNP.CircuitLowerBounds.GateOp.and, inputs := [x8] : PEqualNP.CircuitLowerBounds.Gate }, output := x3.output : PEqualNP.CircuitLowerBounds.Circuit }.eval (List.ofFn x10) ≠ x3.eval (List.ofFn x10)) →
      (104 : ℕ) ≤ {x7 : Fin x3.gates.length | (x3.gates.get x7).op = PEqualNP.CircuitLowerBounds.GateOp.or}.ncard := by
  dsimp only
  intro x3 h1 h2 h3
  by_cases h : x3.output < 42
  · exact a1 x3 h1 h2 h3 h
  · exact a2 x3 h1 h2 h3 (Nat.le_of_not_lt h)
