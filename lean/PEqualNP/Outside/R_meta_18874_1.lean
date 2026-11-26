import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_18874_1
    (a1 : ∀ (x1 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.TopForm.IsAO2 (25 : ℕ) x1 →
      (∀ (x3 : Fin (25 : ℕ) → Bool), x1.eval (List.ofFn x3) = Bool.true ↔ ∃ (x4 : Fin (12 : ℕ)) (x5 : Fin (13 : ℕ)), (x4.succ = x5 ∨ x4.succ = x5 + (1 : Fin ((12 : ℕ) + (1 : ℕ))) ∨ x4.succ = x5 + (3 : Fin ((12 : ℕ) + (1 : ℕ))) ∨ x4.succ = x5 + (9 : Fin ((12 : ℕ) + (1 : ℕ)))) ∧ x3 (Fin.castAdd (13 : ℕ) x4) = Bool.true ∧ x3 (Fin.natAdd (12 : ℕ) x5) = Bool.true) →
      x1.output < 25 →
      (58 : ℕ) ≤ x1.size)
    (a2 : ∀ (x1 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.TopForm.IsAO2 (25 : ℕ) x1 →
      (∀ (x3 : Fin (25 : ℕ) → Bool), x1.eval (List.ofFn x3) = Bool.true ↔ ∃ (x4 : Fin (12 : ℕ)) (x5 : Fin (13 : ℕ)), (x4.succ = x5 ∨ x4.succ = x5 + (1 : Fin ((12 : ℕ) + (1 : ℕ))) ∨ x4.succ = x5 + (3 : Fin ((12 : ℕ) + (1 : ℕ))) ∨ x4.succ = x5 + (9 : Fin ((12 : ℕ) + (1 : ℕ)))) ∧ x3 (Fin.castAdd (13 : ℕ) x4) = Bool.true ∧ x3 (Fin.natAdd (12 : ℕ) x5) = Bool.true) →
      25 ≤ x1.output →
      (58 : ℕ) ≤ x1.size)
    : ∀ (x1 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.TopForm.IsAO2 (25 : ℕ) x1 →
      (∀ (x3 : Fin (25 : ℕ) → Bool), x1.eval (List.ofFn x3) = Bool.true ↔ ∃ (x4 : Fin (12 : ℕ)) (x5 : Fin (13 : ℕ)), (x4.succ = x5 ∨ x4.succ = x5 + (1 : Fin ((12 : ℕ) + (1 : ℕ))) ∨ x4.succ = x5 + (3 : Fin ((12 : ℕ) + (1 : ℕ))) ∨ x4.succ = x5 + (9 : Fin ((12 : ℕ) + (1 : ℕ)))) ∧ x3 (Fin.castAdd (13 : ℕ) x4) = Bool.true ∧ x3 (Fin.natAdd (12 : ℕ) x5) = Bool.true) →
      (58 : ℕ) ≤ x1.size := by
  intro x1 h1 h2
  by_cases h : x1.output < 25
  · exact a1 x1 h1 h2 h
  · exact a2 x1 h1 h2 (Nat.le_of_not_lt h)
