import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_6889_757
    (a1 : have x1 : Fin (13 : ℕ) → Finset (Fin (13 : ℕ)) := PEqualNP.HeptadCover.singerLines3; have x2 : Finset (Fin (13 : ℕ)) → Finset (Fin (13 : ℕ)) → List Bool := fun (x2 x3 : Finset (Fin (13 : ℕ))) => (List.ofFn fun (x4 : Fin (13 : ℕ)) => Decidable.decide (x4 ∈ x2)) ++ List.ofFn fun (x4 : Fin (13 : ℕ)) => Decidable.decide (x4 ∈ x3); have x3 : PEqualNP.CircuitLowerBounds.Circuit → ℕ → List Bool → Bool := fun (x3 : PEqualNP.CircuitLowerBounds.Circuit) (x4 : ℕ) (x5 : List Bool) => (x3.wires x5).getD x4 Bool.false; have x4 : PEqualNP.CircuitLowerBounds.Circuit → ℕ → PEqualNP.CircuitLowerBounds.Gate := PEqualNP.MetaComplexity.NestedCover.gateAt; have x5 : PEqualNP.CircuitLowerBounds.GateOp := PEqualNP.CircuitLowerBounds.GateOp.and; have x6 : PEqualNP.CircuitLowerBounds.Circuit → ℕ → Prop := fun (x6 : PEqualNP.CircuitLowerBounds.Circuit) (x7 : ℕ) => (x4 x6 x7).op = x5 ∧ ∃ x8 ∈ (x4 x6 x7).inputs, (26 : ℕ) ≤ x8 ∧ (x4 x6 (x8 - (26 : ℕ))).op = x5;
      ∀ (x7 : PEqualNP.CircuitLowerBounds.Circuit) (x8 : ℕ),
      PEqualNP.MetaComplexity.Monotone2 x7 →
      PEqualNP.MetaComplexity.NestedCover.ReadsBack (26 : ℕ) x7 →
      x8 < (26 : ℕ) + x7.size →
      (∀ (x12 x13 : Fin (13 : ℕ)), x12 ∈ x1 x13 → x3 x7 x8 (x2 {x12} {x13}) = Bool.true) →
      (∀ (x13 : Finset (Fin (13 : ℕ))), PEqualNP.HeptadCover.IsQuadrangle x1 x13 → x3 x7 x8 (x2 x13 (PEqualNP.HeptadCover.missLines x1 x13)) = Bool.false) →
      (∃ x14 ∈ Finset.range x7.size, x6 x7 x14 ∧ ∀ x15 ∈ Finset.range x7.size, x6 x7 x15 → x15 = x14) →
      x7.output < 13 →
      (64 : ℕ) ≤ x7.size)
    (a2 : have x1 : Fin (13 : ℕ) → Finset (Fin (13 : ℕ)) := PEqualNP.HeptadCover.singerLines3; have x2 : Finset (Fin (13 : ℕ)) → Finset (Fin (13 : ℕ)) → List Bool := fun (x2 x3 : Finset (Fin (13 : ℕ))) => (List.ofFn fun (x4 : Fin (13 : ℕ)) => Decidable.decide (x4 ∈ x2)) ++ List.ofFn fun (x4 : Fin (13 : ℕ)) => Decidable.decide (x4 ∈ x3); have x3 : PEqualNP.CircuitLowerBounds.Circuit → ℕ → List Bool → Bool := fun (x3 : PEqualNP.CircuitLowerBounds.Circuit) (x4 : ℕ) (x5 : List Bool) => (x3.wires x5).getD x4 Bool.false; have x4 : PEqualNP.CircuitLowerBounds.Circuit → ℕ → PEqualNP.CircuitLowerBounds.Gate := PEqualNP.MetaComplexity.NestedCover.gateAt; have x5 : PEqualNP.CircuitLowerBounds.GateOp := PEqualNP.CircuitLowerBounds.GateOp.and; have x6 : PEqualNP.CircuitLowerBounds.Circuit → ℕ → Prop := fun (x6 : PEqualNP.CircuitLowerBounds.Circuit) (x7 : ℕ) => (x4 x6 x7).op = x5 ∧ ∃ x8 ∈ (x4 x6 x7).inputs, (26 : ℕ) ≤ x8 ∧ (x4 x6 (x8 - (26 : ℕ))).op = x5;
      ∀ (x7 : PEqualNP.CircuitLowerBounds.Circuit) (x8 : ℕ),
      PEqualNP.MetaComplexity.Monotone2 x7 →
      PEqualNP.MetaComplexity.NestedCover.ReadsBack (26 : ℕ) x7 →
      x8 < (26 : ℕ) + x7.size →
      (∀ (x12 x13 : Fin (13 : ℕ)), x12 ∈ x1 x13 → x3 x7 x8 (x2 {x12} {x13}) = Bool.true) →
      (∀ (x13 : Finset (Fin (13 : ℕ))), PEqualNP.HeptadCover.IsQuadrangle x1 x13 → x3 x7 x8 (x2 x13 (PEqualNP.HeptadCover.missLines x1 x13)) = Bool.false) →
      (∃ x14 ∈ Finset.range x7.size, x6 x7 x14 ∧ ∀ x15 ∈ Finset.range x7.size, x6 x7 x15 → x15 = x14) →
      13 ≤ x7.output →
      (64 : ℕ) ≤ x7.size)
    : have x1 : Fin (13 : ℕ) → Finset (Fin (13 : ℕ)) := PEqualNP.HeptadCover.singerLines3; have x2 : Finset (Fin (13 : ℕ)) → Finset (Fin (13 : ℕ)) → List Bool := fun (x2 x3 : Finset (Fin (13 : ℕ))) => (List.ofFn fun (x4 : Fin (13 : ℕ)) => Decidable.decide (x4 ∈ x2)) ++ List.ofFn fun (x4 : Fin (13 : ℕ)) => Decidable.decide (x4 ∈ x3); have x3 : PEqualNP.CircuitLowerBounds.Circuit → ℕ → List Bool → Bool := fun (x3 : PEqualNP.CircuitLowerBounds.Circuit) (x4 : ℕ) (x5 : List Bool) => (x3.wires x5).getD x4 Bool.false; have x4 : PEqualNP.CircuitLowerBounds.Circuit → ℕ → PEqualNP.CircuitLowerBounds.Gate := PEqualNP.MetaComplexity.NestedCover.gateAt; have x5 : PEqualNP.CircuitLowerBounds.GateOp := PEqualNP.CircuitLowerBounds.GateOp.and; have x6 : PEqualNP.CircuitLowerBounds.Circuit → ℕ → Prop := fun (x6 : PEqualNP.CircuitLowerBounds.Circuit) (x7 : ℕ) => (x4 x6 x7).op = x5 ∧ ∃ x8 ∈ (x4 x6 x7).inputs, (26 : ℕ) ≤ x8 ∧ (x4 x6 (x8 - (26 : ℕ))).op = x5;
      ∀ (x7 : PEqualNP.CircuitLowerBounds.Circuit) (x8 : ℕ),
      PEqualNP.MetaComplexity.Monotone2 x7 →
      PEqualNP.MetaComplexity.NestedCover.ReadsBack (26 : ℕ) x7 →
      x8 < (26 : ℕ) + x7.size →
      (∀ (x12 x13 : Fin (13 : ℕ)), x12 ∈ x1 x13 → x3 x7 x8 (x2 {x12} {x13}) = Bool.true) →
      (∀ (x13 : Finset (Fin (13 : ℕ))), PEqualNP.HeptadCover.IsQuadrangle x1 x13 → x3 x7 x8 (x2 x13 (PEqualNP.HeptadCover.missLines x1 x13)) = Bool.false) →
      (∃ x14 ∈ Finset.range x7.size, x6 x7 x14 ∧ ∀ x15 ∈ Finset.range x7.size, x6 x7 x15 → x15 = x14) →
      (64 : ℕ) ≤ x7.size := by
  dsimp only
  intro x7 x8 h1 h2 h3 h4 h5 h6
  by_cases h : x7.output < 13
  · exact a1 x7 x8 h1 h2 h3 h4 h5 h6 h
  · exact a2 x7 x8 h1 h2 h3 h4 h5 h6 (Nat.le_of_not_lt h)
