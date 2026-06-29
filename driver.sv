class driver;

    virtual wiper_if vif;

    mailbox #(transaction) gen2drv;

    function new
    (
        virtual wiper_if vif,
        mailbox #(transaction) gen2drv
    );

        this.vif = vif;
        this.gen2drv = gen2drv;

    endfunction

    task run();

        transaction tr;

        repeat(20)
        begin

            gen2drv.get(tr);

            vif.ignition    = tr.ignition;
            vif.rain_sensor = tr.rain_sensor;
            vif.mode        = tr.mode;

            #10;

        end

    endtask

endclass