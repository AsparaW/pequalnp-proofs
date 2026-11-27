import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_8271_756
    (a1 : have x1 : ℕ → ℕ → List Bool := fun (x1 x2 : ℕ) => List.map (fun (x3 : ℕ) => (x2 + (128 : ℕ)).testBit (x1 / (8 : ℕ) ^ x3 % (8 : ℕ))) (List.range (11 : ℕ)); have x2 : PEqualNP.CircuitLowerBounds.Circuit → ℕ → ℕ := fun (x2 : PEqualNP.CircuitLowerBounds.Circuit) (x3 : ℕ) => (List.map (fun (x4 : ℕ) => List.map (fun (x5 : ℕ) => (x2.wires (x1 x3 x5)).getD x4 Bool.false) (List.range (64 : ℕ))) (List.range ((11 : ℕ) + x2.size))).toFinset.card; have x3 : PEqualNP.CircuitLowerBounds.Gate → List ℕ := fun (x3 : PEqualNP.CircuitLowerBounds.Gate) => if x3.op.eval [Bool.false, Bool.false] = Bool.true then List.take (1 : ℕ) x3.inputs else x3.inputs; have x4 : (Fin (10 : ℕ) → Bool) → Bool := fun (x4 : Fin (10 : ℕ) → Bool) => (List.finRange (5 : ℕ)).any fun (x5 : Fin (5 : ℕ)) => x4 (Fin.castAdd (5 : ℕ) x5) && (x4 (Fin.castAdd (5 : ℕ) (x5 + (1 : Fin (5 : ℕ)))) || x4 (Fin.natAdd (5 : ℕ) x5)) || x4 (Fin.natAdd (5 : ℕ) x5) && x4 (Fin.natAdd (5 : ℕ) (x5 + (2 : Fin (5 : ℕ))));
      ∀ (x5 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.FanInTwo x5 →
      x5.size ≤ (18 : ℕ) →
      (∀ x8 ∈ x5.gates, (0 : ℕ) ∉ x3 x8) →
      (∃ (x9 : Fin x5.gates.length) (x10 : Fin x5.gates.length), ∀ (x11 : Fin x5.gates.length), (10 : ℕ) ∈ x3 (x5.gates.get x11) → x11 = x9 ∨ x11 = x10) →
      (∀ x10 ∈ [(8098112054 : ℕ), (7024370231 : ℕ), (7876514230 : ℕ), (7876514238 : ℕ), (8394239046 : ℕ), (8394243142 : ℕ), (8167830598 : ℕ), (8167863366 : ℕ)], (16 : ℕ) ≤ x2 x5 x10) →
      x5.output < 10 →
      ∃ (x11 : Fin (10 : ℕ) → Bool), x5.eval (List.ofFn x11 ++ [!x11 (0 : Fin (10 : ℕ))]) ≠ x4 x11)
    (a2 : have x1 : ℕ → ℕ → List Bool := fun (x1 x2 : ℕ) => List.map (fun (x3 : ℕ) => (x2 + (128 : ℕ)).testBit (x1 / (8 : ℕ) ^ x3 % (8 : ℕ))) (List.range (11 : ℕ)); have x2 : PEqualNP.CircuitLowerBounds.Circuit → ℕ → ℕ := fun (x2 : PEqualNP.CircuitLowerBounds.Circuit) (x3 : ℕ) => (List.map (fun (x4 : ℕ) => List.map (fun (x5 : ℕ) => (x2.wires (x1 x3 x5)).getD x4 Bool.false) (List.range (64 : ℕ))) (List.range ((11 : ℕ) + x2.size))).toFinset.card; have x3 : PEqualNP.CircuitLowerBounds.Gate → List ℕ := fun (x3 : PEqualNP.CircuitLowerBounds.Gate) => if x3.op.eval [Bool.false, Bool.false] = Bool.true then List.take (1 : ℕ) x3.inputs else x3.inputs; have x4 : (Fin (10 : ℕ) → Bool) → Bool := fun (x4 : Fin (10 : ℕ) → Bool) => (List.finRange (5 : ℕ)).any fun (x5 : Fin (5 : ℕ)) => x4 (Fin.castAdd (5 : ℕ) x5) && (x4 (Fin.castAdd (5 : ℕ) (x5 + (1 : Fin (5 : ℕ)))) || x4 (Fin.natAdd (5 : ℕ) x5)) || x4 (Fin.natAdd (5 : ℕ) x5) && x4 (Fin.natAdd (5 : ℕ) (x5 + (2 : Fin (5 : ℕ))));
      ∀ (x5 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.FanInTwo x5 →
      x5.size ≤ (18 : ℕ) →
      (∀ x8 ∈ x5.gates, (0 : ℕ) ∉ x3 x8) →
      (∃ (x9 : Fin x5.gates.length) (x10 : Fin x5.gates.length), ∀ (x11 : Fin x5.gates.length), (10 : ℕ) ∈ x3 (x5.gates.get x11) → x11 = x9 ∨ x11 = x10) →
      (∀ x10 ∈ [(8098112054 : ℕ), (7024370231 : ℕ), (7876514230 : ℕ), (7876514238 : ℕ), (8394239046 : ℕ), (8394243142 : ℕ), (8167830598 : ℕ), (8167863366 : ℕ)], (16 : ℕ) ≤ x2 x5 x10) →
      10 ≤ x5.output →
      ∃ (x11 : Fin (10 : ℕ) → Bool), x5.eval (List.ofFn x11 ++ [!x11 (0 : Fin (10 : ℕ))]) ≠ x4 x11)
    : have x1 : ℕ → ℕ → List Bool := fun (x1 x2 : ℕ) => List.map (fun (x3 : ℕ) => (x2 + (128 : ℕ)).testBit (x1 / (8 : ℕ) ^ x3 % (8 : ℕ))) (List.range (11 : ℕ)); have x2 : PEqualNP.CircuitLowerBounds.Circuit → ℕ → ℕ := fun (x2 : PEqualNP.CircuitLowerBounds.Circuit) (x3 : ℕ) => (List.map (fun (x4 : ℕ) => List.map (fun (x5 : ℕ) => (x2.wires (x1 x3 x5)).getD x4 Bool.false) (List.range (64 : ℕ))) (List.range ((11 : ℕ) + x2.size))).toFinset.card; have x3 : PEqualNP.CircuitLowerBounds.Gate → List ℕ := fun (x3 : PEqualNP.CircuitLowerBounds.Gate) => if x3.op.eval [Bool.false, Bool.false] = Bool.true then List.take (1 : ℕ) x3.inputs else x3.inputs; have x4 : (Fin (10 : ℕ) → Bool) → Bool := fun (x4 : Fin (10 : ℕ) → Bool) => (List.finRange (5 : ℕ)).any fun (x5 : Fin (5 : ℕ)) => x4 (Fin.castAdd (5 : ℕ) x5) && (x4 (Fin.castAdd (5 : ℕ) (x5 + (1 : Fin (5 : ℕ)))) || x4 (Fin.natAdd (5 : ℕ) x5)) || x4 (Fin.natAdd (5 : ℕ) x5) && x4 (Fin.natAdd (5 : ℕ) (x5 + (2 : Fin (5 : ℕ))));
      ∀ (x5 : PEqualNP.CircuitLowerBounds.Circuit),
      PEqualNP.MetaComplexity.FanInTwo x5 →
      x5.size ≤ (18 : ℕ) →
      (∀ x8 ∈ x5.gates, (0 : ℕ) ∉ x3 x8) →
      (∃ (x9 : Fin x5.gates.length) (x10 : Fin x5.gates.length), ∀ (x11 : Fin x5.gates.length), (10 : ℕ) ∈ x3 (x5.gates.get x11) → x11 = x9 ∨ x11 = x10) →
      (∀ x10 ∈ [(8098112054 : ℕ), (7024370231 : ℕ), (7876514230 : ℕ), (7876514238 : ℕ), (8394239046 : ℕ), (8394243142 : ℕ), (8167830598 : ℕ), (8167863366 : ℕ)], (16 : ℕ) ≤ x2 x5 x10) →
      ∃ (x11 : Fin (10 : ℕ) → Bool), x5.eval (List.ofFn x11 ++ [!x11 (0 : Fin (10 : ℕ))]) ≠ x4 x11 := by
  dsimp only
  intro x5 h1 h2 h3 h4 h5
  by_cases h : x5.output < 10
  · exact a1 x5 h1 h2 h3 h4 h5 h
  · exact a2 x5 h1 h2 h3 h4 h5 (Nat.le_of_not_lt h)
