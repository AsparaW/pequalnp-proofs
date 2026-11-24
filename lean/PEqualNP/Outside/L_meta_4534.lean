import Mathlib
import PEqualNP.Defs

namespace PEqualNP.Outside.L_meta_4534

lemma aux (x1 x2 x3 x4 : List ℕ)
    (h1 : ∀ (i : Fin x2.length), ∃ u ∈ x1 ++ List.take (↑i) x2, ∃ v ∈ x1 ++ List.take (↑i) x2, x2.get i = u &&& v ∨ x2.get i = u ||| v)
    (h2 : ∀ y ∈ x3, y ∈ x1 ++ x2)
    (h3 : ∀ (i : Fin x4.length), ∃ u ∈ x3 ++ List.take (↑i) x4, ∃ v ∈ x3 ++ List.take (↑i) x4, x4.get i = u &&& v ∨ x4.get i = u ||| v)
    (i : Fin (x2 ++ x4).length) :
    ∃ u ∈ x1 ++ List.take (↑i) (x2 ++ x4), ∃ v ∈ x1 ++ List.take (↑i) (x2 ++ x4), (x2 ++ x4).get i = u &&& v ∨ (x2 ++ x4).get i = u ||| v := by
  by_cases hlt : (↑i : ℕ) < x2.length
  · obtain ⟨u, hu, v, hv, huv⟩ := h1 ⟨↑i, hlt⟩
    have htake : List.take (↑i) (x2 ++ x4) = List.take (↑i) x2 :=
      List.take_append_of_le_length (le_of_lt hlt)
    have hget : (x2 ++ x4).get i = x2.get ⟨↑i, hlt⟩ := List.getElem_append_left hlt
    exact ⟨u, by rw [htake]; exact hu, v, by rw [htake]; exact hv, by rw [hget]; exact huv⟩
  · have hge : x2.length ≤ (↑i : ℕ) := by omega
    have hlt4 : (↑i : ℕ) - x2.length < x4.length := by
      have := i.isLt
      simp only [List.length_append] at this
      omega
    obtain ⟨u, hu, v, hv, huv⟩ := h3 ⟨(↑i : ℕ) - x2.length, hlt4⟩
    have htake : List.take (↑i) (x2 ++ x4) = x2 ++ List.take ((↑i : ℕ) - x2.length) x4 := by
      rw [List.take_append, List.take_of_length_le hge]
    have hget : (x2 ++ x4).get i = x4.get ⟨(↑i : ℕ) - x2.length, hlt4⟩ :=
      List.getElem_append_right hge
    have hsub : ∀ y ∈ x3 ++ List.take ((↑i : ℕ) - x2.length) x4,
        y ∈ x1 ++ List.take (↑i) (x2 ++ x4) := by
      intro y hy
      rw [htake]
      rcases List.mem_append.mp hy with h | h
      · have hy12 : y ∈ x1 ++ x2 := h2 y h
        rcases List.mem_append.mp hy12 with h' | h'
        · exact List.mem_append.mpr (Or.inl h')
        · exact List.mem_append.mpr (Or.inr (List.mem_append.mpr (Or.inl h')))
      · exact List.mem_append.mpr (Or.inr (List.mem_append.mpr (Or.inr h)))
    exact ⟨u, hsub u hu, v, hsub v hv, by rw [hget]; exact huv⟩

end PEqualNP.Outside.L_meta_4534

theorem PEqualNP.Outside.L_meta_4534 : ∀ (x1 x2 x3 x4 : List ℕ),   have x5 : List ℕ → List ℕ → Prop := fun (x5 x6 : List ℕ) => ∀ (x7 : Fin x6.length), ∃ x8 ∈ x5 ++ List.take (↑x7) x6, ∃ x9 ∈ x5 ++ List.take (↑x7) x6, x6.get x7 = x8 &&& x9 ∨ x6.get x7 = x8 ||| x9;   x5 x1 x2 → (∀ x7 ∈ x3, x7 ∈ x1 ++ x2) → x5 x3 x4 → x5 x1 (x2 ++ x4) := by
  intro x1 x2 x3 x4 x5 h1 h2 h3 i
  exact PEqualNP.Outside.L_meta_4534.aux x1 x2 x3 x4 h1 h2 h3 i
