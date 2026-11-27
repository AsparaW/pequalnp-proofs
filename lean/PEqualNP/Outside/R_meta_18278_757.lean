import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_18278_757
    (a1 : have x1 : (Fin (10 : ℕ) → Bool) → Bool := fun (x1 : Fin (10 : ℕ) → Bool) => x1 (0 : Fin (10 : ℕ)) && x1 (1 : Fin (10 : ℕ)) || x1 (1 : Fin (10 : ℕ)) && x1 (2 : Fin (10 : ℕ)) || x1 (2 : Fin (10 : ℕ)) && x1 (3 : Fin (10 : ℕ)) || x1 (3 : Fin (10 : ℕ)) && x1 (4 : Fin (10 : ℕ)) || x1 (4 : Fin (10 : ℕ)) && x1 (0 : Fin (10 : ℕ)) || x1 (0 : Fin (10 : ℕ)) && x1 (5 : Fin (10 : ℕ)) || x1 (1 : Fin (10 : ℕ)) && x1 (6 : Fin (10 : ℕ)) || x1 (2 : Fin (10 : ℕ)) && x1 (7 : Fin (10 : ℕ)) || x1 (3 : Fin (10 : ℕ)) && x1 (8 : Fin (10 : ℕ)) || x1 (4 : Fin (10 : ℕ)) && x1 (9 : Fin (10 : ℕ)) || x1 (5 : Fin (10 : ℕ)) && x1 (7 : Fin (10 : ℕ)) || x1 (7 : Fin (10 : ℕ)) && x1 (9 : Fin (10 : ℕ)) || x1 (9 : Fin (10 : ℕ)) && x1 (6 : Fin (10 : ℕ)) || x1 (6 : Fin (10 : ℕ)) && x1 (8 : Fin (10 : ℕ)) || x1 (8 : Fin (10 : ℕ)) && x1 (5 : Fin (10 : ℕ));
      ∀ (x2 : PEqualNP.CircuitLowerBounds.Circuit) (x3 : ℕ),
      PEqualNP.MetaComplexity.FanInTwo x2 →
      x2.size ≤ (18 : ℕ) →
      (x2.size < (18 : ℕ) ∨ ∃ x6 ∈ x2.gates, x6.op = PEqualNP.CircuitLowerBounds.GateOp.not) →
      (10 : ℕ) ≤ x3 →
      x3 < x2.output →
      x2.output + (1 : ℕ) = (10 : ℕ) + x2.size →
      x2.output < 10 →
      ¬∀ (x10 : Fin (10 : ℕ) → Bool), ((x2.wires (List.ofFn x10)).getD x3 Bool.false && x2.eval (List.ofFn x10)) = x1 x10)
    (a2 : have x1 : (Fin (10 : ℕ) → Bool) → Bool := fun (x1 : Fin (10 : ℕ) → Bool) => x1 (0 : Fin (10 : ℕ)) && x1 (1 : Fin (10 : ℕ)) || x1 (1 : Fin (10 : ℕ)) && x1 (2 : Fin (10 : ℕ)) || x1 (2 : Fin (10 : ℕ)) && x1 (3 : Fin (10 : ℕ)) || x1 (3 : Fin (10 : ℕ)) && x1 (4 : Fin (10 : ℕ)) || x1 (4 : Fin (10 : ℕ)) && x1 (0 : Fin (10 : ℕ)) || x1 (0 : Fin (10 : ℕ)) && x1 (5 : Fin (10 : ℕ)) || x1 (1 : Fin (10 : ℕ)) && x1 (6 : Fin (10 : ℕ)) || x1 (2 : Fin (10 : ℕ)) && x1 (7 : Fin (10 : ℕ)) || x1 (3 : Fin (10 : ℕ)) && x1 (8 : Fin (10 : ℕ)) || x1 (4 : Fin (10 : ℕ)) && x1 (9 : Fin (10 : ℕ)) || x1 (5 : Fin (10 : ℕ)) && x1 (7 : Fin (10 : ℕ)) || x1 (7 : Fin (10 : ℕ)) && x1 (9 : Fin (10 : ℕ)) || x1 (9 : Fin (10 : ℕ)) && x1 (6 : Fin (10 : ℕ)) || x1 (6 : Fin (10 : ℕ)) && x1 (8 : Fin (10 : ℕ)) || x1 (8 : Fin (10 : ℕ)) && x1 (5 : Fin (10 : ℕ));
      ∀ (x2 : PEqualNP.CircuitLowerBounds.Circuit) (x3 : ℕ),
      PEqualNP.MetaComplexity.FanInTwo x2 →
      x2.size ≤ (18 : ℕ) →
      (x2.size < (18 : ℕ) ∨ ∃ x6 ∈ x2.gates, x6.op = PEqualNP.CircuitLowerBounds.GateOp.not) →
      (10 : ℕ) ≤ x3 →
      x3 < x2.output →
      x2.output + (1 : ℕ) = (10 : ℕ) + x2.size →
      10 ≤ x2.output →
      ¬∀ (x10 : Fin (10 : ℕ) → Bool), ((x2.wires (List.ofFn x10)).getD x3 Bool.false && x2.eval (List.ofFn x10)) = x1 x10)
    : have x1 : (Fin (10 : ℕ) → Bool) → Bool := fun (x1 : Fin (10 : ℕ) → Bool) => x1 (0 : Fin (10 : ℕ)) && x1 (1 : Fin (10 : ℕ)) || x1 (1 : Fin (10 : ℕ)) && x1 (2 : Fin (10 : ℕ)) || x1 (2 : Fin (10 : ℕ)) && x1 (3 : Fin (10 : ℕ)) || x1 (3 : Fin (10 : ℕ)) && x1 (4 : Fin (10 : ℕ)) || x1 (4 : Fin (10 : ℕ)) && x1 (0 : Fin (10 : ℕ)) || x1 (0 : Fin (10 : ℕ)) && x1 (5 : Fin (10 : ℕ)) || x1 (1 : Fin (10 : ℕ)) && x1 (6 : Fin (10 : ℕ)) || x1 (2 : Fin (10 : ℕ)) && x1 (7 : Fin (10 : ℕ)) || x1 (3 : Fin (10 : ℕ)) && x1 (8 : Fin (10 : ℕ)) || x1 (4 : Fin (10 : ℕ)) && x1 (9 : Fin (10 : ℕ)) || x1 (5 : Fin (10 : ℕ)) && x1 (7 : Fin (10 : ℕ)) || x1 (7 : Fin (10 : ℕ)) && x1 (9 : Fin (10 : ℕ)) || x1 (9 : Fin (10 : ℕ)) && x1 (6 : Fin (10 : ℕ)) || x1 (6 : Fin (10 : ℕ)) && x1 (8 : Fin (10 : ℕ)) || x1 (8 : Fin (10 : ℕ)) && x1 (5 : Fin (10 : ℕ));
      ∀ (x2 : PEqualNP.CircuitLowerBounds.Circuit) (x3 : ℕ),
      PEqualNP.MetaComplexity.FanInTwo x2 →
      x2.size ≤ (18 : ℕ) →
      (x2.size < (18 : ℕ) ∨ ∃ x6 ∈ x2.gates, x6.op = PEqualNP.CircuitLowerBounds.GateOp.not) →
      (10 : ℕ) ≤ x3 →
      x3 < x2.output →
      x2.output + (1 : ℕ) = (10 : ℕ) + x2.size →
      ¬∀ (x10 : Fin (10 : ℕ) → Bool), ((x2.wires (List.ofFn x10)).getD x3 Bool.false && x2.eval (List.ofFn x10)) = x1 x10 := by
  dsimp only
  intro x2 x3 h1 h2 h3 h4 h5 h6
  by_cases h : x2.output < 10
  · exact a1 x2 x3 h1 h2 h3 h4 h5 h6 h
  · exact a2 x2 x3 h1 h2 h3 h4 h5 h6 (Nat.le_of_not_lt h)
