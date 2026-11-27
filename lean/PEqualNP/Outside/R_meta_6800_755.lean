import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_6800_755
    (a1 : have x1 : ℕ → Fin (13 : ℕ) → ℕ → Bool → Fin (26 : ℕ) → Bool := fun (x1 : ℕ) (x2 : Fin (13 : ℕ)) (x3 : ℕ) (x4 : Bool) (x5 : Fin (26 : ℕ)) => x1.testBit (((if x4 = Bool.true then (13 : ℕ) - x3 else x3) * ↑x5 + ↑x2) % (13 : ℕ) + (13 : ℕ) * if x4 = Bool.true then (1 : ℕ) - ↑x5 / (13 : ℕ) else ↑x5 / (13 : ℕ));
      ∀ (x2 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x2 →
      x2.size ≤ (63 : ℕ) →
      ¬PEqualNP.CircuitLowerBounds.HasLineDegree (26 : ℕ) (Finset.Ico (13 : ℕ) (26 : ℕ)) x2 (1 : ℕ) →
      ¬PEqualNP.CircuitLowerBounds.HasLineDegree (26 : ℕ) (Finset.range (13 : ℕ)) x2 (1 : ℕ) →
      (∀ (x7 x8 : Fin (13 : ℕ)), x8 ∈ [(0 : Fin (13 : ℕ)), (1 : Fin (13 : ℕ)), (3 : Fin (13 : ℕ)), (9 : Fin (13 : ℕ))] → (PEqualNP.MetaComplexity.circuitFun (26 : ℕ) x2 fun (x10 : Fin (26 : ℕ)) => Decidable.decide (x10 = Fin.castAdd (13 : ℕ) (x7 + x8) ∨ x10 = Fin.natAdd (13 : ℕ) x7)) = Bool.true) →
      x2.output < 13 →
      ∃ x8 ∈ [(7405575 : ℕ), (23330829 : ℕ), (5799955 : ℕ), (22282261 : ℕ), (21757977 : ℕ), (21233693 : ℕ), (19415081 : ℕ), (5275731 : ℕ)], ∃ (x9 : Fin (13 : ℕ)), ∃ x10 ∈ [(1 : ℕ), (3 : ℕ), (9 : ℕ)], ∃ (x11 : Bool), PEqualNP.MetaComplexity.circuitFun (26 : ℕ) x2 (x1 x8 x9 x10 x11) = Bool.true)
    (a2 : have x1 : ℕ → Fin (13 : ℕ) → ℕ → Bool → Fin (26 : ℕ) → Bool := fun (x1 : ℕ) (x2 : Fin (13 : ℕ)) (x3 : ℕ) (x4 : Bool) (x5 : Fin (26 : ℕ)) => x1.testBit (((if x4 = Bool.true then (13 : ℕ) - x3 else x3) * ↑x5 + ↑x2) % (13 : ℕ) + (13 : ℕ) * if x4 = Bool.true then (1 : ℕ) - ↑x5 / (13 : ℕ) else ↑x5 / (13 : ℕ));
      ∀ (x2 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x2 →
      x2.size ≤ (63 : ℕ) →
      ¬PEqualNP.CircuitLowerBounds.HasLineDegree (26 : ℕ) (Finset.Ico (13 : ℕ) (26 : ℕ)) x2 (1 : ℕ) →
      ¬PEqualNP.CircuitLowerBounds.HasLineDegree (26 : ℕ) (Finset.range (13 : ℕ)) x2 (1 : ℕ) →
      (∀ (x7 x8 : Fin (13 : ℕ)), x8 ∈ [(0 : Fin (13 : ℕ)), (1 : Fin (13 : ℕ)), (3 : Fin (13 : ℕ)), (9 : Fin (13 : ℕ))] → (PEqualNP.MetaComplexity.circuitFun (26 : ℕ) x2 fun (x10 : Fin (26 : ℕ)) => Decidable.decide (x10 = Fin.castAdd (13 : ℕ) (x7 + x8) ∨ x10 = Fin.natAdd (13 : ℕ) x7)) = Bool.true) →
      13 ≤ x2.output →
      ∃ x8 ∈ [(7405575 : ℕ), (23330829 : ℕ), (5799955 : ℕ), (22282261 : ℕ), (21757977 : ℕ), (21233693 : ℕ), (19415081 : ℕ), (5275731 : ℕ)], ∃ (x9 : Fin (13 : ℕ)), ∃ x10 ∈ [(1 : ℕ), (3 : ℕ), (9 : ℕ)], ∃ (x11 : Bool), PEqualNP.MetaComplexity.circuitFun (26 : ℕ) x2 (x1 x8 x9 x10 x11) = Bool.true)
    : have x1 : ℕ → Fin (13 : ℕ) → ℕ → Bool → Fin (26 : ℕ) → Bool := fun (x1 : ℕ) (x2 : Fin (13 : ℕ)) (x3 : ℕ) (x4 : Bool) (x5 : Fin (26 : ℕ)) => x1.testBit (((if x4 = Bool.true then (13 : ℕ) - x3 else x3) * ↑x5 + ↑x2) % (13 : ℕ) + (13 : ℕ) * if x4 = Bool.true then (1 : ℕ) - ↑x5 / (13 : ℕ) else ↑x5 / (13 : ℕ));
      ∀ (x2 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x2 →
      x2.size ≤ (63 : ℕ) →
      ¬PEqualNP.CircuitLowerBounds.HasLineDegree (26 : ℕ) (Finset.Ico (13 : ℕ) (26 : ℕ)) x2 (1 : ℕ) →
      ¬PEqualNP.CircuitLowerBounds.HasLineDegree (26 : ℕ) (Finset.range (13 : ℕ)) x2 (1 : ℕ) →
      (∀ (x7 x8 : Fin (13 : ℕ)), x8 ∈ [(0 : Fin (13 : ℕ)), (1 : Fin (13 : ℕ)), (3 : Fin (13 : ℕ)), (9 : Fin (13 : ℕ))] → (PEqualNP.MetaComplexity.circuitFun (26 : ℕ) x2 fun (x10 : Fin (26 : ℕ)) => Decidable.decide (x10 = Fin.castAdd (13 : ℕ) (x7 + x8) ∨ x10 = Fin.natAdd (13 : ℕ) x7)) = Bool.true) →
      ∃ x8 ∈ [(7405575 : ℕ), (23330829 : ℕ), (5799955 : ℕ), (22282261 : ℕ), (21757977 : ℕ), (21233693 : ℕ), (19415081 : ℕ), (5275731 : ℕ)], ∃ (x9 : Fin (13 : ℕ)), ∃ x10 ∈ [(1 : ℕ), (3 : ℕ), (9 : ℕ)], ∃ (x11 : Bool), PEqualNP.MetaComplexity.circuitFun (26 : ℕ) x2 (x1 x8 x9 x10 x11) = Bool.true := by
  dsimp only
  intro x2 h1 h2 h3 h4 h5
  by_cases h : x2.output < 13
  · exact a1 x2 h1 h2 h3 h4 h5 h
  · exact a2 x2 h1 h2 h3 h4 h5 (Nat.le_of_not_lt h)
