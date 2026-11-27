import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_6144_753
    (a1 : have x1 : Finset (Fin (13 : ℕ)) := {(0 : Fin (13 : ℕ)), (1 : Fin (13 : ℕ)), (3 : Fin (13 : ℕ)), (9 : Fin (13 : ℕ))}; have x2 : Bool → List Bool → Prop := fun (x2 : Bool) (x3 : List Bool) => if x2 = Bool.true then ∃ (x4 : Fin (13 : ℕ)) (x5 : Fin (13 : ℕ)), x4 - x5 ∈ x1 ∧ x3 = (List.ofFn fun (x6 : Fin (13 : ℕ)) => Decidable.decide (x6 = x4)) ++ List.ofFn fun (x6 : Fin (13 : ℕ)) => Decidable.decide (x6 = x5) else ∃ (x4 : Finset (Fin (13 : ℕ))), x4.card = (4 : ℕ) ∧ (∀ (x5 : Fin (13 : ℕ)), {x6 ∈ x4 | x6 - x5 ∈ x1}.card ≤ (2 : ℕ)) ∧ x3 = (List.ofFn fun (x5 : Fin (13 : ℕ)) => Decidable.decide (x5 ∈ x4)) ++ List.ofFn fun (x5 : Fin (13 : ℕ)) => Decidable.decide (∀ x6 ∈ x4, x6 - x5 ∉ x1); have x3 : PEqualNP.CircuitLowerBounds.Circuit → Prop := fun (x3 : PEqualNP.CircuitLowerBounds.Circuit) => PEqualNP.MetaComplexity.Monotone2 x3 ∧ PEqualNP.MetaComplexity.NestedCover.ReadsBack (26 : ℕ) x3 ∧ ∀ (x4 : Bool) (x5 : List Bool), x2 x4 x5 → x3.eval x5 = x4; have x4 : PEqualNP.CircuitLowerBounds.Circuit → Prop := fun (x4 : PEqualNP.CircuitLowerBounds.Circuit) => ∃ (x5 : PEqualNP.CircuitLowerBounds.Circuit), x3 x5 ∧ x5.size < x4.size;
      ∀ (x5 : PEqualNP.CircuitLowerBounds.Circuit),
      x3 x5 →
      x5.size < (64 : ℕ) →
      (∃ (x8 : ℕ) (x9 : ℕ), (PEqualNP.MetaComplexity.NestedCover.gateAt x5 x8).op = PEqualNP.CircuitLowerBounds.GateOp.and ∧ (PEqualNP.MetaComplexity.NestedCover.gateAt x5 x9).op = PEqualNP.CircuitLowerBounds.GateOp.and ∧ PEqualNP.EdgeOwnership.InCone (26 : ℕ) x5 x8 x9) →
      (∀ x9 < x5.size, ∀ x11 < (26 : ℕ) + x9, ∃ (x13 : Bool) (x14 : List Bool), x2 x13 x14 ∧ (PEqualNP.CircuitMoves.eraseGate (26 : ℕ) x5 x9 x11).eval x14 ≠ x13 ∧ (x11 ∈ (PEqualNP.MetaComplexity.NestedCover.gateAt x5 x9).inputs → x13 = !(PEqualNP.MetaComplexity.NestedCover.gateAt x5 x9).op.eval [])) →
      x5.output < 26 →
      x4 x5)
    (a2 : have x1 : Finset (Fin (13 : ℕ)) := {(0 : Fin (13 : ℕ)), (1 : Fin (13 : ℕ)), (3 : Fin (13 : ℕ)), (9 : Fin (13 : ℕ))}; have x2 : Bool → List Bool → Prop := fun (x2 : Bool) (x3 : List Bool) => if x2 = Bool.true then ∃ (x4 : Fin (13 : ℕ)) (x5 : Fin (13 : ℕ)), x4 - x5 ∈ x1 ∧ x3 = (List.ofFn fun (x6 : Fin (13 : ℕ)) => Decidable.decide (x6 = x4)) ++ List.ofFn fun (x6 : Fin (13 : ℕ)) => Decidable.decide (x6 = x5) else ∃ (x4 : Finset (Fin (13 : ℕ))), x4.card = (4 : ℕ) ∧ (∀ (x5 : Fin (13 : ℕ)), {x6 ∈ x4 | x6 - x5 ∈ x1}.card ≤ (2 : ℕ)) ∧ x3 = (List.ofFn fun (x5 : Fin (13 : ℕ)) => Decidable.decide (x5 ∈ x4)) ++ List.ofFn fun (x5 : Fin (13 : ℕ)) => Decidable.decide (∀ x6 ∈ x4, x6 - x5 ∉ x1); have x3 : PEqualNP.CircuitLowerBounds.Circuit → Prop := fun (x3 : PEqualNP.CircuitLowerBounds.Circuit) => PEqualNP.MetaComplexity.Monotone2 x3 ∧ PEqualNP.MetaComplexity.NestedCover.ReadsBack (26 : ℕ) x3 ∧ ∀ (x4 : Bool) (x5 : List Bool), x2 x4 x5 → x3.eval x5 = x4; have x4 : PEqualNP.CircuitLowerBounds.Circuit → Prop := fun (x4 : PEqualNP.CircuitLowerBounds.Circuit) => ∃ (x5 : PEqualNP.CircuitLowerBounds.Circuit), x3 x5 ∧ x5.size < x4.size;
      ∀ (x5 : PEqualNP.CircuitLowerBounds.Circuit),
      x3 x5 →
      x5.size < (64 : ℕ) →
      (∃ (x8 : ℕ) (x9 : ℕ), (PEqualNP.MetaComplexity.NestedCover.gateAt x5 x8).op = PEqualNP.CircuitLowerBounds.GateOp.and ∧ (PEqualNP.MetaComplexity.NestedCover.gateAt x5 x9).op = PEqualNP.CircuitLowerBounds.GateOp.and ∧ PEqualNP.EdgeOwnership.InCone (26 : ℕ) x5 x8 x9) →
      (∀ x9 < x5.size, ∀ x11 < (26 : ℕ) + x9, ∃ (x13 : Bool) (x14 : List Bool), x2 x13 x14 ∧ (PEqualNP.CircuitMoves.eraseGate (26 : ℕ) x5 x9 x11).eval x14 ≠ x13 ∧ (x11 ∈ (PEqualNP.MetaComplexity.NestedCover.gateAt x5 x9).inputs → x13 = !(PEqualNP.MetaComplexity.NestedCover.gateAt x5 x9).op.eval [])) →
      26 ≤ x5.output →
      x4 x5)
    : have x1 : Finset (Fin (13 : ℕ)) := {(0 : Fin (13 : ℕ)), (1 : Fin (13 : ℕ)), (3 : Fin (13 : ℕ)), (9 : Fin (13 : ℕ))}; have x2 : Bool → List Bool → Prop := fun (x2 : Bool) (x3 : List Bool) => if x2 = Bool.true then ∃ (x4 : Fin (13 : ℕ)) (x5 : Fin (13 : ℕ)), x4 - x5 ∈ x1 ∧ x3 = (List.ofFn fun (x6 : Fin (13 : ℕ)) => Decidable.decide (x6 = x4)) ++ List.ofFn fun (x6 : Fin (13 : ℕ)) => Decidable.decide (x6 = x5) else ∃ (x4 : Finset (Fin (13 : ℕ))), x4.card = (4 : ℕ) ∧ (∀ (x5 : Fin (13 : ℕ)), {x6 ∈ x4 | x6 - x5 ∈ x1}.card ≤ (2 : ℕ)) ∧ x3 = (List.ofFn fun (x5 : Fin (13 : ℕ)) => Decidable.decide (x5 ∈ x4)) ++ List.ofFn fun (x5 : Fin (13 : ℕ)) => Decidable.decide (∀ x6 ∈ x4, x6 - x5 ∉ x1); have x3 : PEqualNP.CircuitLowerBounds.Circuit → Prop := fun (x3 : PEqualNP.CircuitLowerBounds.Circuit) => PEqualNP.MetaComplexity.Monotone2 x3 ∧ PEqualNP.MetaComplexity.NestedCover.ReadsBack (26 : ℕ) x3 ∧ ∀ (x4 : Bool) (x5 : List Bool), x2 x4 x5 → x3.eval x5 = x4; have x4 : PEqualNP.CircuitLowerBounds.Circuit → Prop := fun (x4 : PEqualNP.CircuitLowerBounds.Circuit) => ∃ (x5 : PEqualNP.CircuitLowerBounds.Circuit), x3 x5 ∧ x5.size < x4.size;
      ∀ (x5 : PEqualNP.CircuitLowerBounds.Circuit),
      x3 x5 →
      x5.size < (64 : ℕ) →
      (∃ (x8 : ℕ) (x9 : ℕ), (PEqualNP.MetaComplexity.NestedCover.gateAt x5 x8).op = PEqualNP.CircuitLowerBounds.GateOp.and ∧ (PEqualNP.MetaComplexity.NestedCover.gateAt x5 x9).op = PEqualNP.CircuitLowerBounds.GateOp.and ∧ PEqualNP.EdgeOwnership.InCone (26 : ℕ) x5 x8 x9) →
      (∀ x9 < x5.size, ∀ x11 < (26 : ℕ) + x9, ∃ (x13 : Bool) (x14 : List Bool), x2 x13 x14 ∧ (PEqualNP.CircuitMoves.eraseGate (26 : ℕ) x5 x9 x11).eval x14 ≠ x13 ∧ (x11 ∈ (PEqualNP.MetaComplexity.NestedCover.gateAt x5 x9).inputs → x13 = !(PEqualNP.MetaComplexity.NestedCover.gateAt x5 x9).op.eval [])) →
      x4 x5 := by
  dsimp only
  intro x5 h1 h2 h3 h4
  by_cases h : x5.output < 26
  · exact a1 x5 h1 h2 h3 h4 h
  · exact a2 x5 h1 h2 h3 h4 (Nat.le_of_not_lt h)
