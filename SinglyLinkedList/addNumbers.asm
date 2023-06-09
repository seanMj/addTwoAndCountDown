.386                                    ;32bit
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD     ;function prototype:

.code                                   ;start of programmable code

main PROC

    mov eax, 5                          ; move the value of 5 into eax                                  | eax <- 5
    add eax, 6                          ; add eax and 6 together into eax to equal 11                   | eax <- (6  + 5) = 11
    imul eax, eax, 6                    ; multiply the value of eax, with the value of 6 to equal 66    | eax <- (11 * 6) = 66
    mov ecx, eax
Loop_1:                                 ; where to start my loop
    sub ecx, 1                          ; subtract 1 from each iteration through the loop from ecx | == to using ++ecx, if i swapped line 16 & 17, it would be ecx++
    cmp ecx, 0                          ; compare ecx against zero (0) during countdown from n
    jnz Loop_1                          ; if the value of ecx is not zero, continue the countdown from n
    

    INVOKE ExitProcess, eax               ; exit program using WIN API
                                          ; just using eax as a hacky way to display the value within eax without having to produce a function to print, MSVS does it for me
main ENDP
END main
