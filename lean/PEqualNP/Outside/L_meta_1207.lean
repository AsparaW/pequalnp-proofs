import PEqualNP.Defs

/-!
# L-meta-1207

Seven products in eight variables, in ten monotone gates of fan-in two.

    (x0 && x1) || (x0 && x2)   =  x0 && (x1 || x2)
    (x1 && x3) || (x3 && x5)   =  x3 && (x1 || x5)
    (x2 && x4) || (x4 && x5)   =  x4 && (x2 || x5)
    (x6 && x7)

The three pairs above share a variable, so each costs two gates instead of three; the last costs
one.  Seven gates form the four pieces, and three more join them: ten in all.
-/

namespace PEqualNP.Outside.L_meta_1207

open PEqualNP.CircuitLowerBounds PEqualNP.MetaComplexity

/-- Gate codes: `true` is OR, `false` is AND, with the two input wires. -/
def codes : List (Bool × Nat × Nat) :=
  [(true, 1, 2),    -- wire 8
   (false, 0, 8),   -- wire 9
   (true, 1, 5),    -- wire 10
   (false, 3, 10),  -- wire 11
   (true, 2, 5),    -- wire 12
   (false, 4, 12),  -- wire 13
   (false, 6, 7),   -- wire 14
   (true, 9, 11),   -- wire 15
   (true, 15, 13),  -- wire 16
   (true, 16, 14)]  -- wire 17

/-- The gate of a code. -/
def asGate (t : Bool × Nat × Nat) : Gate :=
  ⟨if t.1 then .or else .and, [t.2.1, t.2.2]⟩

/-- The circuit: eight inputs, the ten gates above, the last wire as output. -/
def circuit : Circuit := ⟨codes.map asGate, 17⟩

theorem circuit_size : circuit.size ≤ 10 := by
  decide

theorem circuit_monotone : Monotone2 circuit := by
  intro g hg
  obtain ⟨⟨b, i, j⟩, _, rfl⟩ := List.mem_map.mp (show g ∈ codes.map asGate from hg)
  constructor
  · cases b <;> simp [asGate]
  · simp [asGate]

theorem circuit_eval : ∀ x : Fin 8 → Bool,
    circuit.eval (List.ofFn x) =
      ((x 0 && x 1) || (x 0 && x 2) || (x 1 && x 3) || (x 2 && x 4) ||
        (x 3 && x 5) || (x 4 && x 5) || (x 6 && x 7)) := by
  decide +kernel

end PEqualNP.Outside.L_meta_1207

open PEqualNP.Outside.L_meta_1207 in
theorem PEqualNP.Outside.L_meta_1207 :
    ∃ C : PEqualNP.CircuitLowerBounds.Circuit, PEqualNP.MetaComplexity.Monotone2 C ∧
      C.size ≤ 10 ∧ ∀ x : Fin 8 → Bool,
        C.eval (List.ofFn x) = (fun x : Fin 8 → Bool => (x 0 && x 1) || (x 0 && x 2) ||
          (x 1 && x 3) || (x 2 && x 4) || (x 3 && x 5) || (x 4 && x 5) || (x 6 && x 7)) x :=
  ⟨circuit, circuit_monotone, circuit_size, circuit_eval⟩
