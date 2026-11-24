import Mathlib.Data.Finset.Basic
import PEqualNP.Defs

open PEqualNP.CircuitLowerBounds PEqualNP.MetaComplexity

-- The two slices are the same eight-input graph in different coordinates.
-- A nonconstant column is the complete truth table of one wire on the slice.
-- Constants and duplicates can be discarded even in a shared circuit.
-- The projection child combines that compression with the checked eight-input
-- bound L-meta-1007; no bound on the remaining two-slice search is assumed here.
theorem PEqualNP.Outside.R_meta_3553_427
    (columns : ∀ (D : Circuit) (A : List ℕ), FanInTwo D → (∀ j : Fin 8, j.val ∈ A) →
      (∀ y : Fin 8 → Bool, D.eval (A.map fun k => (List.ofFn y).getD k false) = (fun y : Fin 8 → Bool => y 0 && y 1 || y 1 && y 2 || y 2 && y 3 || y 0 && y 4 || y 1 && y 5 || y 2 && y 6 || y 3 && y 7 || y 4 && y 6 || y 5 && y 7 || y 7 && y 4) y) →
      21 ≤ ((Finset.univ.image (fun i : Fin (A.length+D.size) => fun y : Fin 8 → Bool => (D.wires (A.map fun k => (List.ofFn y).getD k false)).getD i.val false)).filter (fun v => ∃ y z, v y ≠ v z)).card)
    (rigid : ∀ D : Circuit, FanInTwo D → D.size ≤ 14 →
      let read := fun (j : Fin D.gates.length) (i : ℕ) =>
        let g := D.gates.get j
        g.inputs[0]? = some i ∨ g.op ≠ .not ∧ i ∈ g.inputs
      (∃ a b, a < b ∧ read a 6 ∧ read b 4 ∧ (∀ j, read j 6 → j = a) ∧ (∀ j, read j 4 → j = b)) →
      (∀ A ∈ ([[0,1,2,3,8,4,5,6,7,5],[1,0,4,7,5,2,8,6,3,5]] : List (List ℕ)), 21 ≤ ((Finset.univ.image (fun i : Fin (A.length+D.size) => fun y : Fin 8 → Bool => (D.wires (A.map fun k => (List.ofFn y).getD k false)).getD i.val false)).filter (fun v => ∃ y z, v y ≠ v z)).card) →
      ∃ x : Fin 9 → Bool, D.eval (List.ofFn x ++ [x 4 || x 6]) ≠ (fun x : Fin 9 → Bool => ([1,11,21,31,36,5,15,25,35,52,62,77] : List ℕ).any (fun e => x (Fin.ofNat 9 (e / 9)) && x (Fin.ofNat 9 (e % 9)))) x) :
    ∀ (x1 : List PEqualNP.CircuitLowerBounds.Gate) (x2 : ℕ),   PEqualNP.MetaComplexity.FanInTwo { gates := x1, output := x2 : PEqualNP.CircuitLowerBounds.Circuit } →     (∀ (x4 : Fin (9 : ℕ) → Bool), { gates := x1, output := x2 : PEqualNP.CircuitLowerBounds.Circuit }.eval (List.ofFn x4 ++ [x4 (4 : Fin (9 : ℕ)) || x4 (6 : Fin (9 : ℕ))]) = (fun (x5 : Fin (9 : ℕ) → Bool) => [(1 : ℕ), (11 : ℕ), (21 : ℕ), (31 : ℕ), (36 : ℕ), (5 : ℕ), (15 : ℕ), (25 : ℕ), (35 : ℕ), (52 : ℕ), (62 : ℕ), (77 : ℕ)].any fun (x6 : ℕ) => x5 (Fin.ofNat (9 : ℕ) (x6 / (9 : ℕ))) && x5 (Fin.ofNat (9 : ℕ) (x6 % (9 : ℕ)))) x4) →       (∃ (x5 : Fin x1.length) (x6 : Fin x1.length),           x5 < x6 ∧             (have x7 : PEqualNP.CircuitLowerBounds.Gate := x1.get x5;               x7.inputs[(0 : ℕ)]? = Option.some (6 : ℕ) ∨ x7.op ≠ PEqualNP.CircuitLowerBounds.GateOp.not ∧ (6 : ℕ) ∈ x7.inputs) ∧               (have x7 : PEqualNP.CircuitLowerBounds.Gate := x1.get x6;                 x7.inputs[(0 : ℕ)]? = Option.some (4 : ℕ) ∨ x7.op ≠ PEqualNP.CircuitLowerBounds.GateOp.not ∧ (4 : ℕ) ∈ x7.inputs) ∧                 (∀ (x7 : Fin x1.length),                     (have x8 : PEqualNP.CircuitLowerBounds.Gate := x1.get x7;                       x8.inputs[(0 : ℕ)]? = Option.some (6 : ℕ) ∨ x8.op ≠ PEqualNP.CircuitLowerBounds.GateOp.not ∧ (6 : ℕ) ∈ x8.inputs) →                       x7 = x5) ∧                   ∀ (x7 : Fin x1.length),                     (have x8 : PEqualNP.CircuitLowerBounds.Gate := x1.get x7;                       x8.inputs[(0 : ℕ)]? = Option.some (4 : ℕ) ∨ x8.op ≠ PEqualNP.CircuitLowerBounds.GateOp.not ∧ (4 : ℕ) ∈ x8.inputs) →                       x7 = x6) →         (15 : ℕ) ≤ x1.length := by
  classical
  intro gates out hf computes order
  let D : Circuit := ⟨gates,out⟩
  by_contra! h
  have tooSmall : D.size ≤ 14 := by change gates.length ≤ 14;omega
  apply (rigid D hf tooSmall order ?_).elim
  · intro x bad; exact bad (computes x)
  · intro A hA
    simp only [List.mem_cons,List.not_mem_nil,or_false] at hA
    rcases hA with rfl|rfl
    · apply columns D _ hf (by decide +kernel)
      intro y
      let z : (Fin 8 → Bool) → Fin 9 → Bool := fun y => ![y 0,y 1,y 2,y 3,false,y 4,y 5,y 6,y 7]
      have m : (fun y : Fin 8 → Bool => ([0,1,2,3,8,4,5,6,7,5] : List ℕ).map (fun k => (List.ofFn y).getD k false)) = (fun y => List.ofFn (z y) ++ [z y 4 || z y 6]) := by decide +kernel
      have e : (fun y => (fun x : Fin 9 → Bool => ([1,11,21,31,36,5,15,25,35,52,62,77] : List ℕ).any (fun e => x (Fin.ofNat 9 (e / 9)) && x (Fin.ofNat 9 (e % 9)))) (z y)) = (fun y : Fin 8 → Bool => y 0 && y 1 || y 1 && y 2 || y 2 && y 3 || y 0 && y 4 || y 1 && y 5 || y 2 && y 6 || y 3 && y 7 || y 4 && y 6 || y 5 && y 7 || y 7 && y 4) := by decide +kernel
      change D.eval ((fun y : Fin 8 → Bool => ([0,1,2,3,8,4,5,6,7,5] : List ℕ).map (fun k => (List.ofFn y).getD k false)) y) = _
      rw [m];exact (computes (z y)).trans (congrFun e y)
    · apply columns D _ hf (by decide +kernel)
      intro y
      let z : (Fin 8 → Bool) → Fin 9 → Bool := fun y => ![y 1,y 0,y 4,y 7,y 5,y 2,false,y 6,y 3]
      have m : (fun y : Fin 8 → Bool => ([1,0,4,7,5,2,8,6,3,5] : List ℕ).map (fun k => (List.ofFn y).getD k false)) = (fun y => List.ofFn (z y) ++ [z y 4 || z y 6]) := by decide +kernel
      have e : (fun y => (fun x : Fin 9 → Bool => ([1,11,21,31,36,5,15,25,35,52,62,77] : List ℕ).any (fun e => x (Fin.ofNat 9 (e / 9)) && x (Fin.ofNat 9 (e % 9)))) (z y)) = (fun y : Fin 8 → Bool => y 0 && y 1 || y 1 && y 2 || y 2 && y 3 || y 0 && y 4 || y 1 && y 5 || y 2 && y 6 || y 3 && y 7 || y 4 && y 6 || y 5 && y 7 || y 7 && y 4) := by decide +kernel
      change D.eval ((fun y : Fin 8 → Bool => ([1,0,4,7,5,2,8,6,3,5] : List ℕ).map (fun k => (List.ofFn y).getD k false)) y) = _
      rw [m];exact (computes (z y)).trans (congrFun e y)
