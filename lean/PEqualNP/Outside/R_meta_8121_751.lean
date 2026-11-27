import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_8121_751
    (a1 : have x1 : PEqualNP.CircuitLowerBounds.Circuit → Prop := fun (x1 : PEqualNP.CircuitLowerBounds.Circuit) => ∀ (x2 : Fin (42 : ℕ) → Bool), x1.eval (List.ofFn x2) = Bool.true ↔ ∃ (x3 : Fin (42 : ℕ)) (x4 : Fin (42 : ℕ)), (↑x3 < (21 : ℕ) ∧ (21 : ℕ) ≤ ↑x4 ∧ (↑x4 + (21 : ℕ) - ↑x3) % (21 : ℕ) ∈ [(0 : ℕ), (5 : ℕ), (7 : ℕ), (17 : ℕ), (20 : ℕ)]) ∧ x2 x3 = Bool.true ∧ x2 x4 = Bool.true; have x2 : PEqualNP.CircuitLowerBounds.Circuit → ℕ := fun (x2 : PEqualNP.CircuitLowerBounds.Circuit) => List.countP (fun (x3 : PEqualNP.CircuitLowerBounds.Gate) => PEqualNP.CircuitLowerBounds.GateOp.casesOn x3.op Bool.false Bool.true Bool.false (fun (x4 : ℕ) => Bool.false) Bool.false) x2.gates; have x3 : PEqualNP.CircuitLowerBounds.Circuit → List (ℕ × ℕ) := fun (x3 : PEqualNP.CircuitLowerBounds.Circuit) => PEqualNP.ReadK.doubleReread x3 (42 : ℕ) (fun (x4 : ℕ) => Decidable.decide ((21 : ℕ) ≤ x4)) (List.flatMap (fun (x4 : ℕ) => List.map (fun (x5 : ℕ) => (x4, (21 : ℕ) + (x4 + x5) % (21 : ℕ))) [(0 : ℕ), (5 : ℕ), (7 : ℕ), (17 : ℕ), (20 : ℕ)]) (List.range (21 : ℕ)));
      ∀ (x4 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.TopForm.IsAO2 (42 : ℕ) x4 →
      x1 x4 →
      x3 x4 = [] →
      x4.output < 26 →
      (104 : ℕ) ≤ x2 x4)
    (a2 : have x1 : PEqualNP.CircuitLowerBounds.Circuit → Prop := fun (x1 : PEqualNP.CircuitLowerBounds.Circuit) => ∀ (x2 : Fin (42 : ℕ) → Bool), x1.eval (List.ofFn x2) = Bool.true ↔ ∃ (x3 : Fin (42 : ℕ)) (x4 : Fin (42 : ℕ)), (↑x3 < (21 : ℕ) ∧ (21 : ℕ) ≤ ↑x4 ∧ (↑x4 + (21 : ℕ) - ↑x3) % (21 : ℕ) ∈ [(0 : ℕ), (5 : ℕ), (7 : ℕ), (17 : ℕ), (20 : ℕ)]) ∧ x2 x3 = Bool.true ∧ x2 x4 = Bool.true; have x2 : PEqualNP.CircuitLowerBounds.Circuit → ℕ := fun (x2 : PEqualNP.CircuitLowerBounds.Circuit) => List.countP (fun (x3 : PEqualNP.CircuitLowerBounds.Gate) => PEqualNP.CircuitLowerBounds.GateOp.casesOn x3.op Bool.false Bool.true Bool.false (fun (x4 : ℕ) => Bool.false) Bool.false) x2.gates; have x3 : PEqualNP.CircuitLowerBounds.Circuit → List (ℕ × ℕ) := fun (x3 : PEqualNP.CircuitLowerBounds.Circuit) => PEqualNP.ReadK.doubleReread x3 (42 : ℕ) (fun (x4 : ℕ) => Decidable.decide ((21 : ℕ) ≤ x4)) (List.flatMap (fun (x4 : ℕ) => List.map (fun (x5 : ℕ) => (x4, (21 : ℕ) + (x4 + x5) % (21 : ℕ))) [(0 : ℕ), (5 : ℕ), (7 : ℕ), (17 : ℕ), (20 : ℕ)]) (List.range (21 : ℕ)));
      ∀ (x4 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.TopForm.IsAO2 (42 : ℕ) x4 →
      x1 x4 →
      x3 x4 = [] →
      26 ≤ x4.output →
      (104 : ℕ) ≤ x2 x4)
    : have x1 : PEqualNP.CircuitLowerBounds.Circuit → Prop := fun (x1 : PEqualNP.CircuitLowerBounds.Circuit) => ∀ (x2 : Fin (42 : ℕ) → Bool), x1.eval (List.ofFn x2) = Bool.true ↔ ∃ (x3 : Fin (42 : ℕ)) (x4 : Fin (42 : ℕ)), (↑x3 < (21 : ℕ) ∧ (21 : ℕ) ≤ ↑x4 ∧ (↑x4 + (21 : ℕ) - ↑x3) % (21 : ℕ) ∈ [(0 : ℕ), (5 : ℕ), (7 : ℕ), (17 : ℕ), (20 : ℕ)]) ∧ x2 x3 = Bool.true ∧ x2 x4 = Bool.true; have x2 : PEqualNP.CircuitLowerBounds.Circuit → ℕ := fun (x2 : PEqualNP.CircuitLowerBounds.Circuit) => List.countP (fun (x3 : PEqualNP.CircuitLowerBounds.Gate) => PEqualNP.CircuitLowerBounds.GateOp.casesOn x3.op Bool.false Bool.true Bool.false (fun (x4 : ℕ) => Bool.false) Bool.false) x2.gates; have x3 : PEqualNP.CircuitLowerBounds.Circuit → List (ℕ × ℕ) := fun (x3 : PEqualNP.CircuitLowerBounds.Circuit) => PEqualNP.ReadK.doubleReread x3 (42 : ℕ) (fun (x4 : ℕ) => Decidable.decide ((21 : ℕ) ≤ x4)) (List.flatMap (fun (x4 : ℕ) => List.map (fun (x5 : ℕ) => (x4, (21 : ℕ) + (x4 + x5) % (21 : ℕ))) [(0 : ℕ), (5 : ℕ), (7 : ℕ), (17 : ℕ), (20 : ℕ)]) (List.range (21 : ℕ)));
      ∀ (x4 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.TopForm.IsAO2 (42 : ℕ) x4 →
      x1 x4 →
      x3 x4 = [] →
      (104 : ℕ) ≤ x2 x4 := by
  dsimp only
  intro x4 h1 h2 h3
  by_cases h : x4.output < 26
  · exact a1 x4 h1 h2 h3 h
  · exact a2 x4 h1 h2 h3 (Nat.le_of_not_lt h)
