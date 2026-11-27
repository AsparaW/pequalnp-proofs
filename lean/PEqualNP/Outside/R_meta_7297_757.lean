import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_7297_757
    (a1 : have x1 : Fin (13 : ℕ) → Finset (Fin (13 : ℕ)) := PEqualNP.HeptadCover.singerLines3; have x2 : Finset (Fin (13 : ℕ)) → List Bool := fun (x2 : Finset (Fin (13 : ℕ))) => PEqualNP.GenericRejection.incidenceInput x2 (PEqualNP.HeptadCover.missLines x1 x2); have x3 : Fin (13 : ℕ) → PEqualNP.CircuitLowerBounds.Circuit → Prop := fun (x3 : Fin (13 : ℕ)) (x4 : PEqualNP.CircuitLowerBounds.Circuit) => PEqualNP.MetaComplexity.Monotone2 x4 ∧ PEqualNP.MetaComplexity.NestedCover.ReadsBack (26 : ℕ) x4 ∧ (∀ (x5 x6 : Fin (13 : ℕ)), x5 ∈ x1 x6 → x5 ≠ (0 : Fin (13 : ℕ)) ∨ x6 ≠ x3 → x4.eval (PEqualNP.GenericRejection.incidenceInput {x5} {x6}) = Bool.true) ∧ ∀ (x5 : Finset (Fin (13 : ℕ))), PEqualNP.HeptadCover.IsQuadrangle x1 x5 → x4.eval (x2 x5) = Bool.false;
      ∀ (x4 : Fin (13 : ℕ)) (x5 : PEqualNP.CircuitLowerBounds.Circuit),
      x3 x4 x5 →
      x5.size < (63 : ℕ) →
      (∀ (x8 : PEqualNP.CircuitLowerBounds.Circuit), x3 x4 x8 → x5.size ≤ x8.size) →
      (∃ (x9 : ℕ) (x10 : ℕ), (PEqualNP.MetaComplexity.NestedCover.gateAt x5 x9).op = PEqualNP.CircuitLowerBounds.GateOp.and ∧ (PEqualNP.MetaComplexity.NestedCover.gateAt x5 x10).op = PEqualNP.CircuitLowerBounds.GateOp.and ∧ PEqualNP.EdgeOwnership.InCone (26 : ℕ) x5 x9 x10) →
      (∀ x10 ∈ x5.gates, x10.inputs.length = (2 : ℕ) ∧ x10.inputs.getD (0 : ℕ) (0 : ℕ) ≠ x10.inputs.getD (1 : ℕ) (0 : ℕ)) →
      (∀ (x11 x12 : ℕ), (PEqualNP.MetaComplexity.NestedCover.gateAt x5 x11).op = PEqualNP.CircuitLowerBounds.GateOp.and → (PEqualNP.MetaComplexity.NestedCover.gateAt x5 x12).op = PEqualNP.CircuitLowerBounds.GateOp.and → PEqualNP.EdgeOwnership.InCone (26 : ℕ) x5 x11 x12 → ∃ (x16 : Finset (Fin (13 : ℕ))), PEqualNP.HeptadCover.IsQuadrangle x1 x16 ∧ (x5.wires (x2 x16)).getD ((26 : ℕ) + x11) Bool.false = Bool.true) →
      x5.output < 13 →
      False)
    (a2 : have x1 : Fin (13 : ℕ) → Finset (Fin (13 : ℕ)) := PEqualNP.HeptadCover.singerLines3; have x2 : Finset (Fin (13 : ℕ)) → List Bool := fun (x2 : Finset (Fin (13 : ℕ))) => PEqualNP.GenericRejection.incidenceInput x2 (PEqualNP.HeptadCover.missLines x1 x2); have x3 : Fin (13 : ℕ) → PEqualNP.CircuitLowerBounds.Circuit → Prop := fun (x3 : Fin (13 : ℕ)) (x4 : PEqualNP.CircuitLowerBounds.Circuit) => PEqualNP.MetaComplexity.Monotone2 x4 ∧ PEqualNP.MetaComplexity.NestedCover.ReadsBack (26 : ℕ) x4 ∧ (∀ (x5 x6 : Fin (13 : ℕ)), x5 ∈ x1 x6 → x5 ≠ (0 : Fin (13 : ℕ)) ∨ x6 ≠ x3 → x4.eval (PEqualNP.GenericRejection.incidenceInput {x5} {x6}) = Bool.true) ∧ ∀ (x5 : Finset (Fin (13 : ℕ))), PEqualNP.HeptadCover.IsQuadrangle x1 x5 → x4.eval (x2 x5) = Bool.false;
      ∀ (x4 : Fin (13 : ℕ)) (x5 : PEqualNP.CircuitLowerBounds.Circuit),
      x3 x4 x5 →
      x5.size < (63 : ℕ) →
      (∀ (x8 : PEqualNP.CircuitLowerBounds.Circuit), x3 x4 x8 → x5.size ≤ x8.size) →
      (∃ (x9 : ℕ) (x10 : ℕ), (PEqualNP.MetaComplexity.NestedCover.gateAt x5 x9).op = PEqualNP.CircuitLowerBounds.GateOp.and ∧ (PEqualNP.MetaComplexity.NestedCover.gateAt x5 x10).op = PEqualNP.CircuitLowerBounds.GateOp.and ∧ PEqualNP.EdgeOwnership.InCone (26 : ℕ) x5 x9 x10) →
      (∀ x10 ∈ x5.gates, x10.inputs.length = (2 : ℕ) ∧ x10.inputs.getD (0 : ℕ) (0 : ℕ) ≠ x10.inputs.getD (1 : ℕ) (0 : ℕ)) →
      (∀ (x11 x12 : ℕ), (PEqualNP.MetaComplexity.NestedCover.gateAt x5 x11).op = PEqualNP.CircuitLowerBounds.GateOp.and → (PEqualNP.MetaComplexity.NestedCover.gateAt x5 x12).op = PEqualNP.CircuitLowerBounds.GateOp.and → PEqualNP.EdgeOwnership.InCone (26 : ℕ) x5 x11 x12 → ∃ (x16 : Finset (Fin (13 : ℕ))), PEqualNP.HeptadCover.IsQuadrangle x1 x16 ∧ (x5.wires (x2 x16)).getD ((26 : ℕ) + x11) Bool.false = Bool.true) →
      13 ≤ x5.output →
      False)
    : have x1 : Fin (13 : ℕ) → Finset (Fin (13 : ℕ)) := PEqualNP.HeptadCover.singerLines3; have x2 : Finset (Fin (13 : ℕ)) → List Bool := fun (x2 : Finset (Fin (13 : ℕ))) => PEqualNP.GenericRejection.incidenceInput x2 (PEqualNP.HeptadCover.missLines x1 x2); have x3 : Fin (13 : ℕ) → PEqualNP.CircuitLowerBounds.Circuit → Prop := fun (x3 : Fin (13 : ℕ)) (x4 : PEqualNP.CircuitLowerBounds.Circuit) => PEqualNP.MetaComplexity.Monotone2 x4 ∧ PEqualNP.MetaComplexity.NestedCover.ReadsBack (26 : ℕ) x4 ∧ (∀ (x5 x6 : Fin (13 : ℕ)), x5 ∈ x1 x6 → x5 ≠ (0 : Fin (13 : ℕ)) ∨ x6 ≠ x3 → x4.eval (PEqualNP.GenericRejection.incidenceInput {x5} {x6}) = Bool.true) ∧ ∀ (x5 : Finset (Fin (13 : ℕ))), PEqualNP.HeptadCover.IsQuadrangle x1 x5 → x4.eval (x2 x5) = Bool.false;
      ∀ (x4 : Fin (13 : ℕ)) (x5 : PEqualNP.CircuitLowerBounds.Circuit),
      x3 x4 x5 →
      x5.size < (63 : ℕ) →
      (∀ (x8 : PEqualNP.CircuitLowerBounds.Circuit), x3 x4 x8 → x5.size ≤ x8.size) →
      (∃ (x9 : ℕ) (x10 : ℕ), (PEqualNP.MetaComplexity.NestedCover.gateAt x5 x9).op = PEqualNP.CircuitLowerBounds.GateOp.and ∧ (PEqualNP.MetaComplexity.NestedCover.gateAt x5 x10).op = PEqualNP.CircuitLowerBounds.GateOp.and ∧ PEqualNP.EdgeOwnership.InCone (26 : ℕ) x5 x9 x10) →
      (∀ x10 ∈ x5.gates, x10.inputs.length = (2 : ℕ) ∧ x10.inputs.getD (0 : ℕ) (0 : ℕ) ≠ x10.inputs.getD (1 : ℕ) (0 : ℕ)) →
      (∀ (x11 x12 : ℕ), (PEqualNP.MetaComplexity.NestedCover.gateAt x5 x11).op = PEqualNP.CircuitLowerBounds.GateOp.and → (PEqualNP.MetaComplexity.NestedCover.gateAt x5 x12).op = PEqualNP.CircuitLowerBounds.GateOp.and → PEqualNP.EdgeOwnership.InCone (26 : ℕ) x5 x11 x12 → ∃ (x16 : Finset (Fin (13 : ℕ))), PEqualNP.HeptadCover.IsQuadrangle x1 x16 ∧ (x5.wires (x2 x16)).getD ((26 : ℕ) + x11) Bool.false = Bool.true) →
      False := by
  dsimp only
  intro x4 x5 h1 h2 h3 h4 h5 h6
  by_cases h : x5.output < 13
  · exact a1 x4 x5 h1 h2 h3 h4 h5 h6 h
  · exact a2 x4 x5 h1 h2 h3 h4 h5 h6 (Nat.le_of_not_lt h)
