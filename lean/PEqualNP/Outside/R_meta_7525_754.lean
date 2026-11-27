import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_7525_754
    (a1 : have x1 : Finset (Fin (13 : ℕ)) → Finset (Fin (13 : ℕ)) → List Bool := fun (x1 x2 : Finset (Fin (13 : ℕ))) => (List.ofFn fun (x3 : Fin (13 : ℕ)) => Decidable.decide (x3 ∈ x1)) ++ List.ofFn fun (x3 : Fin (13 : ℕ)) => Decidable.decide (x3 ∈ x2); have x2 : Fin (13 : ℕ) → Finset (Fin (13 : ℕ)) := PEqualNP.HeptadCover.singerLines3;
      ∀ (x3 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.TopForm.IsAO2 (26 : ℕ) x3 →
      (∀ x5 ∈ x3.gates, x5.inputs.getD (0 : ℕ) (0 : ℕ) ≠ x5.inputs.getD (1 : ℕ) (0 : ℕ)) →
      (∀ (x6 x7 : Finset (Fin (13 : ℕ))), x6.card ≤ (4 : ℕ) → x7.card ≤ (3 : ℕ) → (∀ (x10 : Fin (13 : ℕ)), (x6 ∩ x2 x10).card ≤ (2 : ℕ)) → (∀ (x11 : Fin (13 : ℕ)), {x12 ∈ x7 | x11 ∈ x2 x12}.card ≤ (2 : ℕ)) → x3.eval (x1 x6 x7) = Decidable.decide ¬x7 ⊆ PEqualNP.HeptadCover.missLines x2 x6) →
      (∀ (x7 : ℕ), (26 : ℕ) ≤ x7 → List.count x7 (List.flatMap PEqualNP.CircuitLowerBounds.Gate.inputs (List.take (x3.output + (1 : ℕ) - (26 : ℕ)) x3.gates)) ≤ (1 : ℕ)) →
      x3.output < 13 →
      (64 : ℕ) ≤ x3.size)
    (a2 : have x1 : Finset (Fin (13 : ℕ)) → Finset (Fin (13 : ℕ)) → List Bool := fun (x1 x2 : Finset (Fin (13 : ℕ))) => (List.ofFn fun (x3 : Fin (13 : ℕ)) => Decidable.decide (x3 ∈ x1)) ++ List.ofFn fun (x3 : Fin (13 : ℕ)) => Decidable.decide (x3 ∈ x2); have x2 : Fin (13 : ℕ) → Finset (Fin (13 : ℕ)) := PEqualNP.HeptadCover.singerLines3;
      ∀ (x3 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.TopForm.IsAO2 (26 : ℕ) x3 →
      (∀ x5 ∈ x3.gates, x5.inputs.getD (0 : ℕ) (0 : ℕ) ≠ x5.inputs.getD (1 : ℕ) (0 : ℕ)) →
      (∀ (x6 x7 : Finset (Fin (13 : ℕ))), x6.card ≤ (4 : ℕ) → x7.card ≤ (3 : ℕ) → (∀ (x10 : Fin (13 : ℕ)), (x6 ∩ x2 x10).card ≤ (2 : ℕ)) → (∀ (x11 : Fin (13 : ℕ)), {x12 ∈ x7 | x11 ∈ x2 x12}.card ≤ (2 : ℕ)) → x3.eval (x1 x6 x7) = Decidable.decide ¬x7 ⊆ PEqualNP.HeptadCover.missLines x2 x6) →
      (∀ (x7 : ℕ), (26 : ℕ) ≤ x7 → List.count x7 (List.flatMap PEqualNP.CircuitLowerBounds.Gate.inputs (List.take (x3.output + (1 : ℕ) - (26 : ℕ)) x3.gates)) ≤ (1 : ℕ)) →
      13 ≤ x3.output →
      (64 : ℕ) ≤ x3.size)
    : have x1 : Finset (Fin (13 : ℕ)) → Finset (Fin (13 : ℕ)) → List Bool := fun (x1 x2 : Finset (Fin (13 : ℕ))) => (List.ofFn fun (x3 : Fin (13 : ℕ)) => Decidable.decide (x3 ∈ x1)) ++ List.ofFn fun (x3 : Fin (13 : ℕ)) => Decidable.decide (x3 ∈ x2); have x2 : Fin (13 : ℕ) → Finset (Fin (13 : ℕ)) := PEqualNP.HeptadCover.singerLines3;
      ∀ (x3 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.TopForm.IsAO2 (26 : ℕ) x3 →
      (∀ x5 ∈ x3.gates, x5.inputs.getD (0 : ℕ) (0 : ℕ) ≠ x5.inputs.getD (1 : ℕ) (0 : ℕ)) →
      (∀ (x6 x7 : Finset (Fin (13 : ℕ))), x6.card ≤ (4 : ℕ) → x7.card ≤ (3 : ℕ) → (∀ (x10 : Fin (13 : ℕ)), (x6 ∩ x2 x10).card ≤ (2 : ℕ)) → (∀ (x11 : Fin (13 : ℕ)), {x12 ∈ x7 | x11 ∈ x2 x12}.card ≤ (2 : ℕ)) → x3.eval (x1 x6 x7) = Decidable.decide ¬x7 ⊆ PEqualNP.HeptadCover.missLines x2 x6) →
      (∀ (x7 : ℕ), (26 : ℕ) ≤ x7 → List.count x7 (List.flatMap PEqualNP.CircuitLowerBounds.Gate.inputs (List.take (x3.output + (1 : ℕ) - (26 : ℕ)) x3.gates)) ≤ (1 : ℕ)) →
      (64 : ℕ) ≤ x3.size := by
  dsimp only
  intro x3 h1 h2 h3 h4
  by_cases h : x3.output < 13
  · exact a1 x3 h1 h2 h3 h4 h
  · exact a2 x3 h1 h2 h3 h4 (Nat.le_of_not_lt h)
