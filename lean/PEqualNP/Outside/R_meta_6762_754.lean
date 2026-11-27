import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_6762_754
    (a1 : have x1 : Fin (13 : ℕ) → Finset (Fin (13 : ℕ)) := PEqualNP.HeptadCover.singerLines3; have x2 : (Fin (26 : ℕ) → Bool) → Prop := fun (x2 : Fin (26 : ℕ) → Bool) => ∃ (x3 : Fin (13 : ℕ)) (x4 : Fin (13 : ℕ)), x3 ∈ x1 x4 ∧ x2 (Fin.castAdd (13 : ℕ) x3) = Bool.true ∧ x2 (Fin.natAdd (13 : ℕ) x4) = Bool.true; have x3 : (Fin (26 : ℕ) → Bool) → Prop := fun (x3 : Fin (26 : ℕ) → Bool) => (x3 = fun (x4 : Fin (26 : ℕ)) => Bool.false) ∨ (∃ (x4 : Fin (26 : ℕ)), x3 = fun (x5 : Fin (26 : ℕ)) => Decidable.decide (x5 = x4)) ∨ ∃ (x4 : Fin (26 : ℕ)) (x5 : Fin (26 : ℕ)), x3 = fun (x6 : Fin (26 : ℕ)) => Decidable.decide (x6 = x4 ∨ x6 = x5);
      ∀ (x4 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.TopForm.IsAO2 (26 : ℕ) x4 →
      (∀ (x6 : Fin (26 : ℕ)), x4.eval (List.ofFn fun (x7 : Fin (26 : ℕ)) => Decidable.decide (x7 = x6)) = Bool.false) →
      (∀ (x7 x8 : Fin (26 : ℕ)), (x2 fun (x9 : Fin (26 : ℕ)) => Decidable.decide (x9 = x7 ∨ x9 = x8)) → x4.eval (List.ofFn fun (x10 : Fin (26 : ℕ)) => Decidable.decide (x10 = x7 ∨ x10 = x8)) = Bool.true) →
      (∀ x8 < x4.size, (PEqualNP.MetaComplexity.NestedCover.gateAt x4 x8).op = PEqualNP.CircuitLowerBounds.GateOp.and → ∀ (x11 : Fin (26 : ℕ) → Bool), x3 x11 → (x4.wires (List.ofFn x11)).getD ((26 : ℕ) + x8) Bool.false = Bool.true → x2 x11) →
      x4.output < 26 →
      (64 : ℕ) ≤ x4.size)
    (a2 : have x1 : Fin (13 : ℕ) → Finset (Fin (13 : ℕ)) := PEqualNP.HeptadCover.singerLines3; have x2 : (Fin (26 : ℕ) → Bool) → Prop := fun (x2 : Fin (26 : ℕ) → Bool) => ∃ (x3 : Fin (13 : ℕ)) (x4 : Fin (13 : ℕ)), x3 ∈ x1 x4 ∧ x2 (Fin.castAdd (13 : ℕ) x3) = Bool.true ∧ x2 (Fin.natAdd (13 : ℕ) x4) = Bool.true; have x3 : (Fin (26 : ℕ) → Bool) → Prop := fun (x3 : Fin (26 : ℕ) → Bool) => (x3 = fun (x4 : Fin (26 : ℕ)) => Bool.false) ∨ (∃ (x4 : Fin (26 : ℕ)), x3 = fun (x5 : Fin (26 : ℕ)) => Decidable.decide (x5 = x4)) ∨ ∃ (x4 : Fin (26 : ℕ)) (x5 : Fin (26 : ℕ)), x3 = fun (x6 : Fin (26 : ℕ)) => Decidable.decide (x6 = x4 ∨ x6 = x5);
      ∀ (x4 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.TopForm.IsAO2 (26 : ℕ) x4 →
      (∀ (x6 : Fin (26 : ℕ)), x4.eval (List.ofFn fun (x7 : Fin (26 : ℕ)) => Decidable.decide (x7 = x6)) = Bool.false) →
      (∀ (x7 x8 : Fin (26 : ℕ)), (x2 fun (x9 : Fin (26 : ℕ)) => Decidable.decide (x9 = x7 ∨ x9 = x8)) → x4.eval (List.ofFn fun (x10 : Fin (26 : ℕ)) => Decidable.decide (x10 = x7 ∨ x10 = x8)) = Bool.true) →
      (∀ x8 < x4.size, (PEqualNP.MetaComplexity.NestedCover.gateAt x4 x8).op = PEqualNP.CircuitLowerBounds.GateOp.and → ∀ (x11 : Fin (26 : ℕ) → Bool), x3 x11 → (x4.wires (List.ofFn x11)).getD ((26 : ℕ) + x8) Bool.false = Bool.true → x2 x11) →
      26 ≤ x4.output →
      (64 : ℕ) ≤ x4.size)
    : have x1 : Fin (13 : ℕ) → Finset (Fin (13 : ℕ)) := PEqualNP.HeptadCover.singerLines3; have x2 : (Fin (26 : ℕ) → Bool) → Prop := fun (x2 : Fin (26 : ℕ) → Bool) => ∃ (x3 : Fin (13 : ℕ)) (x4 : Fin (13 : ℕ)), x3 ∈ x1 x4 ∧ x2 (Fin.castAdd (13 : ℕ) x3) = Bool.true ∧ x2 (Fin.natAdd (13 : ℕ) x4) = Bool.true; have x3 : (Fin (26 : ℕ) → Bool) → Prop := fun (x3 : Fin (26 : ℕ) → Bool) => (x3 = fun (x4 : Fin (26 : ℕ)) => Bool.false) ∨ (∃ (x4 : Fin (26 : ℕ)), x3 = fun (x5 : Fin (26 : ℕ)) => Decidable.decide (x5 = x4)) ∨ ∃ (x4 : Fin (26 : ℕ)) (x5 : Fin (26 : ℕ)), x3 = fun (x6 : Fin (26 : ℕ)) => Decidable.decide (x6 = x4 ∨ x6 = x5);
      ∀ (x4 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.TopForm.IsAO2 (26 : ℕ) x4 →
      (∀ (x6 : Fin (26 : ℕ)), x4.eval (List.ofFn fun (x7 : Fin (26 : ℕ)) => Decidable.decide (x7 = x6)) = Bool.false) →
      (∀ (x7 x8 : Fin (26 : ℕ)), (x2 fun (x9 : Fin (26 : ℕ)) => Decidable.decide (x9 = x7 ∨ x9 = x8)) → x4.eval (List.ofFn fun (x10 : Fin (26 : ℕ)) => Decidable.decide (x10 = x7 ∨ x10 = x8)) = Bool.true) →
      (∀ x8 < x4.size, (PEqualNP.MetaComplexity.NestedCover.gateAt x4 x8).op = PEqualNP.CircuitLowerBounds.GateOp.and → ∀ (x11 : Fin (26 : ℕ) → Bool), x3 x11 → (x4.wires (List.ofFn x11)).getD ((26 : ℕ) + x8) Bool.false = Bool.true → x2 x11) →
      (64 : ℕ) ≤ x4.size := by
  dsimp only
  intro x4 h1 h2 h3 h4
  by_cases h : x4.output < 26
  · exact a1 x4 h1 h2 h3 h4 h
  · exact a2 x4 h1 h2 h3 h4 (Nat.le_of_not_lt h)
