module secure_ro_21stage (                              // Define the top module wrapper for the 21-stage ring oscillator
    input  wire enable,                                // Input pin: active HIGH signal to enable/disable security
    output wire ro_out                                 // Output pin: carries the high-frequency oscillating clock signal
);
    wire [20:0] stage;                                 // Internal wire bus holding 21 connection lines (indices 0 to 20)

    // Stage 0: Combines Enable signal with feedback from Stage 20
    nor_stage stage_0 (                                // Instantiate the first NOR gate block
        .a(enable),                                    // Connect input 'a' to the external 'enable' security switch
        .b(stage[20]),                                 // Connect input 'b' to the feedback loop coming from the last stage
        .y(stage[0])                                   // Output 'y' feeds into the start of the chain (stage 0)
    );

    // Stages 1 to 20: Inverters using NOR gates (one input tied to GND)
    genvar i;                                          // Declare a generation variable used by the hardware loop
    generate                                           // Start a compile-time generate block to replicate hardware
        for (i = 1; i < 21; i = i + 1) begin : ro_loop // Loop 20 times (from i = 1 up to 20) to build the rest of the chain
            nor_stage stage_inst (                     // Instantiate subsequent NOR gate inverter stages
                .a(1'b0),                              // Tie input 'a' permanently to logic LOW (0/Ground) making it an inverter
                .b(stage[i-1]),                        // Connect input 'b' to the output of the previous stage
                .y(stage[i])                           // Output 'y' goes to the current stage line
            );                                         // End of instance
        end                                            // End of loop
    endgenerate                                        // End of generate block

    assign ro_out = stage[20];                         // Expose the final stage's oscillating signal to the outer output pin

endmodule                                              // End of module
