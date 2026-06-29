class monitor;

    virtual wiper_if vif;

    mailbox #(transaction) mon2scb;

    function new(
        virtual wiper_if vif,
        mailbox #(transaction) mon2scb
    );

        this.vif = vif;
        this.mon2scb = mon2scb;

    endfunction

    task run();

        transaction tr;

        repeat(20)
        begin

            #11;

            tr = new();

            tr.ignition    = vif.ignition;
            tr.rain_sensor = vif.rain_sensor;
            tr.mode        = vif.mode;
            tr.wiper_motor = vif.wiper_motor;
            tr.speed       = vif.speed;

            tr.display("MON");

            mon2scb.put(tr);

        end

    endtask

endclass
