import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_7615_754
    (a1 : have x1 : Fin (42 : ℕ) → Fin (42 : ℕ) → Prop := fun (x1 x2 : Fin (42 : ℕ)) => ↑x1 < (21 : ℕ) ∧ (21 : ℕ) ≤ ↑x2 ∧ (↑x2 + (21 : ℕ) - ↑x1) % (21 : ℕ) ∈ [(0 : ℕ), (5 : ℕ), (7 : ℕ), (17 : ℕ), (20 : ℕ)];
      ∀ (x2 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x2 →
      x2.size ≤ (124 : ℕ) →
      (∀ (x5 : Fin (42 : ℕ) → Bool), x2.eval (List.ofFn x5) = Bool.true ↔ ∃ (x6 : Fin (42 : ℕ)) (x7 : Fin (42 : ℕ)), x1 x6 x7 ∧ x5 x6 = Bool.true ∧ x5 x7 = Bool.true) →
      (∃ (x6 : ℕ) (x7 : PEqualNP.CircuitLowerBounds.Gate), x2.gates[x6]? = Option.some x7 ∧ x7.op = PEqualNP.CircuitLowerBounds.GateOp.and ∧ (x2.wires (List.ofFn fun (x8 : Fin (42 : ℕ)) => Decidable.decide (x8 = (0 : Fin (42 : ℕ)) ∨ x8 = (22 : Fin (42 : ℕ))))).getD ((42 : ℕ) + x6) Bool.false = Bool.true) →
      x2.output < 42 →
      False)
    (a2 : have x1 : Fin (42 : ℕ) → Fin (42 : ℕ) → Prop := fun (x1 x2 : Fin (42 : ℕ)) => ↑x1 < (21 : ℕ) ∧ (21 : ℕ) ≤ ↑x2 ∧ (↑x2 + (21 : ℕ) - ↑x1) % (21 : ℕ) ∈ [(0 : ℕ), (5 : ℕ), (7 : ℕ), (17 : ℕ), (20 : ℕ)];
      ∀ (x2 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x2 →
      x2.size ≤ (124 : ℕ) →
      (∀ (x5 : Fin (42 : ℕ) → Bool), x2.eval (List.ofFn x5) = Bool.true ↔ ∃ (x6 : Fin (42 : ℕ)) (x7 : Fin (42 : ℕ)), x1 x6 x7 ∧ x5 x6 = Bool.true ∧ x5 x7 = Bool.true) →
      (∃ (x6 : ℕ) (x7 : PEqualNP.CircuitLowerBounds.Gate), x2.gates[x6]? = Option.some x7 ∧ x7.op = PEqualNP.CircuitLowerBounds.GateOp.and ∧ (x2.wires (List.ofFn fun (x8 : Fin (42 : ℕ)) => Decidable.decide (x8 = (0 : Fin (42 : ℕ)) ∨ x8 = (22 : Fin (42 : ℕ))))).getD ((42 : ℕ) + x6) Bool.false = Bool.true) →
      42 ≤ x2.output →
      False)
    : have x1 : Fin (42 : ℕ) → Fin (42 : ℕ) → Prop := fun (x1 x2 : Fin (42 : ℕ)) => ↑x1 < (21 : ℕ) ∧ (21 : ℕ) ≤ ↑x2 ∧ (↑x2 + (21 : ℕ) - ↑x1) % (21 : ℕ) ∈ [(0 : ℕ), (5 : ℕ), (7 : ℕ), (17 : ℕ), (20 : ℕ)];
      ∀ (x2 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x2 →
      x2.size ≤ (124 : ℕ) →
      (∀ (x5 : Fin (42 : ℕ) → Bool), x2.eval (List.ofFn x5) = Bool.true ↔ ∃ (x6 : Fin (42 : ℕ)) (x7 : Fin (42 : ℕ)), x1 x6 x7 ∧ x5 x6 = Bool.true ∧ x5 x7 = Bool.true) →
      (∃ (x6 : ℕ) (x7 : PEqualNP.CircuitLowerBounds.Gate), x2.gates[x6]? = Option.some x7 ∧ x7.op = PEqualNP.CircuitLowerBounds.GateOp.and ∧ (x2.wires (List.ofFn fun (x8 : Fin (42 : ℕ)) => Decidable.decide (x8 = (0 : Fin (42 : ℕ)) ∨ x8 = (22 : Fin (42 : ℕ))))).getD ((42 : ℕ) + x6) Bool.false = Bool.true) →
      False := by
  dsimp only
  intro x2 h1 h2 h3 h4
  by_cases h : x2.output < 42
  · exact a1 x2 h1 h2 h3 h4 h
  · exact a2 x2 h1 h2 h3 h4 (Nat.le_of_not_lt h)
