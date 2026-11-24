import Mathlib
import PEqualNP.Defs

namespace PEqualNP.Outside.L_meta_5077

/-- The lines through a point, as line indices. -/
def linesThrough (p : Fin 13) : Finset (Fin 13) :=
  Finset.univ.filter (fun l => p = l ∨ p = l + 1 ∨ p = l + 3 ∨ p = l + 9)

/-- The points on a line, as point indices. -/
def pointsThrough (l : Fin 13) : Finset (Fin 13) :=
  Finset.univ.filter (fun p => p = l ∨ p = l + 1 ∨ p = l + 3 ∨ p = l + 9)

lemma linesThrough_card (p : Fin 13) : (linesThrough p).card = 4 := by
  fin_cases p <;> decide

lemma pointsThrough_card (l : Fin 13) : (pointsThrough l).card = 4 := by
  fin_cases l <;> decide

lemma mem_iff (p l : Fin 13) : l ∈ linesThrough p ↔ p ∈ pointsThrough l := by
  simp [linesThrough, pointsThrough]

end PEqualNP.Outside.L_meta_5077

open PEqualNP.Outside.L_meta_5077

theorem PEqualNP.Outside.L_meta_5077 :
    ∀ (x1 : Finset (Fin ((13 : ℕ) + (13 : ℕ)))),
      (∀ (x2 x3 : Fin (13 : ℕ)),
        x2 = x3 ∨ x2 = x3 + (1 : Fin (13 : ℕ)) ∨ x2 = x3 + (3 : Fin (13 : ℕ)) ∨
          x2 = x3 + (9 : Fin (13 : ℕ)) →
        Fin.castAdd (13 : ℕ) x2 ∈ x1 ∨ Fin.natAdd (13 : ℕ) x3 ∈ x1) →
      (13 : ℕ) ≤ x1.card := by
  intro x1 h
  classical
  let P : Finset (Fin 13) := Finset.univ.filter (fun p => Fin.castAdd 13 p ∈ x1)
  let P' : Finset (Fin 13) := Finset.univ.filter (fun p => Fin.castAdd 13 p ∉ x1)
  let L : Finset (Fin 13) := Finset.univ.filter (fun l => Fin.natAdd 13 l ∈ x1)
  have hPP' : P.card + P'.card = 13 := by
    have h := Finset.card_filter_add_card_filter_not (s := (Finset.univ : Finset (Fin 13)))
      (p := fun p => Fin.castAdd 13 p ∈ x1)
    simpa [P, P', Finset.card_univ, Fintype.card_fin] using h
  have hsub : ∀ p ∈ P', linesThrough p ⊆ L := by
    intro p hp l hl
    simp only [P', Finset.mem_filter, Finset.mem_univ, true_and] at hp
    simp only [L, Finset.mem_filter, Finset.mem_univ, true_and]
    by_contra hc
    have hinc : p = l ∨ p = l + 1 ∨ p = l + 3 ∨ p = l + 9 := by
      simpa [linesThrough] using hl
    rcases h p l hinc with h1 | h1
    · exact hp h1
    · exact hc h1
  have key : P'.card ≤ L.card := by
    let I : Finset (Fin 13 × Fin 13) :=
      (P'.product L).filter (fun q => q.2 ∈ linesThrough q.1)
    have hI : I.card = 4 * P'.card := by
      rw [Finset.card_filter]
      change (∑ i ∈ P' ×ˢ L, if i.2 ∈ linesThrough i.1 then 1 else 0) = 4 * P'.card
      rw [Finset.sum_product]
      have hinner : ∀ p ∈ P', (∑ l ∈ L, if l ∈ linesThrough p then 1 else 0) = 4 := by
        intro p hp
        rw [← Finset.card_filter]
        have hfil : L.filter (fun l => l ∈ linesThrough p) = linesThrough p := by
          ext l
          simp only [Finset.mem_filter]
          constructor
          · exact fun hl => hl.2
          · intro hl
            exact ⟨hsub p hp hl, hl⟩
        rw [hfil, linesThrough_card]
      rw [Finset.sum_congr rfl hinner, Finset.sum_const, smul_eq_mul]
      ring
    have hIle : I.card ≤ 4 * L.card := by
      have hfib : ∀ l ∈ Finset.image (fun q : Fin 13 × Fin 13 => q.2) I,
          (I.filter (fun q => q.2 = l)).card ≤ 4 := by
        intro l _
        have hsub2 : I.filter (fun q => q.2 = l) ⊆
            (P'.filter (fun p => l ∈ linesThrough p)).image (fun p => (p, l)) := by
          intro q hq
          obtain ⟨hqI, hql⟩ := Finset.mem_filter.mp hq
          obtain ⟨hp, hinc⟩ := Finset.mem_filter.mp hqI
          obtain ⟨hpP', _⟩ := Finset.mem_product.mp hp
          exact Finset.mem_image.mpr ⟨q.1,
            Finset.mem_filter.mpr ⟨hpP', by rw [← hql]; exact hinc⟩, by ext <;> simp [hql]⟩
        have hcard : (P'.filter (fun p => l ∈ linesThrough p)).card ≤ 4 := by
          have hsub3 : P'.filter (fun p => l ∈ linesThrough p) ⊆ pointsThrough l := by
            intro p hp
            exact (mem_iff p l).mp (Finset.mem_filter.mp hp).2
          calc (P'.filter (fun p => l ∈ linesThrough p)).card
              ≤ (pointsThrough l).card := Finset.card_le_card hsub3
            _ = 4 := pointsThrough_card l
        calc (I.filter (fun q => q.2 = l)).card
            ≤ ((P'.filter (fun p => l ∈ linesThrough p)).image (fun p => (p, l))).card :=
              Finset.card_le_card hsub2
          _ = (P'.filter (fun p => l ∈ linesThrough p)).card := by
              rw [Finset.card_image_of_injective]
              intro a b hab
              simpa using hab
          _ ≤ 4 := hcard
      have himg : Finset.image (fun q : Fin 13 × Fin 13 => q.2) I ⊆ L := by
        intro l hl
        obtain ⟨q, hq, rfl⟩ := Finset.mem_image.mp hl
        obtain ⟨hp, _⟩ := Finset.mem_filter.mp hq
        exact (Finset.mem_product.mp hp).2
      calc I.card ≤ 4 * (Finset.image (fun q : Fin 13 × Fin 13 => q.2) I).card :=
            Finset.card_le_mul_card_image _ 4 hfib
        _ ≤ 4 * L.card := Nat.mul_le_mul_left 4 (Finset.card_le_card himg)
    omega
  have hx1 : x1.card = P.card + L.card := by
    have hdisj : Disjoint (P.image (Fin.castAdd 13)) (L.image (Fin.natAdd 13)) := by
      rw [Finset.disjoint_left]
      intro v hv hw
      obtain ⟨p, _, rfl⟩ := Finset.mem_image.mp hv
      obtain ⟨l, _, hl⟩ := Finset.mem_image.mp hw
      have hval : (Fin.castAdd 13 p).val = (Fin.natAdd 13 l).val := by rw [hl]
      simp [Fin.castAdd, Fin.natAdd] at hval
      omega
    have hunion : x1 = P.image (Fin.castAdd 13) ∪ L.image (Fin.natAdd 13) := by
      ext v
      constructor
      · intro hv
        by_cases hlt : v.val < 13
        · exact Finset.mem_union.mpr (Or.inl (by
            refine Finset.mem_image.mpr ⟨⟨v.val, hlt⟩, ?_, ?_⟩
            · simp only [P, Finset.mem_filter, Finset.mem_univ, true_and]
              have hv' : Fin.castAdd 13 (⟨v.val, hlt⟩ : Fin 13) = v := by ext; simp [Fin.castAdd]
              rw [hv']; exact hv
            · ext; simp [Fin.castAdd]))
        · exact Finset.mem_union.mpr (Or.inr (by
            have hge : 13 ≤ v.val := by omega
            refine Finset.mem_image.mpr ⟨⟨v.val - 13, by omega⟩, ?_, ?_⟩
            · simp only [L, Finset.mem_filter, Finset.mem_univ, true_and]
              have hv' : Fin.natAdd 13 (⟨v.val - 13, by omega⟩ : Fin 13) = v := by
                ext; simp [Fin.natAdd]; omega
              rw [hv']; exact hv
            · ext; simp [Fin.natAdd]; omega))
      · intro hv
        rcases Finset.mem_union.mp hv with h' | h'
        · obtain ⟨p, hp, rfl⟩ := Finset.mem_image.mp h'
          simpa only [P, Finset.mem_filter, Finset.mem_univ, true_and] using hp
        · obtain ⟨l, hl, rfl⟩ := Finset.mem_image.mp h'
          simpa only [L, Finset.mem_filter, Finset.mem_univ, true_and] using hl
    rw [hunion, Finset.card_union_of_disjoint hdisj,
      Finset.card_image_of_injective _ (fun a b hab => by simpa [Fin.castAdd] using hab),
      Finset.card_image_of_injective _ (fun a b hab => Fin.ext (by
        have := congrArg Fin.val hab
        simp [Fin.natAdd] at this
        omega))]
  omega
