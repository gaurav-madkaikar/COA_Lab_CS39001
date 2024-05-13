# COA Lab Assignment 2 
# Program: Check if a number is prime or composite
# Group No. 54
# Group Members: Gaurav Madkaikar, Girish Kumar

#### Data segment
.data
    input_prompt:           .asciiz  "Enter a positive integer greater than equal to 10: "
    prime_op_prompt:        .asciiz  "Entered number is a PRIME number!"
    composite_op_prompt:    .asciiz  "Entered number is a COMPOSITE number!"
    err_str:                .asciiz  "ERROR: Integer must be greater than equal to 10!"

#### Text segment
.text
.globl main

    main:
        la    $a0, input_prompt         # Load address of input prompt
        li    $v0, 4                    # print_string
        syscall                         # syscall for printing string

        li		$v0, 5		            # v0 <-- 5 (Preparing for call to read_int)
        syscall                         # get integer N
        move    $t0, $v0                # store N in register $t0

        li      $t1, 10
        blt     $t0, $t1, err_input     # if N < 10, report error (sanity check)

        move    $a0, $t0                # store N in a0
        jal     is_prime                # call the is_prime function

        move    $t3, $v0                # copy returned value in t3
        beq     $t3, $zero, prnt_prime  # if($t3 == 0) print prime, else
        j       prnt_composite          # print composite

        j       Exit                    # Exit the program

    err_input:
        la     $a0,  err_str            # Load address of err_str
        li     $v0,  4
        syscall                         # syscall to print err_str

        j      Exit                     # unconditional jump to exit from the program

    is_prime:
        li	    $t1, 2				    # initialize counter variable to 2 (t1 <-- i)
        move    $t2, $a0                # store N in register $t2
                                        # Result is stored in Lo(quotient) and Hi(remainder) registers
        j       test_loop               # jump to the test loop

    #  t2 <-- N, t1 <-- i, s0 <-- 0
    test_loop: 
        multu   $t1, $t1                # Compute i * i (stored in Hi and Lo registers)
        mflo    $t4                     # Load Lo in $t4

        # Compare i * i with N
        sltu    $t4, $t2, $t4           # set $t4 = 1, if N < (i * i)
        bne	    $t4, $zero, exit_loop   # if $t4 != 0, then prime
        
        mfhi	$t4					    # copy Hi to $t4
        bgt	    $t4, $zero, exit_loop	# if $t4 > 0, then prime

        divu    $t2, $t1                # Lo = N / i, Hi = N % i
        mfhi    $t0                     # Load N % i stored in Hi to $t0
        beq     $t0, $zero, break_loop  # if (N % i) = 0, break out of the loop and mark as composite

        addi    $t1, $t1, 1             # i <-- i + 1

        j       test_loop               # continue the loop until termination

    exit_loop:
        move   $v0, $zero               # Set $v0 <-- 0 (marking prime)
        jr     $ra                      # return 

    break_loop:
        li     $v0, 1                   # Set $v0 <-- 0 (marking prime)
        jr     $ra                      # return

    prnt_prime:
        la    $a0,  prime_op_prompt     # Print N is prime
        li    $v0,  4                   
        syscall                         

        j     Exit                      # exit the program

    prnt_composite:
        la    $a0,  composite_op_prompt # Print N is composite
        li    $v0,  4                   
        syscall                         

        j     Exit                      # exit the program

    Exit:
        li		$v0, 10		            # $v0 = 10 (sys_exit)
        syscall                         # syscall for exiting the program