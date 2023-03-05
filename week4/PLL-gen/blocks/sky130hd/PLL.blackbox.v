(* blackbox *) module VCO(
  output Clk_Out,
  input VCtrl
);
endmodule
(* keep_hierarchy *)
(* blackbox *) module CP(
  input Up,
  input Down,
  output Out
);
parameter dont_touch = "on";
endmodule
