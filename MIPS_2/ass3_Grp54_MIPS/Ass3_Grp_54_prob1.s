# COA Lab Assignment 3
# Program: Booth's Multiplication Algorithm
# Group No. 54
# Group Members: Gaurav Madkaikar, Girish Kumar

#### Data segment
.data
    input_prompt_1:       .asciiz "Enter first number: "
    input_prompt_2:       .asciiz "Enter second number: "
    output_str:           .asciiz "Product of the two numbers are: "
    err_str:              .asciiz "ERROR: Input number cannot be represented in 16-bit 2's complement form!"
    linefeed:             .asciiz "\n"

#### Text segment
.text
.globl main

    main:
    # Input Prompt for operand 1
        la    $a0, input_prompt_1
        li    $v0, 4
        syscall

        li    $v0, 5
        syscall

        move  $s0, $v0       # store operand 1 in $s0 

    # Input Prompt for operand 2
        la    $a0, input_prompt_2
        li    $v0, 4
        syscall

        li    $v0, 5
        syscall

        move  $s1, $v0        # store operand 2 in $s0 

        jal   checkLimits     # Sanity check for possible range of N1 and N2

    # HANDLE CORNER VALUES OF INTEGER (if it exists)
        move $a0, $s0                        # $a0 <-- N1
        move $a1, $s1                        # $a1 <-- N2
        jal  maxLimitProd                    # Check for the largest -ve values and print its product

        li $t0, 0                            # store LSB(Q-1) in $t0
        li $t1, 16                           # store counter(N = 16) in $t1

    # Store only the first 16-bits of the multiplicand
        sll $a0, $a0, 16 
        srl $a0, $a0, 16

    # Load the upper 16-bits of the multiplier
        sll $a1, $a1, 16
        
        move $v0, $a0
        jal  multiply_booth   

        jal  printRes

    checkLimits:
        li $t0, -32768
        li $t1, 32767

        # CHECK LIMITS
        # Check if input is less than -2^15 = -32768 (-ve)
        blt $s0, $t0, exitSanityCheck
        blt $s1, $t0, exitSanityCheck

        # Check if input is greater than (2^15 - 1) = 32767 (+ve)
        bgt $s0, $t1, exitSanityCheck
        bgt $s1, $t1, exitSanityCheck

        jr   $ra                            # return to main

    # Exit the limit checking
    exitSanityCheck:
        la  $a0, err_str
        li  $v0, 4
        syscall

        j   ExitProg                        # exit the program

    maxLimitProd:
        # Keep the multiplier smaller and swap if necessary
        bne     $a1, $t0, exitCheck         # Check if N2 = -32768
        move 	$t3, $a1		            # $t3 <-- N2
        move 	$a1, $a0		            # $a1 <-- N1
        move 	$a0, $t3		            # $a0 <-- N2

        bne     $a1, $t0, exitCheck
        li		$t3, 1		                # $t3 <-- 1
        sll     $a0, $t3, 30                # $a0 <-- 2^30 = (-2^15) * (-2^15)
        move 	$v0, $a0		            # $v0 <-- 2^30

        j       printRes                    # Print the result and exit the program

    exitCheck:
        jr      $ra

    # $v0 <-- Result
    multiply_booth:
        andi $t2, $v0, 1                   # $t2 stores the LSB of the result
        beq  $t2, $t0, rightShift          # If both Q0 and Q-1 are equal, simply shift
        
        beq $t2, $zero, addAccumulator     # if Q0, Q-1 = {0, 1}, add and shift
        sub $v0, $v0, $a1                  # if Q0, Q-1 = {1, 0}, subtract and shift
        j   rightShift                     # Perform the shift operation

    addAccumulator:
        add $v0, $v0, $a1
        j   rightShift

    # Arithmetic right shift
    rightShift:
        move $t0, $t2                       # $t0 <-- LSB
        sra  $v0, $v0, 1                    # Arithmetic right shift
        addi $t1, $t1, -1                   # N--
                               
        beq  $t1, $zero, endShift           
        j    multiply_booth                 # if the counter(N) is non-zero, goto multiply_booth

    endShift:
        jr   $ra                            # return to main

    # $v0 stores the result
    printRes:
    move $t3, $v0                           # $t3 <-- Result

    li $v0, 4                               # print output prompt
    la $a0, output_str
    syscall

    li $v0, 1                               # print the result 
    move $a0, $t3
    syscall   

    la $a0, linefeed                        # print newline
    li $v0, 4
    syscall

    # Exit the program
    ExitProg:
        li  $v0, 10
        syscall