import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_6326_757
    (a1 : have x1 : List (ℕ × ℕ) := [((0 : ℕ), (9 : ℕ)), ((0 : ℕ), (10 : ℕ)), ((1 : ℕ), (4 : ℕ)), ((1 : ℕ), (8 : ℕ)), ((2 : ℕ), (5 : ℕ)), ((2 : ℕ), (10 : ℕ)), ((3 : ℕ), (6 : ℕ)), ((3 : ℕ), (7 : ℕ)), ((4 : ℕ), (8 : ℕ)), ((4 : ℕ), (10 : ℕ)), ((5 : ℕ), (8 : ℕ)), ((5 : ℕ), (9 : ℕ)), ((6 : ℕ), (7 : ℕ)), ((6 : ℕ), (10 : ℕ)), ((7 : ℕ), (9 : ℕ)), ((8 : ℕ), (9 : ℕ))]; let x2 : SimpleGraph (Fin (11 : ℕ)) := PEqualNP.EdgeOwnership.edgeGraph (11 : ℕ) x1;
      ∀ (x3 : PEqualNP.CircuitLowerBounds.Circuit),
      x3.size ≤ (21 : ℕ) →
      PEqualNP.TopForm.IsLeastAO x2 x3 →
      PEqualNP.TopForm.TopForm x2 x3 →
      (2 : ℕ) ≤ (PEqualNP.TopForm.junk x2 x3).card →
      (PEqualNP.TopForm.Ustar x2 x3).card = (16 : ℕ) →
      (2 : ℕ) * (PEqualNP.TopForm.centreless x2 x3).card + (PEqualNP.TopForm.junk x2 x3).card + (PEqualNP.TopForm.orN x2 x3 \ PEqualNP.TopForm.lam x2 x3).card = (22 : ℕ) →
      x3.output < 26 →
      False)
    (a2 : have x1 : List (ℕ × ℕ) := [((0 : ℕ), (9 : ℕ)), ((0 : ℕ), (10 : ℕ)), ((1 : ℕ), (4 : ℕ)), ((1 : ℕ), (8 : ℕ)), ((2 : ℕ), (5 : ℕ)), ((2 : ℕ), (10 : ℕ)), ((3 : ℕ), (6 : ℕ)), ((3 : ℕ), (7 : ℕ)), ((4 : ℕ), (8 : ℕ)), ((4 : ℕ), (10 : ℕ)), ((5 : ℕ), (8 : ℕ)), ((5 : ℕ), (9 : ℕ)), ((6 : ℕ), (7 : ℕ)), ((6 : ℕ), (10 : ℕ)), ((7 : ℕ), (9 : ℕ)), ((8 : ℕ), (9 : ℕ))]; let x2 : SimpleGraph (Fin (11 : ℕ)) := PEqualNP.EdgeOwnership.edgeGraph (11 : ℕ) x1;
      ∀ (x3 : PEqualNP.CircuitLowerBounds.Circuit),
      x3.size ≤ (21 : ℕ) →
      PEqualNP.TopForm.IsLeastAO x2 x3 →
      PEqualNP.TopForm.TopForm x2 x3 →
      (2 : ℕ) ≤ (PEqualNP.TopForm.junk x2 x3).card →
      (PEqualNP.TopForm.Ustar x2 x3).card = (16 : ℕ) →
      (2 : ℕ) * (PEqualNP.TopForm.centreless x2 x3).card + (PEqualNP.TopForm.junk x2 x3).card + (PEqualNP.TopForm.orN x2 x3 \ PEqualNP.TopForm.lam x2 x3).card = (22 : ℕ) →
      26 ≤ x3.output →
      False)
    : have x1 : List (ℕ × ℕ) := [((0 : ℕ), (9 : ℕ)), ((0 : ℕ), (10 : ℕ)), ((1 : ℕ), (4 : ℕ)), ((1 : ℕ), (8 : ℕ)), ((2 : ℕ), (5 : ℕ)), ((2 : ℕ), (10 : ℕ)), ((3 : ℕ), (6 : ℕ)), ((3 : ℕ), (7 : ℕ)), ((4 : ℕ), (8 : ℕ)), ((4 : ℕ), (10 : ℕ)), ((5 : ℕ), (8 : ℕ)), ((5 : ℕ), (9 : ℕ)), ((6 : ℕ), (7 : ℕ)), ((6 : ℕ), (10 : ℕ)), ((7 : ℕ), (9 : ℕ)), ((8 : ℕ), (9 : ℕ))]; let x2 : SimpleGraph (Fin (11 : ℕ)) := PEqualNP.EdgeOwnership.edgeGraph (11 : ℕ) x1;
      ∀ (x3 : PEqualNP.CircuitLowerBounds.Circuit),
      x3.size ≤ (21 : ℕ) →
      PEqualNP.TopForm.IsLeastAO x2 x3 →
      PEqualNP.TopForm.TopForm x2 x3 →
      (2 : ℕ) ≤ (PEqualNP.TopForm.junk x2 x3).card →
      (PEqualNP.TopForm.Ustar x2 x3).card = (16 : ℕ) →
      (2 : ℕ) * (PEqualNP.TopForm.centreless x2 x3).card + (PEqualNP.TopForm.junk x2 x3).card + (PEqualNP.TopForm.orN x2 x3 \ PEqualNP.TopForm.lam x2 x3).card = (22 : ℕ) →
      False := by
  dsimp only
  intro x3 h1 h2 h3 h4 h5 h6
  by_cases h : x3.output < 26
  · exact a1 x3 h1 h2 h3 h4 h5 h6 h
  · exact a2 x3 h1 h2 h3 h4 h5 h6 (Nat.le_of_not_lt h)
