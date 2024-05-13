# COA Lab Assignment 2
# Program: GCD of two numbers by repeated subtraction
# Group No. 54
# Group Members: Gaurav Madkaikar, Girish Kumar

#### Data segment
.data
    input_prompt_1:       .asciiz "Enter the first positive integer: "
    input_prompt_2:       .asciiz "Enter the second positive integer: "
    output_prompt:        .asciiz "GCD of the two integers is: "
    err_str:              .asciiz "ERROR: Arguments must be positive!"

#### Text segment
.text
.globl main

    main:
        la    $a0,  input_prompt_1      # Load address of input prompt 1
        li    $v0,  4                   # print_string
        syscall                         # syscall for printing input_prompt_1

        li		$v0, 5		            # v0 <-- 5 (Preparing for call to read_int)
        syscall                         # get integer a
        move    $t0, $v0                # store a in register $t0

        blt     $t0, $zero, err_input   # if n1 < 0, jump to label err_input (sanity check)

        la      $a0, input_prompt_2     # Prompt for second input
        li      $v0,  4                  
        syscall                         # syscall for printing input_prompt_2
        
        li      $v0, 5                  # v0 <-- 5 (Preparing for call to read_int)
        syscall
        move    $t1, $v0                # store a in register $t0

        blt     $t1, $zero, err_input   # if n1 < 0, jump to label err_input (sanity check)

        la      $a0,  output_prompt     # Prompt for first input
        li      $v0,  4                 # print_string
        syscall                         # syscall for printing input_prompt_2

        move    $a0, $t0                # Store a in $a0 
        move    $a1, $t1                # Store b in $a1
        jal     GCD                     # Call GCD function with arguments a and b

        move    $t2, $v0                # store gcd(a, b) in register $t2 

        move    $a0, $t2                # print the gcd (integer)
        li      $v0, 1
        syscall                         # syscall to print_int

        j       Exit                    # jump to label Exit
        
    err_input:
        la     $a0,  err_str            # Load address of err_str
        li     $v0,  4
        syscall                         # syscall to print_string

        j     Exit                      # unconditional jump to exit from the program

    # $a0 <-- a , $a1 <-- b
    GCD:            
        beq     $a0, $zero, base        # base condition {if(a == 0) return b}
        j       while                   # jump to the loop

    while:
        beq     $a1, $zero, exit_while  # if b == 0 branch to exit the while loop  
        slt     $t3, $a1, $a0           # if (b < a) t3 = 1, else t3 = 0 
        beq     $t3, $zero, else        # if t3 == 0 branch to else (a > b) 
        sub     $a0, $a0, $a1           # a = a - b
        j       while                   # continue the loop until termination

    exit_while:
        move    $v0, $a0                # store a in $v0
        jr      $ra                     # return to main

    else:
        sub     $a1 , $a1 , $a0         # b = b - a
        j       while                   # Jump back to the while loop

    # base condition
    base:
        move    $v0, $a1                # store b in $v0  
        jr      $ra                     # return to main

    Exit: 
        li		$v0, 10		            # $v0 = 10
        syscall                         # syscall for exiting the program



