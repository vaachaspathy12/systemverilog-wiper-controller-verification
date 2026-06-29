class scoreboard;

    mailbox #(transaction) mon2scb;

    int pass;
    int fail;
    int total;

    transaction tr;

    bit exp_motor;
    bit [1:0] exp_speed;

    function new(mailbox #(transaction) mon2scb);

        this.mon2scb = mon2scb;

    endfunction

    task run();

        repeat(20)
        begin

            mon2scb.get(tr);

            total = total + 1;

            exp_motor = 0;
            exp_speed = 0;

            if(tr.ignition)
            begin

                case(tr.mode)

                    2'b00:
                    begin
                        exp_motor = 0;
                        exp_speed = 0;
                    end

                    2'b01:
                    begin
                        exp_motor = tr.rain_sensor;
                        exp_speed = 1;
                    end

                    2'b10:
                    begin
                        exp_motor = 1;
                        exp_speed = 2;
                    end

                    2'b11:
                    begin
                        exp_motor = 1;
                        exp_speed = 3;
                    end

                endcase

            end

            if((tr.wiper_motor == exp_motor) &&
               (tr.speed == exp_speed))
            begin

                pass = pass + 1;

                $display(
                "[PASS] Expected(M=%0d S=%0d) Actual(M=%0d S=%0d)",
                exp_motor,
                exp_speed,
                tr.wiper_motor,
                tr.speed);

            end

            else
            begin

                fail = fail + 1;

                $display(
                "[FAIL] Expected(M=%0d S=%0d) Actual(M=%0d S=%0d)",
                exp_motor,
                exp_speed,
                tr.wiper_motor,
                tr.speed);

            end

        end

        $display("");
        $display("===================================");
        $display("      VERIFICATION SUMMARY");
        $display("===================================");
        $display("Total Tests : %0d", total);
        $display("Passed      : %0d", pass);
        $display("Failed      : %0d", fail);
        $display("===================================");

    endtask

endclass