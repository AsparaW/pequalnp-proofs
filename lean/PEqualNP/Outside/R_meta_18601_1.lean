import Mathlib
import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_18601_1
    (a1 : ∀ (x1 : ℕ) (x2 : SimpleGraph (Fin x1)) [x3 : DecidableRel x2.Adj] (x4 : PEqualNP.CircuitLowerBounds.Circuit),
      x2.IsBipartite →
      PEqualNP.TopForm.NoFourCycle x2 →
      (∀ (x7 : Finset (Fin x1)), x7.card ≤ (2 : ℕ) → (SimpleGraph.induce (↑x7)ᶜ x2).Connected) →
      (∃ (x8 : x2.Subgraph), x8.IsPerfectMatching) →
      ((2 : ℕ) * x2.edgeFinset.card - (3 : ℕ) * x1) ^ (3 : ℕ) ≤ x1 ^ (2 : ℕ) →
      PEqualNP.TopForm.IsAO2 x1 x4 →
      PEqualNP.MetaComplexity.circuitFun x1 x4 = PEqualNP.MetaComplexity.NestedCover.graphFun x2 ∅ →
      x4.output < x1 →
      x2.edgeFinset.card + x1 / (2 : ℕ) ≤ x4.size + (1 : ℕ) + x1.sqrt)
    (a2 : ∀ (x1 : ℕ) (x2 : SimpleGraph (Fin x1)) [x3 : DecidableRel x2.Adj] (x4 : PEqualNP.CircuitLowerBounds.Circuit),
      x2.IsBipartite →
      PEqualNP.TopForm.NoFourCycle x2 →
      (∀ (x7 : Finset (Fin x1)), x7.card ≤ (2 : ℕ) → (SimpleGraph.induce (↑x7)ᶜ x2).Connected) →
      (∃ (x8 : x2.Subgraph), x8.IsPerfectMatching) →
      ((2 : ℕ) * x2.edgeFinset.card - (3 : ℕ) * x1) ^ (3 : ℕ) ≤ x1 ^ (2 : ℕ) →
      PEqualNP.TopForm.IsAO2 x1 x4 →
      PEqualNP.MetaComplexity.circuitFun x1 x4 = PEqualNP.MetaComplexity.NestedCover.graphFun x2 ∅ →
      x1 ≤ x4.output →
      x2.edgeFinset.card + x1 / (2 : ℕ) ≤ x4.size + (1 : ℕ) + x1.sqrt)
    : ∀ (x1 : ℕ) (x2 : SimpleGraph (Fin x1)) [x3 : DecidableRel x2.Adj] (x4 : PEqualNP.CircuitLowerBounds.Circuit),
      x2.IsBipartite →
      PEqualNP.TopForm.NoFourCycle x2 →
      (∀ (x7 : Finset (Fin x1)), x7.card ≤ (2 : ℕ) → (SimpleGraph.induce (↑x7)ᶜ x2).Connected) →
      (∃ (x8 : x2.Subgraph), x8.IsPerfectMatching) →
      ((2 : ℕ) * x2.edgeFinset.card - (3 : ℕ) * x1) ^ (3 : ℕ) ≤ x1 ^ (2 : ℕ) →
      PEqualNP.TopForm.IsAO2 x1 x4 →
      PEqualNP.MetaComplexity.circuitFun x1 x4 = PEqualNP.MetaComplexity.NestedCover.graphFun x2 ∅ →
      x2.edgeFinset.card + x1 / (2 : ℕ) ≤ x4.size + (1 : ℕ) + x1.sqrt := by
  intro x1 x2 x3 x4 h1 h2 h3 h4 h5 h6 h7
  by_cases h : x4.output < x1
  · exact a1 x1 x2 x4 h1 h2 h3 h4 h5 h6 h7 h
  · exact a2 x1 x2 x4 h1 h2 h3 h4 h5 h6 h7 (Nat.le_of_not_lt h)
