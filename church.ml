(**
	Church numerals

	@author barthelemy delemotte
*)

type 'a successor = 'a -> 'a
type 'a t = 'a successor -> 'a -> 'a

(* infix op for function composition *)
let (-|) f g = fun x -> f (g x)

(* small numbers *)
let zero = fun _ z -> z
let one = fun s -> s
let two = fun s -> s -| s
let three = fun s -> s -| s -| s

(* functions *)
let incr n = fun s -> s -| n s 
let add m n = fun s -> m s -| n s
let mul m n = fun s -> m (n s)
let exp m n = fun s -> n m s

let pred n =
  let value v h = h v
  and extract k = k (fun x -> x) in
  let inc g = value (g incr)
  and const = fun _ -> zero in
  let v = n inc const in
  extract v

let sub m n = (n pred) m 
