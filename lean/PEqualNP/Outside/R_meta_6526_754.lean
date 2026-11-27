import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_6526_754
    (a1 : have x1 : Finset (Fin (13 : ℕ)) := {(0 : Fin (13 : ℕ)), (1 : Fin (13 : ℕ)), (3 : Fin (13 : ℕ)), (9 : Fin (13 : ℕ))}; have x2 : Fin (13 : ℕ) → Fin (13 : ℕ) → List Bool := fun (x2 x3 : Fin (13 : ℕ)) => (List.ofFn fun (x4 : Fin (13 : ℕ)) => Decidable.decide (x4 = x2)) ++ List.ofFn fun (x4 : Fin (13 : ℕ)) => Decidable.decide (x4 = x3); have x3 : Finset (Fin (13 : ℕ)) → List Bool := fun (x3 : Finset (Fin (13 : ℕ))) => (List.ofFn fun (x4 : Fin (13 : ℕ)) => Decidable.decide (x4 ∈ x3)) ++ List.ofFn fun (x4 : Fin (13 : ℕ)) => Decidable.decide (∀ x5 ∈ x3, x5 - x4 ∉ x1); have x4 : Finset (Fin (13 : ℕ)) → Prop := fun (x4 : Finset (Fin (13 : ℕ))) => x4.card = (4 : ℕ) ∧ ∀ (x5 : Fin (13 : ℕ)), {x6 ∈ x4 | x6 - x5 ∈ x1}.card ≤ (2 : ℕ);
      ∀ (x5 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x5 →
      (∀ (x7 : Fin x5.gates.length), ∀ x8 ∈ (x5.gates.get x7).inputs, x8 < (26 : ℕ) + ↑x7) →
      (∀ (x8 x9 : Fin (13 : ℕ)), x8 - x9 ∈ x1 → x8 ≠ (0 : Fin (13 : ℕ)) ∨ x9 ≠ (0 : Fin (13 : ℕ)) → x5.eval (x2 x8 x9) = Bool.true) →
      (∀ (x9 : Finset (Fin (13 : ℕ))), x4 x9 → x5.eval (x3 x9) = Bool.false) →
      x5.output < 13 →
      (63 : ℕ) ≤ x5.size)
    (a2 : have x1 : Finset (Fin (13 : ℕ)) := {(0 : Fin (13 : ℕ)), (1 : Fin (13 : ℕ)), (3 : Fin (13 : ℕ)), (9 : Fin (13 : ℕ))}; have x2 : Fin (13 : ℕ) → Fin (13 : ℕ) → List Bool := fun (x2 x3 : Fin (13 : ℕ)) => (List.ofFn fun (x4 : Fin (13 : ℕ)) => Decidable.decide (x4 = x2)) ++ List.ofFn fun (x4 : Fin (13 : ℕ)) => Decidable.decide (x4 = x3); have x3 : Finset (Fin (13 : ℕ)) → List Bool := fun (x3 : Finset (Fin (13 : ℕ))) => (List.ofFn fun (x4 : Fin (13 : ℕ)) => Decidable.decide (x4 ∈ x3)) ++ List.ofFn fun (x4 : Fin (13 : ℕ)) => Decidable.decide (∀ x5 ∈ x3, x5 - x4 ∉ x1); have x4 : Finset (Fin (13 : ℕ)) → Prop := fun (x4 : Finset (Fin (13 : ℕ))) => x4.card = (4 : ℕ) ∧ ∀ (x5 : Fin (13 : ℕ)), {x6 ∈ x4 | x6 - x5 ∈ x1}.card ≤ (2 : ℕ);
      ∀ (x5 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x5 →
      (∀ (x7 : Fin x5.gates.length), ∀ x8 ∈ (x5.gates.get x7).inputs, x8 < (26 : ℕ) + ↑x7) →
      (∀ (x8 x9 : Fin (13 : ℕ)), x8 - x9 ∈ x1 → x8 ≠ (0 : Fin (13 : ℕ)) ∨ x9 ≠ (0 : Fin (13 : ℕ)) → x5.eval (x2 x8 x9) = Bool.true) →
      (∀ (x9 : Finset (Fin (13 : ℕ))), x4 x9 → x5.eval (x3 x9) = Bool.false) →
      13 ≤ x5.output →
      (63 : ℕ) ≤ x5.size)
    : have x1 : Finset (Fin (13 : ℕ)) := {(0 : Fin (13 : ℕ)), (1 : Fin (13 : ℕ)), (3 : Fin (13 : ℕ)), (9 : Fin (13 : ℕ))}; have x2 : Fin (13 : ℕ) → Fin (13 : ℕ) → List Bool := fun (x2 x3 : Fin (13 : ℕ)) => (List.ofFn fun (x4 : Fin (13 : ℕ)) => Decidable.decide (x4 = x2)) ++ List.ofFn fun (x4 : Fin (13 : ℕ)) => Decidable.decide (x4 = x3); have x3 : Finset (Fin (13 : ℕ)) → List Bool := fun (x3 : Finset (Fin (13 : ℕ))) => (List.ofFn fun (x4 : Fin (13 : ℕ)) => Decidable.decide (x4 ∈ x3)) ++ List.ofFn fun (x4 : Fin (13 : ℕ)) => Decidable.decide (∀ x5 ∈ x3, x5 - x4 ∉ x1); have x4 : Finset (Fin (13 : ℕ)) → Prop := fun (x4 : Finset (Fin (13 : ℕ))) => x4.card = (4 : ℕ) ∧ ∀ (x5 : Fin (13 : ℕ)), {x6 ∈ x4 | x6 - x5 ∈ x1}.card ≤ (2 : ℕ);
      ∀ (x5 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.Monotone2 x5 →
      (∀ (x7 : Fin x5.gates.length), ∀ x8 ∈ (x5.gates.get x7).inputs, x8 < (26 : ℕ) + ↑x7) →
      (∀ (x8 x9 : Fin (13 : ℕ)), x8 - x9 ∈ x1 → x8 ≠ (0 : Fin (13 : ℕ)) ∨ x9 ≠ (0 : Fin (13 : ℕ)) → x5.eval (x2 x8 x9) = Bool.true) →
      (∀ (x9 : Finset (Fin (13 : ℕ))), x4 x9 → x5.eval (x3 x9) = Bool.false) →
      (63 : ℕ) ≤ x5.size := by
  dsimp only
  intro x5 h1 h2 h3 h4
  by_cases h : x5.output < 13
  · exact a1 x5 h1 h2 h3 h4 h
  · exact a2 x5 h1 h2 h3 h4 (Nat.le_of_not_lt h)
