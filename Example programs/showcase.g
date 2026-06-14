// Gets a value and address from the user, writes the value to the address if value != STOP_VAL

STOP_VAL:0x275

VAR INPUT_VALUE

(START_LOOP)
    // Value to be written
    INPUT_VALUE := DEV_IN_0; IF == STOP_VAL JMP END
    // DEV_IN_1 == M[Input device 1] === Address to write value to
    M[DEV_IN_1] := INPUT_VALUE; JMP START_LOOP
(END)
D; JMP END