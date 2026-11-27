import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_18808_756
    (a1 : have x1 : PEqualNP.MetaComplexity.DMFormula (14 : ℕ) → PEqualNP.MetaComplexity.DMFormula (14 : ℕ) → Prop → Prop → Prop := fun (x1 x2 : PEqualNP.MetaComplexity.DMFormula (14 : ℕ)) (x3 x4 : Prop) => x3 ∧ x4 ∧ ¬∃ (x5 : Fin (14 : ℕ)), x1 = PEqualNP.MetaComplexity.DMFormula.lit x5 Bool.true ∧ x2 = PEqualNP.MetaComplexity.DMFormula.lit x5 Bool.true; have x2 : PEqualNP.MetaComplexity.DMFormula (14 : ℕ) → Prop := fun (x2 : PEqualNP.MetaComplexity.DMFormula (14 : ℕ)) => PEqualNP.MetaComplexity.DMFormula.rec (fun (x3 : Fin (14 : ℕ)) (x4 : Bool) => x4 = Bool.true) x1 x1 x2; have x3 : ℕ → PEqualNP.MetaComplexity.DMFormula (14 : ℕ) → ℕ := fun (x3 : ℕ) (x4 : PEqualNP.MetaComplexity.DMFormula (14 : ℕ)) => PEqualNP.MetaComplexity.DMFormula.rec (fun (x5 : Fin (14 : ℕ)) (x6 : Bool) => if ↑x5 = x3 then (1 : ℕ) else (0 : ℕ)) (fun (x5 x6 : PEqualNP.MetaComplexity.DMFormula (14 : ℕ)) (x7 x8 : ℕ) => x7 + x8) (fun (x5 x6 : PEqualNP.MetaComplexity.DMFormula (14 : ℕ)) (x7 x8 : ℕ) => Max.max x7 x8) x4;
      ∀ (x4 : PEqualNP.CircuitLowerBounds.Circuit),
      x4.size ≤ (27 : ℕ) →
      PEqualNP.TopForm.IsAO2 (14 : ℕ) x4 →
      (∀ x7 ∈ x4.gates, x7.inputs.Nodup) →
      (∀ (x8 : Fin (14 : ℕ) → Bool), x4.eval (List.ofFn x8) = Bool.true ↔ ∃ (x9 : Fin (7 : ℕ)) (x10 : Fin (7 : ℕ)), x9 ∈ PEqualNP.CircuitLowerBounds.fanoLines x10 ∧ x8 (Fin.castAdd (7 : ℕ) x9) = Bool.true ∧ x8 (Fin.natAdd (7 : ℕ) x10) = Bool.true) →
      (2 : ℕ) ≤ x4.lineDeg (14 : ℕ) {(0 : ℕ)} →
      (2 : ℕ) ≤ x4.lineDeg (14 : ℕ) {(7 : ℕ)} →
      x4.output < 14 →
      ∃ (x11 : PEqualNP.MetaComplexity.DMFormula (14 : ℕ)), x2 x11 ∧ x11.leaves ≤ (28 : ℕ) ∧ (∀ (x12 : Fin (14 : ℕ) → Bool), x11.eval x12 = x4.eval (List.ofFn x12)) ∧ (2 : ℕ) ≤ x3 (0 : ℕ) x11 ∧ (2 : ℕ) ≤ x3 (7 : ℕ) x11)
    (a2 : have x1 : PEqualNP.MetaComplexity.DMFormula (14 : ℕ) → PEqualNP.MetaComplexity.DMFormula (14 : ℕ) → Prop → Prop → Prop := fun (x1 x2 : PEqualNP.MetaComplexity.DMFormula (14 : ℕ)) (x3 x4 : Prop) => x3 ∧ x4 ∧ ¬∃ (x5 : Fin (14 : ℕ)), x1 = PEqualNP.MetaComplexity.DMFormula.lit x5 Bool.true ∧ x2 = PEqualNP.MetaComplexity.DMFormula.lit x5 Bool.true; have x2 : PEqualNP.MetaComplexity.DMFormula (14 : ℕ) → Prop := fun (x2 : PEqualNP.MetaComplexity.DMFormula (14 : ℕ)) => PEqualNP.MetaComplexity.DMFormula.rec (fun (x3 : Fin (14 : ℕ)) (x4 : Bool) => x4 = Bool.true) x1 x1 x2; have x3 : ℕ → PEqualNP.MetaComplexity.DMFormula (14 : ℕ) → ℕ := fun (x3 : ℕ) (x4 : PEqualNP.MetaComplexity.DMFormula (14 : ℕ)) => PEqualNP.MetaComplexity.DMFormula.rec (fun (x5 : Fin (14 : ℕ)) (x6 : Bool) => if ↑x5 = x3 then (1 : ℕ) else (0 : ℕ)) (fun (x5 x6 : PEqualNP.MetaComplexity.DMFormula (14 : ℕ)) (x7 x8 : ℕ) => x7 + x8) (fun (x5 x6 : PEqualNP.MetaComplexity.DMFormula (14 : ℕ)) (x7 x8 : ℕ) => Max.max x7 x8) x4;
      ∀ (x4 : PEqualNP.CircuitLowerBounds.Circuit),
      x4.size ≤ (27 : ℕ) →
      PEqualNP.TopForm.IsAO2 (14 : ℕ) x4 →
      (∀ x7 ∈ x4.gates, x7.inputs.Nodup) →
      (∀ (x8 : Fin (14 : ℕ) → Bool), x4.eval (List.ofFn x8) = Bool.true ↔ ∃ (x9 : Fin (7 : ℕ)) (x10 : Fin (7 : ℕ)), x9 ∈ PEqualNP.CircuitLowerBounds.fanoLines x10 ∧ x8 (Fin.castAdd (7 : ℕ) x9) = Bool.true ∧ x8 (Fin.natAdd (7 : ℕ) x10) = Bool.true) →
      (2 : ℕ) ≤ x4.lineDeg (14 : ℕ) {(0 : ℕ)} →
      (2 : ℕ) ≤ x4.lineDeg (14 : ℕ) {(7 : ℕ)} →
      14 ≤ x4.output →
      ∃ (x11 : PEqualNP.MetaComplexity.DMFormula (14 : ℕ)), x2 x11 ∧ x11.leaves ≤ (28 : ℕ) ∧ (∀ (x12 : Fin (14 : ℕ) → Bool), x11.eval x12 = x4.eval (List.ofFn x12)) ∧ (2 : ℕ) ≤ x3 (0 : ℕ) x11 ∧ (2 : ℕ) ≤ x3 (7 : ℕ) x11)
    : have x1 : PEqualNP.MetaComplexity.DMFormula (14 : ℕ) → PEqualNP.MetaComplexity.DMFormula (14 : ℕ) → Prop → Prop → Prop := fun (x1 x2 : PEqualNP.MetaComplexity.DMFormula (14 : ℕ)) (x3 x4 : Prop) => x3 ∧ x4 ∧ ¬∃ (x5 : Fin (14 : ℕ)), x1 = PEqualNP.MetaComplexity.DMFormula.lit x5 Bool.true ∧ x2 = PEqualNP.MetaComplexity.DMFormula.lit x5 Bool.true; have x2 : PEqualNP.MetaComplexity.DMFormula (14 : ℕ) → Prop := fun (x2 : PEqualNP.MetaComplexity.DMFormula (14 : ℕ)) => PEqualNP.MetaComplexity.DMFormula.rec (fun (x3 : Fin (14 : ℕ)) (x4 : Bool) => x4 = Bool.true) x1 x1 x2; have x3 : ℕ → PEqualNP.MetaComplexity.DMFormula (14 : ℕ) → ℕ := fun (x3 : ℕ) (x4 : PEqualNP.MetaComplexity.DMFormula (14 : ℕ)) => PEqualNP.MetaComplexity.DMFormula.rec (fun (x5 : Fin (14 : ℕ)) (x6 : Bool) => if ↑x5 = x3 then (1 : ℕ) else (0 : ℕ)) (fun (x5 x6 : PEqualNP.MetaComplexity.DMFormula (14 : ℕ)) (x7 x8 : ℕ) => x7 + x8) (fun (x5 x6 : PEqualNP.MetaComplexity.DMFormula (14 : ℕ)) (x7 x8 : ℕ) => Max.max x7 x8) x4;
      ∀ (x4 : PEqualNP.CircuitLowerBounds.Circuit),
      x4.size ≤ (27 : ℕ) →
      PEqualNP.TopForm.IsAO2 (14 : ℕ) x4 →
      (∀ x7 ∈ x4.gates, x7.inputs.Nodup) →
      (∀ (x8 : Fin (14 : ℕ) → Bool), x4.eval (List.ofFn x8) = Bool.true ↔ ∃ (x9 : Fin (7 : ℕ)) (x10 : Fin (7 : ℕ)), x9 ∈ PEqualNP.CircuitLowerBounds.fanoLines x10 ∧ x8 (Fin.castAdd (7 : ℕ) x9) = Bool.true ∧ x8 (Fin.natAdd (7 : ℕ) x10) = Bool.true) →
      (2 : ℕ) ≤ x4.lineDeg (14 : ℕ) {(0 : ℕ)} →
      (2 : ℕ) ≤ x4.lineDeg (14 : ℕ) {(7 : ℕ)} →
      ∃ (x11 : PEqualNP.MetaComplexity.DMFormula (14 : ℕ)), x2 x11 ∧ x11.leaves ≤ (28 : ℕ) ∧ (∀ (x12 : Fin (14 : ℕ) → Bool), x11.eval x12 = x4.eval (List.ofFn x12)) ∧ (2 : ℕ) ≤ x3 (0 : ℕ) x11 ∧ (2 : ℕ) ≤ x3 (7 : ℕ) x11 := by
  dsimp only
  intro x4 h1 h2 h3 h4 h5 h6
  by_cases h : x4.output < 14
  · exact a1 x4 h1 h2 h3 h4 h5 h6 h
  · exact a2 x4 h1 h2 h3 h4 h5 h6 (Nat.le_of_not_lt h)
