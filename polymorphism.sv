module tb_top;

    wiper_if vif();

    base_test t;

    random_test rt;

    wiper_controller dut
    (
        .ignition(vif.ignition),
        .rain_sensor(vif.rain_sensor),
        .mode(vif.mode),
        .wiper_motor(vif.wiper_motor),
        .speed(vif.speed)
    );

   initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_top);
end

  initial begin
        vif.ignition   = 0;
        vif.rain_sensor = 0;
        vif.mode        = 2'b00;

        rt = new(vif);

        t = rt;

        t.run();

        $display("");
        $display("===================================");
        $display(" AUTOMOTIVE WIPER VERIFICATION DONE");
        $display("===================================");

        #20;

        $finish;

    end

endmodule