task show_status;
    $display("Time: %0t | E=%b F=%b H=%b L=%b -> Motor=%b", $time, E, F, H, L, motor);
  endtask

  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0, tb_water_level_controller);

    // Test case: Empty
    {E, F, H, L} = 4'b1000; #10; show_status();
    
    // Test case: Low
    {E, F, H, L} = 4'b0100; #10; show_status();
    
    // Test case: Half
    {E, F, H, L} = 4'b0010; #10; show_status();
    
    // Test case: Full
    {E, F, H, L} = 4'b0001; #10; show_status();
    
    // Test case: All OFF (overflow or sensor fault)
    {E, F, H, L} = 4'b0000; #10; show_status();

    // Test case: Mixed sensors (E + H)
    {E, F, H, L} = 4'b1010; #10; show_status();

    // End simulation
    $finish;
  end

endmodule
