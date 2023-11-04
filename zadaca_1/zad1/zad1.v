Require Import Bool.

Notation " ! b " := (negb b) (at level 0).

(*1. a) *)
Goal forall (x y : bool),
  (x && !y) || (!x && !y) || (!x && y) = !x || !y.
Proof.
intros. destruct x,y; simpl; reflexivity.
Abort.

Goal forall (x y z: bool),
  !(!x && y && z ) && !( x && y && !z ) && ( x && !y && z ) = x && !y && z.
Proof.
intros. destruct x,y,z; simpl; reflexivity.
Abort.