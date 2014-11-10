(**
	Church numerals

	@author barthelemy delemotte
*)
 
type 'a successor = 'a -> 'a
type 'a t = 'a successor -> 'a -> 'a

val zero : 'a t 
val one : 'a t
val two : 'a t
val three : 'a t

val incr : 'a t -> 'a t

val add : 'a t -> 'a t -> 'a t

val mul : 'a t -> 'a t -> 'a t

val exp : 'a -> ('a -> 'b -> 'c) -> 'b -> 'c

(* what the fuck with type inference ? *)
val pred :
  (((('a t -> 'a t)
    -> 'd t )
      -> ('d t -> 'e t) -> 'e t )
        -> ('f -> 'g -> 'h t -> 'h t) -> ('i t -> 'i t) -> 'j t)
      -> 'j t

val sub : 'a ->
 (((((((('b -> 'c) -> 'd -> 'b) -> ('b -> 'c) -> 'd -> 'c) -> 'e) ->
     ('e -> 'f) -> 'f) ->
    ('g -> 'h -> 'i -> 'i) -> ('j -> 'j) -> 'k) ->
   'k) ->
  'a -> 'l) ->
 'l