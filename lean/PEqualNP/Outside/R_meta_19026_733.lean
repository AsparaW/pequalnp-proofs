import Mathlib
import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_19026_733
    (a1 : ∀ (x1 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x1 →
      PEqualNP.GenericRejection.ComputesIncidence PEqualNP.HeptadCover.singerLines3 x1 →
      PEqualNP.CircuitLowerBounds.HasLineDegree (26 : ℕ) (Finset.Ico (13 : ℕ) (26 : ℕ)) x1 (2 : ℕ) →
      x1.output < 26 →
      (64 : ℕ) ≤ x1.size)
    (a2 : ∀ (x1 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x1 →
      PEqualNP.GenericRejection.ComputesIncidence PEqualNP.HeptadCover.singerLines3 x1 →
      PEqualNP.CircuitLowerBounds.HasLineDegree (26 : ℕ) (Finset.Ico (13 : ℕ) (26 : ℕ)) x1 (2 : ℕ) →
      26 ≤ x1.output →
      (64 : ℕ) ≤ x1.size)
    : ∀ (x1 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x1 →
      PEqualNP.GenericRejection.ComputesIncidence PEqualNP.HeptadCover.singerLines3 x1 →
      PEqualNP.CircuitLowerBounds.HasLineDegree (26 : ℕ) (Finset.Ico (13 : ℕ) (26 : ℕ)) x1 (2 : ℕ) →
      (64 : ℕ) ≤ x1.size := by
  intro x1 h1 h2 h3
  by_cases h : x1.output < 26
  · exact a1 x1 h1 h2 h3 h
  · exact a2 x1 h1 h2 h3 (Nat.le_of_not_lt h)
