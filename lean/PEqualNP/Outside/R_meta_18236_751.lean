import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_18236_751
    (a1 : have x1 : (Fin (10 : ℕ) → Bool) → Bool := fun (x1 : Fin (10 : ℕ) → Bool) => [(1 : ℕ), (12 : ℕ), (23 : ℕ), (34 : ℕ), (40 : ℕ), (5 : ℕ), (16 : ℕ), (27 : ℕ), (38 : ℕ), (49 : ℕ), (57 : ℕ), (79 : ℕ), (96 : ℕ), (68 : ℕ), (85 : ℕ)].any fun (x2 : ℕ) => x1 (Fin.ofNat (10 : ℕ) (x2 / (10 : ℕ))) && x1 (Fin.ofNat (10 : ℕ) (x2 % (10 : ℕ))); have x2 : PEqualNP.CircuitLowerBounds.Circuit → Prop := fun (x2 : PEqualNP.CircuitLowerBounds.Circuit) => PEqualNP.MinimumComplex.Strict (10 : ℕ) x2 ∧ x2.output + (1 : ℕ) = (10 : ℕ) + x2.size ∧ (∀ x3 < x2.size - (1 : ℕ), ∃ x5 ∈ x2.gates, (10 : ℕ) + x3 ∈ x5.inputs) ∧ (∀ (x3 : ℕ) (x4 : x3 < x2.gates.length), x2.gates[x3].op = PEqualNP.CircuitLowerBounds.GateOp.not → ∀ x6 ∈ x2.gates, x6.op = PEqualNP.CircuitLowerBounds.GateOp.not → (10 : ℕ) + x3 ∉ x6.inputs) ∧ List.Pairwise (fun (x3 x4 : PEqualNP.CircuitLowerBounds.Gate) => x3.op = x4.op → ¬x3.inputs.Perm x4.inputs) x2.gates;
      ∀ (x3 : PEqualNP.CircuitLowerBounds.Circuit),
      x2 x3 →
      x3.size ≤ (19 : ℕ) →
      (x3.size < (19 : ℕ) ∨ ∃ x6 ∈ x3.gates, x6.op = PEqualNP.CircuitLowerBounds.GateOp.not) →
      x3.output < 10 →
      ¬∀ (x7 : Fin (10 : ℕ) → Bool), x3.eval (List.ofFn x7) = x1 x7)
    (a2 : have x1 : (Fin (10 : ℕ) → Bool) → Bool := fun (x1 : Fin (10 : ℕ) → Bool) => [(1 : ℕ), (12 : ℕ), (23 : ℕ), (34 : ℕ), (40 : ℕ), (5 : ℕ), (16 : ℕ), (27 : ℕ), (38 : ℕ), (49 : ℕ), (57 : ℕ), (79 : ℕ), (96 : ℕ), (68 : ℕ), (85 : ℕ)].any fun (x2 : ℕ) => x1 (Fin.ofNat (10 : ℕ) (x2 / (10 : ℕ))) && x1 (Fin.ofNat (10 : ℕ) (x2 % (10 : ℕ))); have x2 : PEqualNP.CircuitLowerBounds.Circuit → Prop := fun (x2 : PEqualNP.CircuitLowerBounds.Circuit) => PEqualNP.MinimumComplex.Strict (10 : ℕ) x2 ∧ x2.output + (1 : ℕ) = (10 : ℕ) + x2.size ∧ (∀ x3 < x2.size - (1 : ℕ), ∃ x5 ∈ x2.gates, (10 : ℕ) + x3 ∈ x5.inputs) ∧ (∀ (x3 : ℕ) (x4 : x3 < x2.gates.length), x2.gates[x3].op = PEqualNP.CircuitLowerBounds.GateOp.not → ∀ x6 ∈ x2.gates, x6.op = PEqualNP.CircuitLowerBounds.GateOp.not → (10 : ℕ) + x3 ∉ x6.inputs) ∧ List.Pairwise (fun (x3 x4 : PEqualNP.CircuitLowerBounds.Gate) => x3.op = x4.op → ¬x3.inputs.Perm x4.inputs) x2.gates;
      ∀ (x3 : PEqualNP.CircuitLowerBounds.Circuit),
      x2 x3 →
      x3.size ≤ (19 : ℕ) →
      (x3.size < (19 : ℕ) ∨ ∃ x6 ∈ x3.gates, x6.op = PEqualNP.CircuitLowerBounds.GateOp.not) →
      10 ≤ x3.output →
      ¬∀ (x7 : Fin (10 : ℕ) → Bool), x3.eval (List.ofFn x7) = x1 x7)
    : have x1 : (Fin (10 : ℕ) → Bool) → Bool := fun (x1 : Fin (10 : ℕ) → Bool) => [(1 : ℕ), (12 : ℕ), (23 : ℕ), (34 : ℕ), (40 : ℕ), (5 : ℕ), (16 : ℕ), (27 : ℕ), (38 : ℕ), (49 : ℕ), (57 : ℕ), (79 : ℕ), (96 : ℕ), (68 : ℕ), (85 : ℕ)].any fun (x2 : ℕ) => x1 (Fin.ofNat (10 : ℕ) (x2 / (10 : ℕ))) && x1 (Fin.ofNat (10 : ℕ) (x2 % (10 : ℕ))); have x2 : PEqualNP.CircuitLowerBounds.Circuit → Prop := fun (x2 : PEqualNP.CircuitLowerBounds.Circuit) => PEqualNP.MinimumComplex.Strict (10 : ℕ) x2 ∧ x2.output + (1 : ℕ) = (10 : ℕ) + x2.size ∧ (∀ x3 < x2.size - (1 : ℕ), ∃ x5 ∈ x2.gates, (10 : ℕ) + x3 ∈ x5.inputs) ∧ (∀ (x3 : ℕ) (x4 : x3 < x2.gates.length), x2.gates[x3].op = PEqualNP.CircuitLowerBounds.GateOp.not → ∀ x6 ∈ x2.gates, x6.op = PEqualNP.CircuitLowerBounds.GateOp.not → (10 : ℕ) + x3 ∉ x6.inputs) ∧ List.Pairwise (fun (x3 x4 : PEqualNP.CircuitLowerBounds.Gate) => x3.op = x4.op → ¬x3.inputs.Perm x4.inputs) x2.gates;
      ∀ (x3 : PEqualNP.CircuitLowerBounds.Circuit),
      x2 x3 →
      x3.size ≤ (19 : ℕ) →
      (x3.size < (19 : ℕ) ∨ ∃ x6 ∈ x3.gates, x6.op = PEqualNP.CircuitLowerBounds.GateOp.not) →
      ¬∀ (x7 : Fin (10 : ℕ) → Bool), x3.eval (List.ofFn x7) = x1 x7 := by
  dsimp only
  intro x3 h1 h2 h3
  by_cases h : x3.output < 10
  · exact a1 x3 h1 h2 h3 h
  · exact a2 x3 h1 h2 h3 (Nat.le_of_not_lt h)
