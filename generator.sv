class generator;

    mailbox #(transaction) gen2drv;

    int count;

    function new(mailbox #(transaction) gen2drv);

        this.gen2drv = gen2drv;

    endfunction

    task run();

        transaction tr;

        repeat(count)
        begin

            tr = new();

            assert(tr.randomize());

            tr.display("GEN");

            gen2drv.put(tr);

        end

    endtask

endclass