import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_7792_756
    (a1 : have x1 : Fin (13 : ℕ) → Finset (Fin (13 : ℕ)) := PEqualNP.HeptadCover.singerLines3; have x2 : Finset (Fin (13 : ℕ)) → List Bool := fun (x2 : Finset (Fin (13 : ℕ))) => PEqualNP.GenericRejection.incidenceInput x2 (PEqualNP.HeptadCover.missLines x1 x2); have x3 : PEqualNP.CircuitLowerBounds.Circuit → ℕ → Prop := fun (x3 : PEqualNP.CircuitLowerBounds.Circuit) (x4 : ℕ) => (PEqualNP.MetaComplexity.NestedCover.gateAt x3 x4).op = PEqualNP.CircuitLowerBounds.GateOp.and ∧ ∃ (x5 : ℕ), (PEqualNP.MetaComplexity.NestedCover.gateAt x3 x5).op = PEqualNP.CircuitLowerBounds.GateOp.and ∧ PEqualNP.EdgeOwnership.InCone (26 : ℕ) x3 x4 x5; have x4 : PEqualNP.CircuitLowerBounds.Circuit → ℕ → Finset (Fin (13 : ℕ)) → Prop := fun (x4 : PEqualNP.CircuitLowerBounds.Circuit) (x5 : ℕ) (x6 : Finset (Fin (13 : ℕ))) => (x4.wires (x2 x6)).getD ((26 : ℕ) + x5) Bool.false = Bool.true;
      ∀ (x5 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x5 →
      PEqualNP.MetaComplexity.NestedCover.ReadsBack (26 : ℕ) x5 →
      PEqualNP.GenericRejection.RightOnIncidentPairs x1 x5 →
      (∀ (x9 : Finset (Fin (13 : ℕ))), PEqualNP.HeptadCover.IsQuadrangle x1 x9 → x5.eval (x2 x9) = Bool.false) →
      (∀ (x10 : ℕ), x3 x5 x10 → (∃ (x12 : Finset (Fin (13 : ℕ))), PEqualNP.HeptadCover.IsQuadrangle x1 x12 ∧ x4 x5 x10 x12) ∧ (2 : ℕ) ≤ {x12 ∈ PEqualNP.HeptadCover.incidences x1 | { gates := x5.gates.set x10 { op := PEqualNP.CircuitLowerBounds.GateOp.or, inputs := [] : PEqualNP.CircuitLowerBounds.Gate }, output := x5.output : PEqualNP.CircuitLowerBounds.Circuit }.eval (PEqualNP.GenericRejection.incidenceInput {x12.1} {x12.2}) = Bool.false}.card) →
      (∃ (x11 : ℕ), x3 x5 x11 ∧ x4 x5 x11 {(0 : Fin (13 : ℕ)), (1 : Fin (13 : ℕ)), (2 : Fin (13 : ℕ)), (5 : Fin (13 : ℕ))}) →
      x5.output < 13 →
      (64 : ℕ) ≤ x5.size)
    (a2 : have x1 : Fin (13 : ℕ) → Finset (Fin (13 : ℕ)) := PEqualNP.HeptadCover.singerLines3; have x2 : Finset (Fin (13 : ℕ)) → List Bool := fun (x2 : Finset (Fin (13 : ℕ))) => PEqualNP.GenericRejection.incidenceInput x2 (PEqualNP.HeptadCover.missLines x1 x2); have x3 : PEqualNP.CircuitLowerBounds.Circuit → ℕ → Prop := fun (x3 : PEqualNP.CircuitLowerBounds.Circuit) (x4 : ℕ) => (PEqualNP.MetaComplexity.NestedCover.gateAt x3 x4).op = PEqualNP.CircuitLowerBounds.GateOp.and ∧ ∃ (x5 : ℕ), (PEqualNP.MetaComplexity.NestedCover.gateAt x3 x5).op = PEqualNP.CircuitLowerBounds.GateOp.and ∧ PEqualNP.EdgeOwnership.InCone (26 : ℕ) x3 x4 x5; have x4 : PEqualNP.CircuitLowerBounds.Circuit → ℕ → Finset (Fin (13 : ℕ)) → Prop := fun (x4 : PEqualNP.CircuitLowerBounds.Circuit) (x5 : ℕ) (x6 : Finset (Fin (13 : ℕ))) => (x4.wires (x2 x6)).getD ((26 : ℕ) + x5) Bool.false = Bool.true;
      ∀ (x5 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x5 →
      PEqualNP.MetaComplexity.NestedCover.ReadsBack (26 : ℕ) x5 →
      PEqualNP.GenericRejection.RightOnIncidentPairs x1 x5 →
      (∀ (x9 : Finset (Fin (13 : ℕ))), PEqualNP.HeptadCover.IsQuadrangle x1 x9 → x5.eval (x2 x9) = Bool.false) →
      (∀ (x10 : ℕ), x3 x5 x10 → (∃ (x12 : Finset (Fin (13 : ℕ))), PEqualNP.HeptadCover.IsQuadrangle x1 x12 ∧ x4 x5 x10 x12) ∧ (2 : ℕ) ≤ {x12 ∈ PEqualNP.HeptadCover.incidences x1 | { gates := x5.gates.set x10 { op := PEqualNP.CircuitLowerBounds.GateOp.or, inputs := [] : PEqualNP.CircuitLowerBounds.Gate }, output := x5.output : PEqualNP.CircuitLowerBounds.Circuit }.eval (PEqualNP.GenericRejection.incidenceInput {x12.1} {x12.2}) = Bool.false}.card) →
      (∃ (x11 : ℕ), x3 x5 x11 ∧ x4 x5 x11 {(0 : Fin (13 : ℕ)), (1 : Fin (13 : ℕ)), (2 : Fin (13 : ℕ)), (5 : Fin (13 : ℕ))}) →
      13 ≤ x5.output →
      (64 : ℕ) ≤ x5.size)
    : have x1 : Fin (13 : ℕ) → Finset (Fin (13 : ℕ)) := PEqualNP.HeptadCover.singerLines3; have x2 : Finset (Fin (13 : ℕ)) → List Bool := fun (x2 : Finset (Fin (13 : ℕ))) => PEqualNP.GenericRejection.incidenceInput x2 (PEqualNP.HeptadCover.missLines x1 x2); have x3 : PEqualNP.CircuitLowerBounds.Circuit → ℕ → Prop := fun (x3 : PEqualNP.CircuitLowerBounds.Circuit) (x4 : ℕ) => (PEqualNP.MetaComplexity.NestedCover.gateAt x3 x4).op = PEqualNP.CircuitLowerBounds.GateOp.and ∧ ∃ (x5 : ℕ), (PEqualNP.MetaComplexity.NestedCover.gateAt x3 x5).op = PEqualNP.CircuitLowerBounds.GateOp.and ∧ PEqualNP.EdgeOwnership.InCone (26 : ℕ) x3 x4 x5; have x4 : PEqualNP.CircuitLowerBounds.Circuit → ℕ → Finset (Fin (13 : ℕ)) → Prop := fun (x4 : PEqualNP.CircuitLowerBounds.Circuit) (x5 : ℕ) (x6 : Finset (Fin (13 : ℕ))) => (x4.wires (x2 x6)).getD ((26 : ℕ) + x5) Bool.false = Bool.true;
      ∀ (x5 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x5 →
      PEqualNP.MetaComplexity.NestedCover.ReadsBack (26 : ℕ) x5 →
      PEqualNP.GenericRejection.RightOnIncidentPairs x1 x5 →
      (∀ (x9 : Finset (Fin (13 : ℕ))), PEqualNP.HeptadCover.IsQuadrangle x1 x9 → x5.eval (x2 x9) = Bool.false) →
      (∀ (x10 : ℕ), x3 x5 x10 → (∃ (x12 : Finset (Fin (13 : ℕ))), PEqualNP.HeptadCover.IsQuadrangle x1 x12 ∧ x4 x5 x10 x12) ∧ (2 : ℕ) ≤ {x12 ∈ PEqualNP.HeptadCover.incidences x1 | { gates := x5.gates.set x10 { op := PEqualNP.CircuitLowerBounds.GateOp.or, inputs := [] : PEqualNP.CircuitLowerBounds.Gate }, output := x5.output : PEqualNP.CircuitLowerBounds.Circuit }.eval (PEqualNP.GenericRejection.incidenceInput {x12.1} {x12.2}) = Bool.false}.card) →
      (∃ (x11 : ℕ), x3 x5 x11 ∧ x4 x5 x11 {(0 : Fin (13 : ℕ)), (1 : Fin (13 : ℕ)), (2 : Fin (13 : ℕ)), (5 : Fin (13 : ℕ))}) →
      (64 : ℕ) ≤ x5.size := by
  dsimp only
  intro x5 h1 h2 h3 h4 h5 h6
  by_cases h : x5.output < 13
  · exact a1 x5 h1 h2 h3 h4 h5 h6 h
  · exact a2 x5 h1 h2 h3 h4 h5 h6 (Nat.le_of_not_lt h)
