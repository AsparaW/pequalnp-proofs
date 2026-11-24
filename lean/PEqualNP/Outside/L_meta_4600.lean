import Mathlib
import PEqualNP.Defs

namespace PEqualNP.Outside.L_meta_4600

lemma getD_map_toNat (l : List (BitVec 59)) (n : ℕ) :
    (List.map BitVec.toNat l).getD n 0 = (l.getD n 0).toNat := by
  rw [List.getD_eq_getElem?_getD, List.getElem?_map, List.getD_eq_getElem?_getD]
  cases l[n]? with
  | none => simp [BitVec.toNat_zero]
  | some v => rfl
lemma getD_map_toNat_opt (l : List (BitVec 59)) (n : ℕ) :
    (Option.map BitVec.toNat l[n]?).getD 0 = (l[n]?.getD (0 : BitVec 59)).toNat := by
  cases l[n]? with
  | none => simp [BitVec.toNat_zero]
  | some v => rfl
lemma step (x1 : List (BitVec 59) → Bool × Fin 40 × Fin 40 → List (BitVec 59))
    (x2 : List ℕ → Bool × ℕ × ℕ → List ℕ)
    (h1 : ∀ (l : List (BitVec 59)) (b : Bool) (i j : Fin 40),
      x1 l (b, i, j) = l ++ [if b = Bool.true then l.getD (↑i) (0 : BitVec 59) ||| l.getD (↑j) (0 : BitVec 59) else l.getD (↑i) (0 : BitVec 59) &&& l.getD (↑j) (0 : BitVec 59)])
    (h2 : ∀ (l : List ℕ) (b : Bool) (i j : ℕ),
      x2 l (b, i, j) = l ++ [if b = Bool.true then l.getD i (0 : ℕ) ||| l.getD j (0 : ℕ) else l.getD i (0 : ℕ) &&& l.getD j (0 : ℕ)])
    (acc : List (BitVec 59)) (b : Bool) (i j : Fin 40) :
    x2 (List.map BitVec.toNat acc) (b, ↑i, ↑j) = List.map BitVec.toNat (x1 acc (b, i, j)) := by
  rw [h1, h2, List.map_append, List.map_cons, List.map_nil, getD_map_toNat]
  cases b <;> simp [BitVec.toNat_or, BitVec.toNat_and, getD_map_toNat_opt]

lemma aux (x1 : List (BitVec 59) → Bool × Fin 40 × Fin 40 → List (BitVec 59))
    (x2 : List ℕ → Bool × ℕ × ℕ → List ℕ)
    (h1 : ∀ (l : List (BitVec 59)) (b : Bool) (i j : Fin 40),
      x1 l (b, i, j) = l ++ [if b = Bool.true then l.getD (↑i) (0 : BitVec 59) ||| l.getD (↑j) (0 : BitVec 59) else l.getD (↑i) (0 : BitVec 59) &&& l.getD (↑j) (0 : BitVec 59)])
    (h2 : ∀ (l : List ℕ) (b : Bool) (i j : ℕ),
      x2 l (b, i, j) = l ++ [if b = Bool.true then l.getD i (0 : ℕ) ||| l.getD j (0 : ℕ) else l.getD i (0 : ℕ) &&& l.getD j (0 : ℕ)])
    (x3 : List (BitVec 59)) (x4 : List (Bool × Fin 40 × Fin 40)) :
    List.foldl x2 (List.map BitVec.toNat x3) (List.map (fun x5 => (x5.1, ↑x5.2.1, ↑x5.2.2)) x4)
      = List.map BitVec.toNat (List.foldl x1 x3 x4) := by
  induction x4 generalizing x3 with
  | nil => simp
  | cons y ys ih =>
    simp only [List.map_cons, List.foldl_cons]
    rw [← ih (x1 x3 y), step x1 x2 h1 h2]

end PEqualNP.Outside.L_meta_4600

theorem PEqualNP.Outside.L_meta_4600 : have x1 : List (BitVec (59 : ℕ)) → Bool × Fin (40 : ℕ) × Fin (40 : ℕ) → List (BitVec (59 : ℕ)) := fun (x1 : List (BitVec (59 : ℕ))) (x2 : Bool × Fin (40 : ℕ) × Fin (40 : ℕ)) => x1 ++ [if x2.1 = Bool.true then x1.getD ↑x2.2.1 (0 : BitVec (59 : ℕ)) ||| x1.getD ↑x2.2.2 (0 : BitVec (59 : ℕ)) else x1.getD ↑x2.2.1 (0 : BitVec (59 : ℕ)) &&& x1.getD ↑x2.2.2 (0 : BitVec (59 : ℕ))]; have x2 : List ℕ → Bool × ℕ × ℕ → List ℕ := fun (x2 : List ℕ) (x3 : Bool × ℕ × ℕ) => x2 ++ [if x3.1 = Bool.true then x2.getD x3.2.1 (0 : ℕ) ||| x2.getD x3.2.2 (0 : ℕ) else x2.getD x3.2.1 (0 : ℕ) &&& x2.getD x3.2.2 (0 : ℕ)]; ∀ (x3 : List (BitVec (59 : ℕ))) (x4 : List (Bool × Fin (40 : ℕ) × Fin (40 : ℕ))), List.foldl x2 (List.map BitVec.toNat x3) (List.map (fun (x5 : Bool × Fin (40 : ℕ) × Fin (40 : ℕ)) => (x5.1, ↑x5.2.1, ↑x5.2.2)) x4) = List.map BitVec.toNat (List.foldl x1 x3 x4) := by
  intro x1 x2 x3 x4
  exact PEqualNP.Outside.L_meta_4600.aux x1 x2 (fun l b i j => rfl) (fun l b i j => rfl) x3 x4
