module type UNICODE = Signatures.UNICODE
module type RENDER = Signatures.RENDER
module type T = Signatures.RMATH

module Make
  (Uni : UNICODE) 
  (Render : RENDER with module Uni = Uni) : 
  T with module Uni = Uni =
struct

  type t = { rbox: Render.t; baseline: int }
  
  module Uni = Uni

  let hline width =
    if width < 0 then
      raise(Invalid_argument "Rmath.Make()().rbm_hline")
    else
      { rbox = Render.make width 1 (Uni.wchar_of_int 0x2500);
        baseline = 0 }

  let vline height =
    if height < 0 then
      raise(Invalid_argument "Rmath.Make()().rbm_vline")
    else
      { rbox = Render.make 1 height (Uni.wchar_of_int 0x2502);
        baseline = (height-1)/2 }

  let width box = Render.width box.rbox
  let height box = Render.height box.rbox

  let si str = 
    { rbox = Render.si str;
      baseline = 0 }

  let empty width height = 
    { rbox = Render.empty width height;
      baseline = 0 }

  let join_h boxes =
    let 
      maxbaseline = ListEx.max_map (fun box -> box.baseline) boxes and
      maxheight = ListEx.max_map (fun box -> height box) boxes
    in let
      boxes = 
        ListEx.map 
          ( fun box -> 
            Render.grow_custom 
              'Q'
              box.rbox
              (width box) 
              (height box + maxbaseline - box.baseline)
          )
          boxes
    in
      { rbox = Render.join_h 'Z' boxes; 
        baseline = maxbaseline; }

  let join_top box top =
    { rbox = Render.join_v 'X' [top.rbox; box.rbox];
      baseline = (height top) + box.baseline }

  let join_bot box bot =
    { rbox = Render.join_v 'X' [box.rbox; bot.rbox];
      baseline = box.baseline }

  let join_topbot box top bot =
    { rbox = Render.join_v 'X' [top.rbox; box.rbox; bot.rbox];
      baseline = (height top) + box.baseline }

  let join_NE box top =
    { rbox = Render.crossjoin_tr box.rbox top.rbox;
      baseline = (height top) + box.baseline }

  let join_SE box bot =
    { rbox = Render.crossjoin_br box.rbox bot.rbox;
      baseline = box.baseline }

  let join_NESE box top bot =
    let w = max (width top) (width bot) in
    let 
      rtop = Render.grow_custom 'E' top.rbox w (height top) and
      rbot = Render.grow_custom 'E' bot.rbox w (height bot)
    in
    let rbox = 
      Render.grow_custom 'E' box.rbox (width box + w) (height box)
    in
      { rbox = Render.join_v 'Q' [rtop; rbox; rbot];
        baseline = (height top) + box.baseline }

  let render_str box =
    Render.render_str box.rbox

  let frac box1 box2 =
    let width = max (width box1) (width box2) in
    let separator = hline (width+2) in
      { rbox = Render.join_v 'S' [box1.rbox; separator.rbox; box2.rbox];
        baseline = height box1 }

  let c n = Render.make 1 1 (Uni.wchar_of_int n)

  let sqrt box upbox =
    let 
      vline = vline (height box) and
      hline = hline (width box) and
      joint = c 0x250C and
      hook = c 0x2572
    in let 
      rbox = Render.join4 joint vline.rbox hline.rbox box.rbox and
      hook = Render.join_v 'Q' [upbox.rbox; hook]
    in
      { rbox = Render.join_h 'Q' [hook; rbox];
        baseline = box.baseline + 1 }

  type bracket_t = 
    Bracket_round | 
    Bracket_square | 
    Bracket_brace | 
    Bracket_angle
  type delimiter_t = 
    Delim_bracket of bool * bracket_t | 
    Delim_floor of bool | 
    Delim_ceil of bool |
    Delim_vert |
    Delim_doublevert

  let largedelimiter sbox kind =
    let n = height sbox in
    let n = 
      ( if n<=1 then 
          raise(Invalid_argument "Rmath.Make()().delimiter")
        else
          max 3 n
      ) in 
    let p = (n-3)/2 in
    let q = (n-3)-p in
    let (tu, mu, bu) =
      match kind with
        Delim_bracket (true,  Bracket_round)  -> (0x256D, 0x2502, 0x2570) |
        Delim_bracket (false, Bracket_round)  -> (0x256E, 0x2502, 0x256F) |
        Delim_bracket (true,  Bracket_square) -> (0x2308, 0x2502, 0x230A) |
        Delim_bracket (false, Bracket_square) -> (0x2309, 0x2502, 0x230B) |
        Delim_bracket (true,  Bracket_brace)  -> (0x256D, 0x007B, 0x2570) |
        Delim_bracket (false, Bracket_brace)  -> (0x256E, 0x007D, 0x256F) |
        Delim_bracket (true,  Bracket_angle)  -> (0x2571, 0x2329, 0x2572) |
        Delim_bracket (false, Bracket_angle)  -> (0x2572, 0x232A, 0x2571) |
        Delim_floor true  -> (0x2502, 0x2502, 0x2514) |
        Delim_floor false -> (0x2502, 0x2502, 0x2518) |
        Delim_ceil  true  -> (0x250C, 0x2502, 0x2502) |
        Delim_ceil  false -> (0x2510, 0x2502, 0x2502) |
        Delim_vert        -> (0x2502, 0x2502, 0x2502) |
        Delim_doublevert  -> (0x2551, 0x2551, 0x2551) 
    in
      { rbox = Render.join_v 'Q' [c tu; (vline p).rbox; c mu; (vline q).rbox; c bu];
        baseline = sbox.baseline }

(*  
 *  let sum () =
 *    let 
 *      s1 = Render.make 3 1 (Uni.wchar_of_int 0x2550) and
 *      s2 = c 0x2572 and
 *      s3 = Render.si (Uni.from_string " >") and
 *      s4 = c 0x2571
 *    in
 *      { rbox = Render.join_v 'E' [s1; s2; s3; s4; s1];
 *        baseline = 2 } 
 *)

  let sum () =
    let 
      s1 = Render.make 3 1 (Uni.wchar_of_int 0x2550) and
      s2 = c 0x003e
    in
      { rbox = Render.join_v 'E' [s1; s2; s1];
        baseline = 1 }

  let prod () = 
    let
      f1 = c 0x2550 and f2 = c 0x2564 and
      g1 = c 0x2502 and g2 = c 0x0020
    in let
      p1 = Render.join_h 'Q' [f2; f1; f2] and
      p2 = Render.join_h 'Q' [g1; g2; g1]
    in
      { rbox = Render.join_v 'Q' [p1; p2; p2];
        baseline = 1 }
      
  let coprod () = 
    let
      f1 = c 0x2550 and f2 = c 0x2567 and
      g1 = c 0x2502 and g2 = c 0x0020
    in let
      p1 = Render.join_h 'Q' [f2; f1; f2] and
      p2 = Render.join_h 'Q' [g1; g2; g1]
    in
      { rbox = Render.join_v 'Q' [p2; p2; p1];
        baseline = 1 }
 
  let integral () =
    { rbox = Render.join_v 'Q' [c 0x256d; c 0x2502; c 0x256f];
      baseline = 1 }

  let ointegral () =
    { rbox = Render.join_v 'Q' [c 0x256d; c 0x25ef; c 0x256f];
      baseline = 1 }

end

(* vim: set tw=96 et ts=2 sw=2: *)
