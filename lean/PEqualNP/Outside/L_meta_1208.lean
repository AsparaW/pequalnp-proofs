import PEqualNP.Defs

/-!
L-meta-1208: the edge function of the graph on `Fin 8` with edges
`01 02 13 24 35 46 57` has a monotone circuit with ten gates.

Inputs are wires 0..7 and gate j drives wire 8 + j.  Pairing the edges that share a
vertex gives ten gates:

  x1 ∧ (x0 ∨ x3)   covers 01 and 13
  x2 ∧ (x0 ∨ x4)   covers 02 and 24
  x5 ∧ (x3 ∨ x7)   covers 35 and 57
  x4 ∧ x6          covers 46

and one OR tree over the four results.
-/

open PEqualNP.CircuitLowerBounds PEqualNP.MetaComplexity

def w1208 : Circuit :=
  ⟨[
    ⟨.or,  [0, 3]⟩,
    ⟨.and, [1, 8]⟩,
    ⟨.or,  [0, 4]⟩,
    ⟨.and, [2, 10]⟩,
    ⟨.or,  [3, 7]⟩,
    ⟨.and, [5, 12]⟩,
    ⟨.and, [4, 6]⟩,
    ⟨.or,  [9, 11]⟩,
    ⟨.or,  [13, 14]⟩,
    ⟨.or,  [15, 16]⟩
  ], 17⟩

def w1208AcceptedOp (g : Gate) : Bool :=
  match g.op with
  | .and | .or => true
  | _ => false

theorem w1208AcceptedOpSound (g : Gate) (ok : w1208AcceptedOp g = true) :
    g.op = .and ∨ g.op = .or := by
  cases h : g.op <;> simp [w1208AcceptedOp, h] at ok ⊢

theorem w1208_monotone : Monotone2 w1208 := by
  have legal : w1208.gates.all (fun g => w1208AcceptedOp g && decide (g.inputs.length ≤ 2)) = true := by
    decide +kernel
  intro g hg
  have passed := List.all_eq_true.mp legal g hg
  simp only [Bool.and_eq_true, decide_eq_true_eq] at passed
  refine ⟨?_, passed.2⟩
  rcases w1208AcceptedOpSound g passed.1 with h | h <;> simp [h]

theorem w1208_evals :
    ∀ x : Fin 8 → Bool, w1208.eval (List.ofFn x)
      = ((x 0 && x 1) || (x 0 && x 2) || (x 1 && x 3) || (x 2 && x 4)
        || (x 3 && x 5) || (x 4 && x 6) || (x 5 && x 7)) := by
  decide +kernel

theorem PEqualNP.Outside.L_meta_1208 :
    ∃ C : Circuit,
      Monotone2 C ∧ C.size ≤ 10 ∧
      ∀ x : Fin 8 → Bool, C.eval (List.ofFn x)
        = (fun x : Fin 8 → Bool => (x 0 && x 1) || (x 0 && x 2) || (x 1 && x 3)
            || (x 2 && x 4) || (x 3 && x 5) || (x 4 && x 6) || (x 5 && x 7)) x :=
  ⟨w1208, w1208_monotone, by decide +kernel, w1208_evals⟩
