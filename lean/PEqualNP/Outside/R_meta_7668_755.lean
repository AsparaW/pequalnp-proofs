import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_7668_755
    (a1 : have x1 : Finset (Fin (13 : ℕ)) → Finset (Fin (13 : ℕ)) → List Bool := fun (x1 x2 : Finset (Fin (13 : ℕ))) => (List.ofFn fun (x3 : Fin (13 : ℕ)) => Decidable.decide (x3 ∈ x1)) ++ List.ofFn fun (x3 : Fin (13 : ℕ)) => Decidable.decide (x3 ∈ x2); have x2 : Fin (13 : ℕ) → Finset (Fin (13 : ℕ)) := PEqualNP.HeptadCover.singerLines3;
      ∀ (x3 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.TopForm.IsAO2 (26 : ℕ) x3 →
      (∀ x5 ∈ x3.gates, x5.inputs.getD (0 : ℕ) (0 : ℕ) ≠ x5.inputs.getD (1 : ℕ) (0 : ℕ)) →
      (3 : ℕ) ≤ PEqualNP.TopForm.andPairs (26 : ℕ) x3 →
      (∀ x7 < x3.size, (PEqualNP.MetaComplexity.NestedCover.gateAt x3 x7).op = PEqualNP.CircuitLowerBounds.GateOp.and → ∀ x10 ∈ (PEqualNP.MetaComplexity.NestedCover.gateAt x3 x7).inputs, ∃ x12 ∈ PEqualNP.HeptadCover.quadrangles x2, (x3.wires (x1 x12 (PEqualNP.HeptadCover.missLines x2 x12))).getD ((26 : ℕ) + x7) Bool.false ≠ (x3.wires (x1 x12 (PEqualNP.HeptadCover.missLines x2 x12))).getD x10 Bool.false) →
      (∀ (x8 x9 : Finset (Fin (13 : ℕ))), x8.card ≤ (4 : ℕ) → x9.card ≤ (3 : ℕ) → (∀ (x12 : Fin (13 : ℕ)), (x8 ∩ x2 x12).card ≤ (2 : ℕ)) → (∀ (x13 : Fin (13 : ℕ)), {x14 ∈ x9 | x13 ∈ x2 x14}.card ≤ (2 : ℕ)) → x3.eval (x1 x8 x9) = Decidable.decide ¬x9 ⊆ PEqualNP.HeptadCover.missLines x2 x8) →
      x3.output < 13 →
      (64 : ℕ) ≤ x3.size)
    (a2 : have x1 : Finset (Fin (13 : ℕ)) → Finset (Fin (13 : ℕ)) → List Bool := fun (x1 x2 : Finset (Fin (13 : ℕ))) => (List.ofFn fun (x3 : Fin (13 : ℕ)) => Decidable.decide (x3 ∈ x1)) ++ List.ofFn fun (x3 : Fin (13 : ℕ)) => Decidable.decide (x3 ∈ x2); have x2 : Fin (13 : ℕ) → Finset (Fin (13 : ℕ)) := PEqualNP.HeptadCover.singerLines3;
      ∀ (x3 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.TopForm.IsAO2 (26 : ℕ) x3 →
      (∀ x5 ∈ x3.gates, x5.inputs.getD (0 : ℕ) (0 : ℕ) ≠ x5.inputs.getD (1 : ℕ) (0 : ℕ)) →
      (3 : ℕ) ≤ PEqualNP.TopForm.andPairs (26 : ℕ) x3 →
      (∀ x7 < x3.size, (PEqualNP.MetaComplexity.NestedCover.gateAt x3 x7).op = PEqualNP.CircuitLowerBounds.GateOp.and → ∀ x10 ∈ (PEqualNP.MetaComplexity.NestedCover.gateAt x3 x7).inputs, ∃ x12 ∈ PEqualNP.HeptadCover.quadrangles x2, (x3.wires (x1 x12 (PEqualNP.HeptadCover.missLines x2 x12))).getD ((26 : ℕ) + x7) Bool.false ≠ (x3.wires (x1 x12 (PEqualNP.HeptadCover.missLines x2 x12))).getD x10 Bool.false) →
      (∀ (x8 x9 : Finset (Fin (13 : ℕ))), x8.card ≤ (4 : ℕ) → x9.card ≤ (3 : ℕ) → (∀ (x12 : Fin (13 : ℕ)), (x8 ∩ x2 x12).card ≤ (2 : ℕ)) → (∀ (x13 : Fin (13 : ℕ)), {x14 ∈ x9 | x13 ∈ x2 x14}.card ≤ (2 : ℕ)) → x3.eval (x1 x8 x9) = Decidable.decide ¬x9 ⊆ PEqualNP.HeptadCover.missLines x2 x8) →
      13 ≤ x3.output →
      (64 : ℕ) ≤ x3.size)
    : have x1 : Finset (Fin (13 : ℕ)) → Finset (Fin (13 : ℕ)) → List Bool := fun (x1 x2 : Finset (Fin (13 : ℕ))) => (List.ofFn fun (x3 : Fin (13 : ℕ)) => Decidable.decide (x3 ∈ x1)) ++ List.ofFn fun (x3 : Fin (13 : ℕ)) => Decidable.decide (x3 ∈ x2); have x2 : Fin (13 : ℕ) → Finset (Fin (13 : ℕ)) := PEqualNP.HeptadCover.singerLines3;
      ∀ (x3 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.TopForm.IsAO2 (26 : ℕ) x3 →
      (∀ x5 ∈ x3.gates, x5.inputs.getD (0 : ℕ) (0 : ℕ) ≠ x5.inputs.getD (1 : ℕ) (0 : ℕ)) →
      (3 : ℕ) ≤ PEqualNP.TopForm.andPairs (26 : ℕ) x3 →
      (∀ x7 < x3.size, (PEqualNP.MetaComplexity.NestedCover.gateAt x3 x7).op = PEqualNP.CircuitLowerBounds.GateOp.and → ∀ x10 ∈ (PEqualNP.MetaComplexity.NestedCover.gateAt x3 x7).inputs, ∃ x12 ∈ PEqualNP.HeptadCover.quadrangles x2, (x3.wires (x1 x12 (PEqualNP.HeptadCover.missLines x2 x12))).getD ((26 : ℕ) + x7) Bool.false ≠ (x3.wires (x1 x12 (PEqualNP.HeptadCover.missLines x2 x12))).getD x10 Bool.false) →
      (∀ (x8 x9 : Finset (Fin (13 : ℕ))), x8.card ≤ (4 : ℕ) → x9.card ≤ (3 : ℕ) → (∀ (x12 : Fin (13 : ℕ)), (x8 ∩ x2 x12).card ≤ (2 : ℕ)) → (∀ (x13 : Fin (13 : ℕ)), {x14 ∈ x9 | x13 ∈ x2 x14}.card ≤ (2 : ℕ)) → x3.eval (x1 x8 x9) = Decidable.decide ¬x9 ⊆ PEqualNP.HeptadCover.missLines x2 x8) →
      (64 : ℕ) ≤ x3.size := by
  dsimp only
  intro x3 h1 h2 h3 h4 h5
  by_cases h : x3.output < 13
  · exact a1 x3 h1 h2 h3 h4 h5 h
  · exact a2 x3 h1 h2 h3 h4 h5 (Nat.le_of_not_lt h)
