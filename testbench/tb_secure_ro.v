module tb_secure_ro;                                    // Define the testbench module wrapper
    reg enable;                                        // Declare 'enable' as a register to control the UUT
    wire ro_out;                                       // Declare 'wire' to catch the ring oscillator output
    integer i;                                         // Declare loop counter variable 'i'

    secure_ro_21stage uut (                            // Instantiate (hook up) your 21-stage ring oscillator
        .enable(enable),                               // Connect testbench enable to module enable
        .ro_out(ro_out)                                // Connect module ro_out to testbench wire
    );

    initial begin                                      // Runs once when simulation starts
        $dumpfile("ro_sensor.vcd");                    // Name the waveform output file for GTKWave
        $dumpvars(0, tb_secure_ro);                    // Record all signals inside this module

        // Loop runs 3 times (i = 0, 1, 2) to test toggling the enable signal
        for (i = 0; i < 3; i = i + 1) begin            // Start loop: start at 0, stop before 3, add 1 each step
            enable = i % 2;                            // Set enable to remainder of i/2 (alternates 0, 1, 0)
            #100;                                      // Wait/delay for 100 time units before next loop step
        end                                            // End of the loop block

        $finish;                                       // Stop the simulation completely
    end                                                // End of initial block
endmodule                                              // End of testbench module
