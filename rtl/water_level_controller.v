module water_level_controller (
  input wire E, F, H, L,
  output wire motor
);

  assign motor = E | F | H;  // Motor ON if any of these are high

endmodule
