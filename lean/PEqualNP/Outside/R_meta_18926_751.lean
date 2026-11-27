import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_18926_751
    (a1 : have x1 : Fin (12 : ℕ) → Fin (13 : ℕ) → Prop := fun (x1 : Fin (12 : ℕ)) (x2 : Fin (13 : ℕ)) => x1.succ = x2 ∨ x1.succ = x2 + (1 : Fin ((12 : ℕ) + (1 : ℕ))) ∨ x1.succ = x2 + (3 : Fin ((12 : ℕ) + (1 : ℕ))) ∨ x1.succ = x2 + (9 : Fin ((12 : ℕ) + (1 : ℕ))); have x2 : (Fin (25 : ℕ) → Bool) → Prop := fun (x2 : Fin (25 : ℕ) → Bool) => ∃ (x3 : Fin (12 : ℕ)) (x4 : Fin (13 : ℕ)), x1 x3 x4 ∧ x2 (Fin.castAdd (13 : ℕ) x3) = Bool.true ∧ x2 (Fin.natAdd (12 : ℕ) x4) = Bool.true; have x3 : PEqualNP.CircuitLowerBounds.Circuit → ℕ → (Fin (25 : ℕ) → Bool) → Bool := fun (x3 : PEqualNP.CircuitLowerBounds.Circuit) (x4 : ℕ) (x5 : Fin (25 : ℕ) → Bool) => (x3.wires (List.ofFn x5)).getD x4 Bool.false; have x4 : Fin (25 : ℕ) → Fin (25 : ℕ) → Bool := fun (x4 x5 : Fin (25 : ℕ)) => Decidable.decide (x5 = x4);
      ∀ (x5 : PEqualNP.CircuitLowerBounds.Circuit) (x6 x7 : ℕ),
      PEqualNP.MetaComplexity.Monotone2 x5 →
      (∀ (x9 : Fin (25 : ℕ) → Bool), (x3 x5 x6 x9 && x3 x5 x7 x9) = Bool.true ↔ x2 x9) →
      (∀ (x10 : Fin (25 : ℕ)), x3 x5 x6 (x4 x10) = Bool.false) →
      x5.output < 25 →
      (57 : ℕ) ≤ x5.size)
    (a2 : have x1 : Fin (12 : ℕ) → Fin (13 : ℕ) → Prop := fun (x1 : Fin (12 : ℕ)) (x2 : Fin (13 : ℕ)) => x1.succ = x2 ∨ x1.succ = x2 + (1 : Fin ((12 : ℕ) + (1 : ℕ))) ∨ x1.succ = x2 + (3 : Fin ((12 : ℕ) + (1 : ℕ))) ∨ x1.succ = x2 + (9 : Fin ((12 : ℕ) + (1 : ℕ))); have x2 : (Fin (25 : ℕ) → Bool) → Prop := fun (x2 : Fin (25 : ℕ) → Bool) => ∃ (x3 : Fin (12 : ℕ)) (x4 : Fin (13 : ℕ)), x1 x3 x4 ∧ x2 (Fin.castAdd (13 : ℕ) x3) = Bool.true ∧ x2 (Fin.natAdd (12 : ℕ) x4) = Bool.true; have x3 : PEqualNP.CircuitLowerBounds.Circuit → ℕ → (Fin (25 : ℕ) → Bool) → Bool := fun (x3 : PEqualNP.CircuitLowerBounds.Circuit) (x4 : ℕ) (x5 : Fin (25 : ℕ) → Bool) => (x3.wires (List.ofFn x5)).getD x4 Bool.false; have x4 : Fin (25 : ℕ) → Fin (25 : ℕ) → Bool := fun (x4 x5 : Fin (25 : ℕ)) => Decidable.decide (x5 = x4);
      ∀ (x5 : PEqualNP.CircuitLowerBounds.Circuit) (x6 x7 : ℕ),
      PEqualNP.MetaComplexity.Monotone2 x5 →
      (∀ (x9 : Fin (25 : ℕ) → Bool), (x3 x5 x6 x9 && x3 x5 x7 x9) = Bool.true ↔ x2 x9) →
      (∀ (x10 : Fin (25 : ℕ)), x3 x5 x6 (x4 x10) = Bool.false) →
      25 ≤ x5.output →
      (57 : ℕ) ≤ x5.size)
    : have x1 : Fin (12 : ℕ) → Fin (13 : ℕ) → Prop := fun (x1 : Fin (12 : ℕ)) (x2 : Fin (13 : ℕ)) => x1.succ = x2 ∨ x1.succ = x2 + (1 : Fin ((12 : ℕ) + (1 : ℕ))) ∨ x1.succ = x2 + (3 : Fin ((12 : ℕ) + (1 : ℕ))) ∨ x1.succ = x2 + (9 : Fin ((12 : ℕ) + (1 : ℕ))); have x2 : (Fin (25 : ℕ) → Bool) → Prop := fun (x2 : Fin (25 : ℕ) → Bool) => ∃ (x3 : Fin (12 : ℕ)) (x4 : Fin (13 : ℕ)), x1 x3 x4 ∧ x2 (Fin.castAdd (13 : ℕ) x3) = Bool.true ∧ x2 (Fin.natAdd (12 : ℕ) x4) = Bool.true; have x3 : PEqualNP.CircuitLowerBounds.Circuit → ℕ → (Fin (25 : ℕ) → Bool) → Bool := fun (x3 : PEqualNP.CircuitLowerBounds.Circuit) (x4 : ℕ) (x5 : Fin (25 : ℕ) → Bool) => (x3.wires (List.ofFn x5)).getD x4 Bool.false; have x4 : Fin (25 : ℕ) → Fin (25 : ℕ) → Bool := fun (x4 x5 : Fin (25 : ℕ)) => Decidable.decide (x5 = x4);
      ∀ (x5 : PEqualNP.CircuitLowerBounds.Circuit) (x6 x7 : ℕ),
      PEqualNP.MetaComplexity.Monotone2 x5 →
      (∀ (x9 : Fin (25 : ℕ) → Bool), (x3 x5 x6 x9 && x3 x5 x7 x9) = Bool.true ↔ x2 x9) →
      (∀ (x10 : Fin (25 : ℕ)), x3 x5 x6 (x4 x10) = Bool.false) →
      (57 : ℕ) ≤ x5.size := by
  dsimp only
  intro x5 x6 x7 h1 h2 h3
  by_cases h : x5.output < 25
  · exact a1 x5 x6 x7 h1 h2 h3 h
  · exact a2 x5 x6 x7 h1 h2 h3 (Nat.le_of_not_lt h)
