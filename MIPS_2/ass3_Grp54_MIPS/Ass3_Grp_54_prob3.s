# COA Lab Assignment 3
# Program: Transpose of matrix
# Group No. 54
# Group Members: Gaurav Madkaikar, Girish Kumar


######  Data Segment
.data
    input_prompt_1:         .asciiz "Enter four positive intergers m, n, a and r  : "
    output_prompt_1:        .asciiz "The input matrix A is :\n"
    output_prompt_2:        .asciiz "The transposed matrix B is :\n"
    linefeed:               .asciiz "\n"
    space:                  .asciiz " "

######  Text Segment
.text
.globl main

    main:

        # Input prompt for m, n, a, r
        li 	  $v0, 4                      
        la 	  $a0, input_prompt_1
        syscall

        jal 	init_stack              # initialise the stack frame

        li 	  $v0 , 5                   # Take input for m 
        syscall
        move  $a0, $v0
        jal   pushTostack	            # Storing m on the stack

        li 	$v0 , 5                     # Take input for n 
        syscall
        move  $a0, $v0
        jal   pushTostack	            # Storing n on the stack

        li 	$v0 , 5                     # Take input for a
        syscall
        move  $a0, $v0
        jal   pushTostack	            # Storing a on the stack


        li 	$v0 , 5                     # Take input for r
        syscall
        move  $a0, $v0
        jal   pushTostack	            # Storing r on the stack

        move  $fp, $sp                  # Both $fp and $sp point at the bottom of the stack

        lw 		$s0, 16($fp)		    # Load m in $s0 from the stack
        lw   	$s1, 12($fp)		    # Load n in $s1 from the stack 
         
        mult 	$s0, $s1		        # multiply m and n 

        mflo    $s2 			        # $s2 <-- m * n

        # Allocate space for matrix A
        move    $a0, $s2                # $a0 <-- m * n (1st argument of mallocInstack)
        jal     mallocInstack         

        # $fp and $v0 point to the start of matrix A
        move    $s3, $v0                # Store the starting address of matrix A
        lw 		$s4, 8($fp)		        # Load a in $s4 from the stack
        lw   	$s5, 4($fp)		        # Load r in $s5 from the stack
        sll     $s6, $s0, 2		        # $s6 <-- (m * n * 4)

        # Fill up the values of the matrix A
        sw      $s4, ($s3)		        # push 'a' in the stack as the first element of A
        li      $t0, 1		            # $t0 <-- 1 (i = 1)
	    jal	    fillMatrix			    # Proceed to fill the matrix values

        move    $s3, $fp                # Store the starting address of matrix A

        # Print the values of matrix A
        # Load the arguments for printMatrix
        la      $a0, output_prompt_1
        li      $v0, 4
        syscall

        move    $a0, $s0
        move    $a1, $s1
        move    $a2, $s3
        li      $t0, 0                  # $t0 <-- 0 (i = 0)

        jal     PrintMatrix             # function call to print matrix A

        # Allocate space for matrix B
        move    $a0, $s2                # $a0 <-- m * n (1st argument of mallocInstack)
        jal     mallocInstack  
        move    $s7, $v0                # Store the starting address of matrix B

        # Transpose matrix A and store it into B
        move    $a0, $s0
        move    $a1, $s1
        move    $a2, $s3
        move    $a3, $s7
        
        li      $t0, 0                  # $t0 <-- i = 0
        li      $t1, 0                  # $t1 <-- j = 0
        jal     transposeMatrix         # Call the transpose method

        # Print the values of matrix B
        # Load the arguments for printMatrix
        la      $a0, output_prompt_2
        li      $v0, 4
        syscall

        move    $a0, $s1
        move    $a1, $s0
        move    $a2, $s7
        li      $t0, 0                  # $t0 <-- 0 (i = 0)

        jal     PrintMatrix             # function call to print matrix B

        j       ExitProg                # Exit the program


    ####### Functions #########
    # Initialise the stack frame
    init_stack: 
        addiu	    $sp, $sp, -24       # $sp <-- $sp - 24
        sw 		    $ra, 20($sp)        # $ra <-- $sp - 4   (return address)
        sw		    $fp , 16($sp)       # $fp <-- $sp - 8   (frame pointer)
        move		$fp , $sp           # $fp points to the top of the stack (same as $sp <-- $sp - 24)
        jr          $ra                 # return to main

    # Arguments: $a0 - Input value to be stored on the stack
    pushTostack:  
        sw        $a0, ($sp)  	        # Store $a0 on the stack
        subu      $sp, $sp, 4           # Decrement $sp
        jr 		  $ra                   # return to the callee

    mallocInstack:
        sll         $t1, $a0, 2		    # $t1 <-- (m * n * 4)
        move        $t2, $sp            # preserve the old value
        subu		$sp, $sp, $t1       # allocate memory for matrix A

        move        $v0, $t2            # $v0 contains starting address of matrix A

        jr		    $ra	                # return to callee

    fillMatrix:
        beq		    $t0, $s2, Exitloop       # if i == (m * n), then exit the loop

        lw          $t1, ($s3)		         # $t1 <-- previous value in matrix
        mult        $t1, $s5			     # $t1 <-- previous value of matrix * r
        mflo		$t2					     # $t2 <-- value in $t1

        addi        $s3, $s3, -4             # jump to the next address
        sw          $t2, ($s3)               # store element on the stack address

        addi        $t0, $t0 , 1             # i <-- i + 1
        j           fillMatrix              

    Exitloop:
        jr      $ra                          # return to main

    # $a0 <-- m, $a1 <-- n, $a2 <-- &A
    PrintMatrix:
        beq		    $t0, $s2, Exitloop       # if i == (m * n), then exit the loop

        li          $v0,  1                  # printing A[i][j]
        lw          $a0, ($a2)
        syscall 

        li      	$v0, 4                   # printing space
        la      	$a0, space
        syscall

        # Condition for newline
        addi        $t3, $t0, 1
        div         $t3 , $a1                 # Hi <-- (i % n)
        mfhi        $t4

        beq         $t4, $zero, printNewline  # (t3 % n) == 0, print newline

        addi        $a2, $a2, -4              # jump to the next address
        addi        $t0, $t0 , 1              # i <-- i + 1
        j           PrintMatrix

    printNewline:
        li      	$v0, 4                    # print a newline
	    la      	$a0, linefeed
	    syscall

        # Continue with the loop
        addi     $a2, $a2, -4
        addi     $t0, $t0, 1                  # i <-- i + 1
        j        PrintMatrix

    # $a0 <-- m, $a1 <-- n, $a2 <-- &A, $a3 <-- &B
    transposeMatrix:
        # B[i][j] = A[j][i]
        beq      $t0, $a1, ExitLoop1      # i != n
        move     $t1, $zero               # Initialise j to 0
        j        Loop2                    # jump to Loop2

    Loop2:
        beq      $t1, $a0, ExitLoop2      # j != m, else exit the inner loop
        mult     $a0, $t1                 # Lo <-- j * m
        mflo     $t2                      # $t2 <-- j * m
        add      $t2, $t2, $t0            # $t2 <-- (j * m) + i 

        sll      $t2, $t2, 2              # $t2 <-- ((j * m) + i) * 4

        add      $t2, $a2, $t2            # $t2 <-- A + ((j * m) + i) * 4 = &A[j][i]
        lw       $t3, ($t2)               # $t3 <-- A[j][i]

        sw       $t3, ($a3)               # store A[j][i] in matrix B  
        
        addi     $a3, $a3, -4             # jump to the next address
        addi     $t1, $t1, 1              # j <-- j + 1

        j        Loop2                    # continue with the inner loop

    ExitLoop2:
        addi     $t0, $t0 , 1             # i <-- i + 1
        j        transposeMatrix          # continue with the outer loop

    ExitLoop1:
        jr     $ra                        # return to main

    # Exit the program
    ExitProg:
        li  $v0, 10
        syscall