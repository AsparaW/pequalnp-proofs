import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_8929_756
    (a1 : have x1 : (Fin (10 : ℕ) → Bool) → Bool := fun (x1 : Fin (10 : ℕ) → Bool) => x1 (0 : Fin (10 : ℕ)) && x1 (1 : Fin (10 : ℕ)) || x1 (1 : Fin (10 : ℕ)) && x1 (2 : Fin (10 : ℕ)) || x1 (2 : Fin (10 : ℕ)) && x1 (3 : Fin (10 : ℕ)) || x1 (3 : Fin (10 : ℕ)) && x1 (4 : Fin (10 : ℕ)) || x1 (4 : Fin (10 : ℕ)) && x1 (0 : Fin (10 : ℕ)) || x1 (0 : Fin (10 : ℕ)) && x1 (5 : Fin (10 : ℕ)) || x1 (1 : Fin (10 : ℕ)) && x1 (6 : Fin (10 : ℕ)) || x1 (2 : Fin (10 : ℕ)) && x1 (7 : Fin (10 : ℕ)) || x1 (3 : Fin (10 : ℕ)) && x1 (8 : Fin (10 : ℕ)) || x1 (4 : Fin (10 : ℕ)) && x1 (9 : Fin (10 : ℕ)) || x1 (5 : Fin (10 : ℕ)) && x1 (7 : Fin (10 : ℕ)) || x1 (7 : Fin (10 : ℕ)) && x1 (9 : Fin (10 : ℕ)) || x1 (9 : Fin (10 : ℕ)) && x1 (6 : Fin (10 : ℕ)) || x1 (6 : Fin (10 : ℕ)) && x1 (8 : Fin (10 : ℕ)) || x1 (8 : Fin (10 : ℕ)) && x1 (5 : Fin (10 : ℕ)); have x2 : PEqualNP.CircuitLowerBounds.Gate → List ℕ := fun (x2 : PEqualNP.CircuitLowerBounds.Gate) => if x2.op.eval [Bool.false] = Bool.true then List.take (1 : ℕ) x2.inputs else x2.inputs; have x3 : PEqualNP.CircuitLowerBounds.Gate → Bool := fun (x3 : PEqualNP.CircuitLowerBounds.Gate) => (x2 x3).any fun (x4 : ℕ) => Decidable.decide (x4 = (0 : ℕ) ∨ x4 = (1 : ℕ) ∨ x4 = (10 : ℕ));
      ∀ (x4 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.FanInTwo x4 →
      x4.size ≤ (18 : ℕ) →
      List.countP x3 x4.gates ≤ (4 : ℕ) →
      (13 : ℕ) + List.countP x3 x4.gates ≤ x4.size →
      (∀ (x9 : ℕ), x9 = (0 : ℕ) ∨ x9 = (1 : ℕ) → ∃ x11 ∈ x4.gates, x9 ∈ x2 x11) →
      x4.output < 10 →
      ∃ (x10 : Fin (10 : ℕ) → Bool), x4.eval (List.ofFn x10 ++ [x10 (0 : Fin (10 : ℕ)) || x10 (1 : Fin (10 : ℕ))]) ≠ x1 x10)
    (a2 : have x1 : (Fin (10 : ℕ) → Bool) → Bool := fun (x1 : Fin (10 : ℕ) → Bool) => x1 (0 : Fin (10 : ℕ)) && x1 (1 : Fin (10 : ℕ)) || x1 (1 : Fin (10 : ℕ)) && x1 (2 : Fin (10 : ℕ)) || x1 (2 : Fin (10 : ℕ)) && x1 (3 : Fin (10 : ℕ)) || x1 (3 : Fin (10 : ℕ)) && x1 (4 : Fin (10 : ℕ)) || x1 (4 : Fin (10 : ℕ)) && x1 (0 : Fin (10 : ℕ)) || x1 (0 : Fin (10 : ℕ)) && x1 (5 : Fin (10 : ℕ)) || x1 (1 : Fin (10 : ℕ)) && x1 (6 : Fin (10 : ℕ)) || x1 (2 : Fin (10 : ℕ)) && x1 (7 : Fin (10 : ℕ)) || x1 (3 : Fin (10 : ℕ)) && x1 (8 : Fin (10 : ℕ)) || x1 (4 : Fin (10 : ℕ)) && x1 (9 : Fin (10 : ℕ)) || x1 (5 : Fin (10 : ℕ)) && x1 (7 : Fin (10 : ℕ)) || x1 (7 : Fin (10 : ℕ)) && x1 (9 : Fin (10 : ℕ)) || x1 (9 : Fin (10 : ℕ)) && x1 (6 : Fin (10 : ℕ)) || x1 (6 : Fin (10 : ℕ)) && x1 (8 : Fin (10 : ℕ)) || x1 (8 : Fin (10 : ℕ)) && x1 (5 : Fin (10 : ℕ)); have x2 : PEqualNP.CircuitLowerBounds.Gate → List ℕ := fun (x2 : PEqualNP.CircuitLowerBounds.Gate) => if x2.op.eval [Bool.false] = Bool.true then List.take (1 : ℕ) x2.inputs else x2.inputs; have x3 : PEqualNP.CircuitLowerBounds.Gate → Bool := fun (x3 : PEqualNP.CircuitLowerBounds.Gate) => (x2 x3).any fun (x4 : ℕ) => Decidable.decide (x4 = (0 : ℕ) ∨ x4 = (1 : ℕ) ∨ x4 = (10 : ℕ));
      ∀ (x4 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.FanInTwo x4 →
      x4.size ≤ (18 : ℕ) →
      List.countP x3 x4.gates ≤ (4 : ℕ) →
      (13 : ℕ) + List.countP x3 x4.gates ≤ x4.size →
      (∀ (x9 : ℕ), x9 = (0 : ℕ) ∨ x9 = (1 : ℕ) → ∃ x11 ∈ x4.gates, x9 ∈ x2 x11) →
      10 ≤ x4.output →
      ∃ (x10 : Fin (10 : ℕ) → Bool), x4.eval (List.ofFn x10 ++ [x10 (0 : Fin (10 : ℕ)) || x10 (1 : Fin (10 : ℕ))]) ≠ x1 x10)
    : have x1 : (Fin (10 : ℕ) → Bool) → Bool := fun (x1 : Fin (10 : ℕ) → Bool) => x1 (0 : Fin (10 : ℕ)) && x1 (1 : Fin (10 : ℕ)) || x1 (1 : Fin (10 : ℕ)) && x1 (2 : Fin (10 : ℕ)) || x1 (2 : Fin (10 : ℕ)) && x1 (3 : Fin (10 : ℕ)) || x1 (3 : Fin (10 : ℕ)) && x1 (4 : Fin (10 : ℕ)) || x1 (4 : Fin (10 : ℕ)) && x1 (0 : Fin (10 : ℕ)) || x1 (0 : Fin (10 : ℕ)) && x1 (5 : Fin (10 : ℕ)) || x1 (1 : Fin (10 : ℕ)) && x1 (6 : Fin (10 : ℕ)) || x1 (2 : Fin (10 : ℕ)) && x1 (7 : Fin (10 : ℕ)) || x1 (3 : Fin (10 : ℕ)) && x1 (8 : Fin (10 : ℕ)) || x1 (4 : Fin (10 : ℕ)) && x1 (9 : Fin (10 : ℕ)) || x1 (5 : Fin (10 : ℕ)) && x1 (7 : Fin (10 : ℕ)) || x1 (7 : Fin (10 : ℕ)) && x1 (9 : Fin (10 : ℕ)) || x1 (9 : Fin (10 : ℕ)) && x1 (6 : Fin (10 : ℕ)) || x1 (6 : Fin (10 : ℕ)) && x1 (8 : Fin (10 : ℕ)) || x1 (8 : Fin (10 : ℕ)) && x1 (5 : Fin (10 : ℕ)); have x2 : PEqualNP.CircuitLowerBounds.Gate → List ℕ := fun (x2 : PEqualNP.CircuitLowerBounds.Gate) => if x2.op.eval [Bool.false] = Bool.true then List.take (1 : ℕ) x2.inputs else x2.inputs; have x3 : PEqualNP.CircuitLowerBounds.Gate → Bool := fun (x3 : PEqualNP.CircuitLowerBounds.Gate) => (x2 x3).any fun (x4 : ℕ) => Decidable.decide (x4 = (0 : ℕ) ∨ x4 = (1 : ℕ) ∨ x4 = (10 : ℕ));
      ∀ (x4 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.FanInTwo x4 →
      x4.size ≤ (18 : ℕ) →
      List.countP x3 x4.gates ≤ (4 : ℕ) →
      (13 : ℕ) + List.countP x3 x4.gates ≤ x4.size →
      (∀ (x9 : ℕ), x9 = (0 : ℕ) ∨ x9 = (1 : ℕ) → ∃ x11 ∈ x4.gates, x9 ∈ x2 x11) →
      ∃ (x10 : Fin (10 : ℕ) → Bool), x4.eval (List.ofFn x10 ++ [x10 (0 : Fin (10 : ℕ)) || x10 (1 : Fin (10 : ℕ))]) ≠ x1 x10 := by
  dsimp only
  intro x4 h1 h2 h3 h4 h5
  by_cases h : x4.output < 10
  · exact a1 x4 h1 h2 h3 h4 h5 h
  · exact a2 x4 h1 h2 h3 h4 h5 (Nat.le_of_not_lt h)
