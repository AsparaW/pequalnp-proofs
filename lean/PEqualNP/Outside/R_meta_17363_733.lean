import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_17363_733
    (a1 : ∀ (x1 : PEqualNP.CircuitLowerBounds.Circuit) (x2 : Bool) (x3 : Fin (13 : ℕ)),
      PEqualNP.MetaComplexity.Monotone2 x1 →
      (∀ (x5 x6 : Fin (13 : ℕ)), (if x2 = Bool.true then x5 ≠ x3 else x6 ≠ x3) → x5 ∈ PEqualNP.HeptadCover.singerLines3 x6 → x1.eval (PEqualNP.GenericRejection.incidenceInput {x5} {x6}) = Bool.true) →
      (∀ (x6 x7 : Finset (Fin (13 : ℕ))), (if x2 = Bool.true then x3 ∉ x6 else x3 ∉ x7) → x1.eval (PEqualNP.GenericRejection.incidenceInput x6 x7) = Bool.true → PEqualNP.GenericRejection.incidenceFun PEqualNP.HeptadCover.singerLines3 x6 x7 = Bool.true) →
      x1.output < 26 →
      (59 : ℕ) ≤ x1.size)
    (a2 : ∀ (x1 : PEqualNP.CircuitLowerBounds.Circuit) (x2 : Bool) (x3 : Fin (13 : ℕ)),
      PEqualNP.MetaComplexity.Monotone2 x1 →
      (∀ (x5 x6 : Fin (13 : ℕ)), (if x2 = Bool.true then x5 ≠ x3 else x6 ≠ x3) → x5 ∈ PEqualNP.HeptadCover.singerLines3 x6 → x1.eval (PEqualNP.GenericRejection.incidenceInput {x5} {x6}) = Bool.true) →
      (∀ (x6 x7 : Finset (Fin (13 : ℕ))), (if x2 = Bool.true then x3 ∉ x6 else x3 ∉ x7) → x1.eval (PEqualNP.GenericRejection.incidenceInput x6 x7) = Bool.true → PEqualNP.GenericRejection.incidenceFun PEqualNP.HeptadCover.singerLines3 x6 x7 = Bool.true) →
      26 ≤ x1.output →
      (59 : ℕ) ≤ x1.size)
    : ∀ (x1 : PEqualNP.CircuitLowerBounds.Circuit) (x2 : Bool) (x3 : Fin (13 : ℕ)),
      PEqualNP.MetaComplexity.Monotone2 x1 →
      (∀ (x5 x6 : Fin (13 : ℕ)), (if x2 = Bool.true then x5 ≠ x3 else x6 ≠ x3) → x5 ∈ PEqualNP.HeptadCover.singerLines3 x6 → x1.eval (PEqualNP.GenericRejection.incidenceInput {x5} {x6}) = Bool.true) →
      (∀ (x6 x7 : Finset (Fin (13 : ℕ))), (if x2 = Bool.true then x3 ∉ x6 else x3 ∉ x7) → x1.eval (PEqualNP.GenericRejection.incidenceInput x6 x7) = Bool.true → PEqualNP.GenericRejection.incidenceFun PEqualNP.HeptadCover.singerLines3 x6 x7 = Bool.true) →
      (59 : ℕ) ≤ x1.size := by
  intro x1 x2 x3 h1 h2 h3
  by_cases h : x1.output < 26
  · exact a1 x1 x2 x3 h1 h2 h3 h
  · exact a2 x1 x2 x3 h1 h2 h3 (Nat.le_of_not_lt h)
