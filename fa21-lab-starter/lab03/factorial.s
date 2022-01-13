.globl factorial

.data
n: .word 7

.text
main:
    la t0, n
    lw a0, 0(t0)
    jal ra, factorial

    addi a1, a0, 0
    addi a0, x0, 1
    ecall # Print Result

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall # Print newline

    addi a0, x0, 10
    ecall # Exit

factorial:
    # YOUR CODE HERE
    la t0, n
    addi a0, x0, 1
    addi s0, x0, 1
    lw s1, 0(t0)
loop:                   
    beq s0, s1, exit
    addi t0, s0, 1
    mul a0, a0, t0
    addi s0, s0, 1
    jal x0, loop
exit:       
    jr ra