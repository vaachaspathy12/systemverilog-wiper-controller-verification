class random_test extends base_test;

    environment env;

    virtual wiper_if vif;

    function new(virtual wiper_if vif);

        this.vif = vif;
        env = new(vif);

    endfunction

    task run();

        env.gen.count = 20;

        env.run();

    endtask

endclass