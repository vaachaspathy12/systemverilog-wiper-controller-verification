class transaction;

    rand bit ignition;
    rand bit rain_sensor;
    rand bit [1:0] mode;

    bit wiper_motor;
    bit [1:0] speed;

    function void display(string tag);

        $display("[%s] IGN=%0d RAIN=%0d MODE=%0d MOTOR=%0d SPEED=%0d",
                  tag,
                  ignition,
                  rain_sensor,
                  mode,
                  wiper_motor,
                  speed);

    endfunction

endclass