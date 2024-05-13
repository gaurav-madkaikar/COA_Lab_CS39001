#  COA Lab Assignment 2
#  Program: Check if a number is perfect or non perfect
#  Group No. 54
#  Group Members: Gaurav Madkaikar, Girish Kumar

#### Data segment
.data
    input_prompt:
        .asciiz "Enter a positive integer: "
    perfect_str:
        .asciiz "Entered number is a perfect number!"
    non_perfect_str:
        .asciiz "Entered number is not a perfect number!"    
    err_str:
        .asciiz "ERROR: Arguments must be positive!"

#### Text segment
.text 
.globl main

    main:
        li      $v0 , 4                 # Display  input_prompt
        la      $a0 , input_prompt
        syscall                         

        li      $v0, 5                  # Get input from the user 
        syscall 
        move    $s0, $v0                # Move input in register s0

        blt     $s0, $zero, err_str     # jump to error message if (N < 0)

        move    $a0, $s0                # store N in $a0 
        jal     is_perfect              # call is_perfect with N as an argument

        move    $t0, $v0                # store the return value from is_perfect in $t0
        beq     $t0, $s0, perfect       # if sum = N, N is perfect, else
        j       non_perfect             # print N is non perfect

        j       Exit                    # Exit the program

    err_input:
        la     $a0,  err_str            # Load address of err_str
        li     $v0,  4
        syscall                         # syscall to print the err_str

        j      Exit                     # unconditional jump to exit from the program

    is_perfect:
        li      $t1, 2                  # initial counter (i = 2)
        move    $s3, $a0                # store N in register $s3
        ble     $a0, $t1, non_perfect   # if (N <= 2), N is not a perfect number
       
        li      $s1, 1                  # sum variable (initialized to 1)
        j       test_loop               # jump to test_loop
        
    #   s1 <-- sum (= 1) , s3 <-- N , t1 <-- i (= 2)
    test_loop:
        # check if i * i <= N
        multu   $t1, $t1                # Compute i * i (Stored in Hi and Lo registers)
        mflo    $t4                     # Load Lo to $t4

        sltu    $t4, $s3, $t4           
        bne	    $t4, $zero, exit_loop   # if ($t4 != 0) then exit the loop
        
        mfhi	$t4					    # copy Hi to $t4
        bgt	    $t4, $zero, exit_loop	# if ($t4 > 0) then exit the loop

        divu    $s3, $t1                # N % i stored in register Hi
        mfhi    $t0                     # load the remainder (N % i) in register t0
        beq     $t0, $zero, compute_sum # if N % i = 0, jump to compute_sum

        addi    $t1, $t1, 1             # Else, i <-- i + 1 (Increment counter)

        j       test_loop               # run the loop until termination

    compute_sum:
        multu   $t1, $t1                # i*i stored in Hi and Lo registers
        mflo    $t4

        add     $s1, $s1, $t1           # sum <-- sum + i
        bne     $t4, $s3, additional_sum    # if i*i != N, add extra term to the sum
        addi    $t1, $t1, 1             # Else, i <-- i + 1 (Increment counter)

        j       test_loop               # return to the loop

    additional_sum:
        divu    $s3, $t1                # Store N / i in register Lo
        mflo    $t4                     # Load N / i in $t4
        add     $s1, $s1, $t4           # sum <-- sum + (N / i)
        addi    $t1, $t1, 1             # i <-- i + 1 (Increment counter)

        j       test_loop               # return to the loop

    exit_loop:
        move   $v0, $s1                 # Load sum in $vo
        jr     $ra                      # return to main

    non_perfect:
        la    $a0,  non_perfect_str     # Print N is non_perfect
        li    $v0,  4                   
        syscall                         

        j     Exit                      # Exit the program

    perfect:
        la    $a0,  perfect_str         # Print N is perfect
        li    $v0,  4                   
        syscall                         

        j     Exit                      # Exit the program

    Exit:
        li    $v0, 10		            # $v0 <-- 10 (sys_exit)
        syscall                         # syscall for exiting the program
