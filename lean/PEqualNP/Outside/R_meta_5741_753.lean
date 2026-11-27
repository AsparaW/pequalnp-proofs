import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_5741_753
    (a1 : have x1 : Finset (Fin (13 : ℕ)) := {(0 : Fin (13 : ℕ)), (1 : Fin (13 : ℕ)), (3 : Fin (13 : ℕ)), (9 : Fin (13 : ℕ))}; let x2 : Fin (13 : ℕ) → Fin (13 : ℕ) → Prop := fun (x2 x3 : Fin (13 : ℕ)) => ∃ x4 ∈ x1, x2 = x3 + x4; let x3 : Finset (Fin (13 : ℕ)) → Fin (13 : ℕ) → Prop := fun (x3 : Finset (Fin (13 : ℕ))) (x4 : Fin (13 : ℕ)) => ∀ x5 ∈ x3, ¬x2 x5 x4; have x4 : Finset (Fin (13 : ℕ)) → Prop := fun (x4 : Finset (Fin (13 : ℕ))) => ∀ x5 ∉ x4, ∃ (x7 : Fin (13 : ℕ)), x3 x4 x7 ∧ x2 x5 x7; have x5 : Finset (Fin (13 : ℕ)) → Fin (26 : ℕ) → Bool := fun (x5 : Finset (Fin (13 : ℕ))) (x6 : Fin (26 : ℕ)) => Decidable.decide ((∃ x7 ∈ x5, x6 = Fin.castAdd (13 : ℕ) x7) ∨ ∃ (x7 : Fin (13 : ℕ)), x6 = Fin.natAdd (13 : ℕ) x7 ∧ x3 x5 x7);
      ∀ (x6 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x6 →
      x6.size ≤ (63 : ℕ) →
      (∀ (x9 x10 : Fin (13 : ℕ)), x2 x9 x10 → (PEqualNP.MetaComplexity.circuitFun (26 : ℕ) x6 fun (x12 : Fin (26 : ℕ)) => Decidable.decide (x12 = Fin.castAdd (13 : ℕ) x9 ∨ x12 = Fin.natAdd (13 : ℕ) x10)) = Bool.true) →
      (∀ (x10 : Finset (Fin (13 : ℕ))), x4 x10 → PEqualNP.MetaComplexity.circuitFun (26 : ℕ) x6 (x5 x10) = Bool.false) →
      x6.output < 13 →
      False)
    (a2 : have x1 : Finset (Fin (13 : ℕ)) := {(0 : Fin (13 : ℕ)), (1 : Fin (13 : ℕ)), (3 : Fin (13 : ℕ)), (9 : Fin (13 : ℕ))}; let x2 : Fin (13 : ℕ) → Fin (13 : ℕ) → Prop := fun (x2 x3 : Fin (13 : ℕ)) => ∃ x4 ∈ x1, x2 = x3 + x4; let x3 : Finset (Fin (13 : ℕ)) → Fin (13 : ℕ) → Prop := fun (x3 : Finset (Fin (13 : ℕ))) (x4 : Fin (13 : ℕ)) => ∀ x5 ∈ x3, ¬x2 x5 x4; have x4 : Finset (Fin (13 : ℕ)) → Prop := fun (x4 : Finset (Fin (13 : ℕ))) => ∀ x5 ∉ x4, ∃ (x7 : Fin (13 : ℕ)), x3 x4 x7 ∧ x2 x5 x7; have x5 : Finset (Fin (13 : ℕ)) → Fin (26 : ℕ) → Bool := fun (x5 : Finset (Fin (13 : ℕ))) (x6 : Fin (26 : ℕ)) => Decidable.decide ((∃ x7 ∈ x5, x6 = Fin.castAdd (13 : ℕ) x7) ∨ ∃ (x7 : Fin (13 : ℕ)), x6 = Fin.natAdd (13 : ℕ) x7 ∧ x3 x5 x7);
      ∀ (x6 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x6 →
      x6.size ≤ (63 : ℕ) →
      (∀ (x9 x10 : Fin (13 : ℕ)), x2 x9 x10 → (PEqualNP.MetaComplexity.circuitFun (26 : ℕ) x6 fun (x12 : Fin (26 : ℕ)) => Decidable.decide (x12 = Fin.castAdd (13 : ℕ) x9 ∨ x12 = Fin.natAdd (13 : ℕ) x10)) = Bool.true) →
      (∀ (x10 : Finset (Fin (13 : ℕ))), x4 x10 → PEqualNP.MetaComplexity.circuitFun (26 : ℕ) x6 (x5 x10) = Bool.false) →
      13 ≤ x6.output →
      False)
    : have x1 : Finset (Fin (13 : ℕ)) := {(0 : Fin (13 : ℕ)), (1 : Fin (13 : ℕ)), (3 : Fin (13 : ℕ)), (9 : Fin (13 : ℕ))}; let x2 : Fin (13 : ℕ) → Fin (13 : ℕ) → Prop := fun (x2 x3 : Fin (13 : ℕ)) => ∃ x4 ∈ x1, x2 = x3 + x4; let x3 : Finset (Fin (13 : ℕ)) → Fin (13 : ℕ) → Prop := fun (x3 : Finset (Fin (13 : ℕ))) (x4 : Fin (13 : ℕ)) => ∀ x5 ∈ x3, ¬x2 x5 x4; have x4 : Finset (Fin (13 : ℕ)) → Prop := fun (x4 : Finset (Fin (13 : ℕ))) => ∀ x5 ∉ x4, ∃ (x7 : Fin (13 : ℕ)), x3 x4 x7 ∧ x2 x5 x7; have x5 : Finset (Fin (13 : ℕ)) → Fin (26 : ℕ) → Bool := fun (x5 : Finset (Fin (13 : ℕ))) (x6 : Fin (26 : ℕ)) => Decidable.decide ((∃ x7 ∈ x5, x6 = Fin.castAdd (13 : ℕ) x7) ∨ ∃ (x7 : Fin (13 : ℕ)), x6 = Fin.natAdd (13 : ℕ) x7 ∧ x3 x5 x7);
      ∀ (x6 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x6 →
      x6.size ≤ (63 : ℕ) →
      (∀ (x9 x10 : Fin (13 : ℕ)), x2 x9 x10 → (PEqualNP.MetaComplexity.circuitFun (26 : ℕ) x6 fun (x12 : Fin (26 : ℕ)) => Decidable.decide (x12 = Fin.castAdd (13 : ℕ) x9 ∨ x12 = Fin.natAdd (13 : ℕ) x10)) = Bool.true) →
      (∀ (x10 : Finset (Fin (13 : ℕ))), x4 x10 → PEqualNP.MetaComplexity.circuitFun (26 : ℕ) x6 (x5 x10) = Bool.false) →
      False := by
  dsimp only
  intro x6 h1 h2 h3 h4
  by_cases h : x6.output < 13
  · exact a1 x6 h1 h2 h3 h4 h
  · exact a2 x6 h1 h2 h3 h4 (Nat.le_of_not_lt h)
