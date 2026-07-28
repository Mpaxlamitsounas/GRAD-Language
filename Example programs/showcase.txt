// Gets a value and address from the user, writes the value to the address if value != STOP_VAL

STOP_VAL:0x275

VAR INPUT_VALUE

(START_LOOP)
    // Read from 1st input device, this is the value to be written
    INPUT_VALUE := DEV_IN_0; IF == STOP_VAL JMP END
    // Write to address specified from user, M[DEV_IN_1] == M[M[Address of 2nd device]]
    M[DEV_IN_1] := INPUT_VALUE; JMP START_LOOP
(END)
D; JMP END
