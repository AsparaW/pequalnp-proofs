import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_7766_751
    (a1 : have x1 : Finset (Fin (13 : ℕ)) := {(0 : Fin (13 : ℕ)), (1 : Fin (13 : ℕ)), (3 : Fin (13 : ℕ)), (9 : Fin (13 : ℕ))}; have x2 : (Fin (26 : ℕ) → Bool) → Prop := fun (x2 : Fin (26 : ℕ) → Bool) => ∃ (x3 : Fin (13 : ℕ)) (x4 : Fin (13 : ℕ)), x3 - x4 ∈ x1 ∧ x2 (Fin.castAdd (13 : ℕ) x3) = Bool.true ∧ x2 (Fin.natAdd (13 : ℕ) x4) = Bool.true;
      ∀ (x3 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.TopForm.IsAO2 (26 : ℕ) x3 →
      (∀ x5 < x3.size, (26 : ℕ) + x5 = x3.output ∨ ∃ x7 < x3.size, (26 : ℕ) + x5 ∈ (PEqualNP.MetaComplexity.NestedCover.gateAt x3 x7).inputs) →
      ((∀ (x6 : Fin (26 : ℕ) → Bool), x3.eval (List.ofFn x6) = Bool.true ↔ x2 x6) ∧ ∀ x6 < x3.size, (PEqualNP.MetaComplexity.NestedCover.gateAt x3 x6).op = PEqualNP.CircuitLowerBounds.GateOp.and → ∀ (x9 : Fin (26 : ℕ) → Bool), (x3.wires (List.ofFn x9)).getD ((26 : ℕ) + x6) Bool.false = Bool.true → x2 x9) →
      x3.output < 26 →
      (64 : ℕ) ≤ x3.size)
    (a2 : have x1 : Finset (Fin (13 : ℕ)) := {(0 : Fin (13 : ℕ)), (1 : Fin (13 : ℕ)), (3 : Fin (13 : ℕ)), (9 : Fin (13 : ℕ))}; have x2 : (Fin (26 : ℕ) → Bool) → Prop := fun (x2 : Fin (26 : ℕ) → Bool) => ∃ (x3 : Fin (13 : ℕ)) (x4 : Fin (13 : ℕ)), x3 - x4 ∈ x1 ∧ x2 (Fin.castAdd (13 : ℕ) x3) = Bool.true ∧ x2 (Fin.natAdd (13 : ℕ) x4) = Bool.true;
      ∀ (x3 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.TopForm.IsAO2 (26 : ℕ) x3 →
      (∀ x5 < x3.size, (26 : ℕ) + x5 = x3.output ∨ ∃ x7 < x3.size, (26 : ℕ) + x5 ∈ (PEqualNP.MetaComplexity.NestedCover.gateAt x3 x7).inputs) →
      ((∀ (x6 : Fin (26 : ℕ) → Bool), x3.eval (List.ofFn x6) = Bool.true ↔ x2 x6) ∧ ∀ x6 < x3.size, (PEqualNP.MetaComplexity.NestedCover.gateAt x3 x6).op = PEqualNP.CircuitLowerBounds.GateOp.and → ∀ (x9 : Fin (26 : ℕ) → Bool), (x3.wires (List.ofFn x9)).getD ((26 : ℕ) + x6) Bool.false = Bool.true → x2 x9) →
      26 ≤ x3.output →
      (64 : ℕ) ≤ x3.size)
    : have x1 : Finset (Fin (13 : ℕ)) := {(0 : Fin (13 : ℕ)), (1 : Fin (13 : ℕ)), (3 : Fin (13 : ℕ)), (9 : Fin (13 : ℕ))}; have x2 : (Fin (26 : ℕ) → Bool) → Prop := fun (x2 : Fin (26 : ℕ) → Bool) => ∃ (x3 : Fin (13 : ℕ)) (x4 : Fin (13 : ℕ)), x3 - x4 ∈ x1 ∧ x2 (Fin.castAdd (13 : ℕ) x3) = Bool.true ∧ x2 (Fin.natAdd (13 : ℕ) x4) = Bool.true;
      ∀ (x3 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.TopForm.IsAO2 (26 : ℕ) x3 →
      (∀ x5 < x3.size, (26 : ℕ) + x5 = x3.output ∨ ∃ x7 < x3.size, (26 : ℕ) + x5 ∈ (PEqualNP.MetaComplexity.NestedCover.gateAt x3 x7).inputs) →
      ((∀ (x6 : Fin (26 : ℕ) → Bool), x3.eval (List.ofFn x6) = Bool.true ↔ x2 x6) ∧ ∀ x6 < x3.size, (PEqualNP.MetaComplexity.NestedCover.gateAt x3 x6).op = PEqualNP.CircuitLowerBounds.GateOp.and → ∀ (x9 : Fin (26 : ℕ) → Bool), (x3.wires (List.ofFn x9)).getD ((26 : ℕ) + x6) Bool.false = Bool.true → x2 x9) →
      (64 : ℕ) ≤ x3.size := by
  dsimp only
  intro x3 h1 h2 h3
  by_cases h : x3.output < 26
  · exact a1 x3 h1 h2 h3 h
  · exact a2 x3 h1 h2 h3 (Nat.le_of_not_lt h)
