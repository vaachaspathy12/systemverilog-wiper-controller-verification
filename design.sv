module wiper_controller(
    input logic ignition,
    input logic rain_sensor,
    input logic [1:0] mode,
    output logic wiper_motor,
    output logic [1:0] speed
);

always_comb begin

    wiper_motor = 0;
    speed = 0;

    if(ignition) begin

        case(mode)

            2'b00: begin
                wiper_motor = 0;
                speed = 0;
            end

            2'b01: begin
                wiper_motor = rain_sensor;
                speed = 1;
            end

            2'b10: begin
                wiper_motor = 1;
                speed = 2;
            end

            2'b11: begin
                wiper_motor = 1;
                speed = 3;
            end

        endcase

    end

end

endmodule