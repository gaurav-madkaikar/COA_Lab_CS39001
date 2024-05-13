# COA Lab Assignment 4
# Program: Compute determinant of a N X N matrix
# Group No. 54
# Group Members: Gaurav Madkaikar (19CS30018), Girish Kumar (19CS30018)

#### Data segment
.data
    inputprompt_1:
        .asciiz "Enter the four positive integers n, a, r and m :\n"
    inputprompt_2:
        .asciiz "\nInput matrix:\n"  
    outputprompt:
        .asciiz "\nFinal determinant of matrix A is: "
    newline:
        .asciiz "\n"
    space:
        .asciiz " "

#### Text segment
# Program Variables
# n = size of the square matrix
# a = first term of Gp series
# r = common ratio
# m = divisor for terms in matrix 
.text 
.globl main

main:
    # Initialise stack for main
    jal init_stack

    # Input prompt 
    li      $v0 , 4
    la      $a0 , inputprompt_1
    syscall

    # Read the input and push it onto the stack 
    li      $v0 , 5
    syscall
    move    $s0 , $v0        # $s0 <-- n 

    li      $v0 , 5
    syscall 
    move    $s1 , $v0        # $s1 <-- a

    li      $v0 , 5
    syscall 
    move    $s2 , $v0        # $s2 <-- r

    li      $v0 , 5
    syscall 
    move    $s3 , $v0        # $s3 <-- m

    # Store the values onto the stackframe
    sw      $s0 , 16($sp)         # $sp - 16 <-- n
    sw      $s1 , 12($sp)         # $sp - 12 <-- a
    sw      $s2 , 8($sp)          # $sp - 8  <-- r
    sw      $s3 , 4($sp)          # $sp - 4  <-- m

    mul     $s4 , $s0 , $s0       # $s4 <-- n * n 
    li      $t0 , 4 
    mul     $t1 , $s4 , $t0       # $t1 <-- n * n * 4

    sub     $sp , $sp , $t1       # allocating memory for the matrix on the stack
    
    move     $s5 , $sp

    # Populate the matrix in row wise fashion
    move    $t0 , $s4           # $t0 <-- n * n 
    li      $t1 , 0             # $t1 <-- i = 0
    move    $s6 , $s5 
    jal     FillMatrix
    
    # Print Matrix A 
    li      $v0 , 4
    la      $a0 , inputprompt_2
    syscall

    li     $t0 , 0              # i <-- 0
    move   $a0 , $s0            # $a0 <-- n
    move   $a1 , $s5            # $a1 <-- starting address of matrix A
    jal    PrintMatrix 

    # Find the determinant value recursively
    li      $v0 ,4             # output prompt
    la      $a0 , outputprompt
    syscall

    move    $a0 , $s0
    move    $a1 , $s5
    jal     recursive_Det

    # Store the returned determinant value
    move    $a0 , $v0
    li      $v0, 1
    syscall
   
    li      $t0, 4
    mul     $s4 , $s4 , $t0     # $s4 =  n*n *4 
    add     $sp , $sp , $s4     # deallocate matrix size from stack
    lw      $ra , 24($sp)       # restore return address 
    lw      $fp , 20($sp)       # restore the frame pointer
    addi    $sp , $sp , 28      # pop the stackframe    

    li      $v0 , 10            # Exit main
    syscall

########## FUNCTIONS (START)
# Initialise the stack 
init_stack:
    addi    $sp , $sp , -28      
    sw      $ra , 24($sp)         #saving return address of main 
    sw      $fp , 20($sp)         #saving old frame pointer 
    move    $fp , $sp 
    jr      $ra

# Push value onto the stack    
pushToStacK:
    div     $a0 , $s3            # (a*r^i) % m 
    mfhi    $a1                  #$a1 =  remainder
    sw      $a1 , 0($s6)
    add     $s6 , $s6 , 4
    jr      $ra

# Populate the matrix in a row-wise fashion using a, r, m
FillMatrix:
    # Initialise stack frame of Fill matrix 
    addi    $sp , $sp , -12      
    sw      $ra , 8($sp)         # saving return address of main 
    sw      $fp , 4($sp)         # saving old frame pointer 
    add     $fp , $sp , $zero    # saving new frame pointer 
    move    $a0 , $s1            # push a on stack as first element of matrix 
    addi    $t1 , $t1 , 1        # i++
    jal     pushToStacK
    j       loop 

loop:
    beq    $t1 , $t0 , EndFillMatrix  # return if i >= (n * n)   
    lw     $t3 , -4($s6)              # load previous value of matrix in $t3
    mul    $a0 , $t3 , $s2            # $a0 <-- $t2 * r (Following GP series)
    jal    pushToStacK
    addi   $t1 , $t1 , 1              # i++
    j      loop                       # jump to loop

EndFillMatrix:
    lw     $ra   8($sp)               # $restore $ra
    lw     $fp   4($sp)               # restore   $fp 
    addi   $sp , $sp , 12             # pop stack 
    jr     $ra                        # return


PrintMatrix:     # Arguments: $a0 <-- n, $a1 <-- address of matrix
    beq      $t0 , $s0 , jumpTora   # if i == n;  return 
    li       $t1  , 0               # j <-- 0 
    j        loop2                  # run the inner-j loop

loop2:
    beq      $t1 , $s0 , newlines   # if j == n, print a newline and continue printing the matrix
    
    lw       $a0 , 0($a1)
    li       $v0 , 1                # print value
    syscall

    li       $v0 , 4                # print a space 
    la       $a0 , space
    syscall

    addi     $a1 , $a1 , 4          # traverse the next address in the matrix 
    addi     $t1 , $t1 , 1          # j <-- j + 1
    j        loop2

newlines: 
    li       $v0 , 4                # print a new line
    la       $a0 , newline         
    syscall
 
    addi     $t0 , $t0 , 1          # i <-- i + 1
    j        PrintMatrix

jumpTora:
    jr      $ra                     # jump to return address (return)

# Compute the determinant recursively
recursive_Det:   
    # $a0 <-- n' , $a1 <-- base address of matrix A'
    # Store the register values on the stackframe
    addi   $sp , $sp ,-40
    sw     $s0 , 0($sp)
    sw     $s1 , 4($sp)
    sw     $s2 , 8($sp)
    sw     $s3 , 12($sp)
    sw     $s4 , 16($sp)
    sw     $s5 , 20($sp)
    sw     $s6 , 24($sp)
    sw     $s7 , 28($sp)
    sw     $ra , 36($sp)
    sw     $fp , 32($sp)
    add    $fp , $sp , 40

    li     $s0 , 0                  # Initialise sum = 0 (this holds the value of det(A))
    li     $s1 , 1                  # Sign associated with the co-factor
            
    move   $s2,  $a0                # store parameters $a0, $a1
    move   $s3 , $a1          
    li     $s4, 0                   # s4 <-- 0 (Space for the co-factor matrix)

    beq    $a0 , $s1 , basecase     # if n == 1 , jump to the base case 

    sub    $s4 , $a0 , 1
    mul    $s4 , $s4 , $s4          # (n-1) * (n-1)
    sll    $s4 , $s4 , 2            # (n-1) * (n-1) * 4
    sub    $sp , $sp , $s4          # Allocate space for the co-factor matrix 
    move   $s5 , $sp                # $s5 <-- starting address
    li     $s6 , 0                  # i <-- 0
    j      loop3

loop3:
    beq    $s6 , $s2 , recursive_return     # if i == n, return from the recursive procedure
  
    move   $a0 , $s3                        # Hold address of matrix A

    move   $a1 , $s2                        # $a1 <-- n 
    move   $a2 , $s5                        # $a2 <-- address of the co-factor matrix     
    move   $a3 , $s6                        # $a3 <-- i
    jal    cofactorMatrix                   # Find the co-factor matrix

    addi   $a0 , $s2, -1                    # $a0 <-- n - 1
    move   $a1 , $s5                        # $a1 <-- starting address of matrix A'
    jal    recursive_Det

    sll    $t1 , $s6 , 2                    # $t1 <-- 4 * i
    add    $t1 , $t1 , $s3                  # skip the 4 * i indexed location in A
    lw     $t1 , 0($t1)                     # $t1 <-- A[0][i]
    mul    $t1 , $t1 , $s1                  # $t1 <-- sign * A[0][i] (sign = {+1, -1})
    mul    $t1 , $t1 , $v0                  # $t1 <-- A[0][i] * det(A')
    add    $s0 , $s0 , $t1                  # det(A) <-- det(A) + (A[0][i] * det(A'))
    mul    $s1 ,$s1 , -1                    # change sign on each term
    add    $s6 , $s6 , 1                    # i++
    j      loop3

# Base case
basecase:
    lw     $s0 , 0($s3)
    j      recursive_return

# Return 
recursive_return:    # restore stack , return value(det.(A)) in $v0
    # Restore the register values and return
    move   $v0 , $s0
    add    $sp , $sp , $s4
    lw     $s0 , 0($sp)
    lw     $s1 , 4($sp)
    lw     $s2 , 8($sp)
    lw     $s3 , 12($sp)
    lw     $s4 , 16($sp)
    lw     $s5 , 20($sp)
    lw     $s6 , 24($sp)
    lw     $s7 , 28($sp)
    lw     $ra , 36($sp)
    lw     $fp , 32($sp)
    addi   $sp , $sp ,40
    jr     $ra

cofactorMatrix: # $a0 <-- address of matrix A, $a1 <-- n, $a2 <-- address of the co-factor matrix A', $a3 <-- i 
    # Store the changed register values
    addi   $sp , $sp ,-36
    sw     $s0 , 0($sp)
    sw     $s1 , 4($sp)
    sw     $s2 , 8($sp)
    sw     $s3 , 12($sp)
    sw     $s4 , 16($sp)
    sw     $s5 , 20($sp)
    sw     $s6 , 24($sp)
    sw     $ra , 28($sp)
    sw     $fp , 32($sp)
    move   $fp , $sp 

    li     $t0 , 0                  # i <-- 0 
    j      skip0th_row              # Skip the 0th row (as it is not included in the co-factor matrix)

skip0th_row:
    sll    $t2 , $a1, 2             # $t2 <-- 4 * n
    add    $a0, $a0 , $t2           # $a0 <-- &A[0][0] + (4 * n)
    li     $t1 , 0                  # j <-- 0
    addi   $t0 , $t0 , 1            # i++
    j      loop4

loop4:
    beq    $t0 , $a1 , return_cofactor      # if i == n, return the co-factor matrix
    beq    $t1 , $a1 , continueloop4        # if j <-- n; implies i++, j <-- 0 
    beq    $t1 , $a3 , skip_element         # if i == j, skip the values (as they are not included in the co-factor matrix) 

    lw     $t4 , 0($a0)
    sw     $t4 , 0($a2)

    addi   $a0 , $a0 , 4                    # traverse the next element of matrix A
    addi   $a2 , $a2 , 4                    # traverse the next element of matrix A'
    addi   $t1 , $t1 , 1                    # j ++
    j      loop4

continueloop4:
    li     $t1 ,0                   # j <-- 0
    addi   $t0 , $t0 , 1            # i++ 
              
    j      loop4                    # continue the loop

skip_element:
    add    $a0 , $a0 , 4
    addi   $t1 , $t1 , 1            # j++
    j      loop4

# Return the co-factor matrix
return_cofactor:
    # Restore all the initial values, pop the stackframe and return 
    lw     $s0 , 0($sp)
    lw     $s1 , 4($sp)
    lw     $s2 , 8($sp)
    lw     $s3 , 12($sp)
    lw     $s4 , 16($sp)
    lw     $s5 , 20($sp)
    lw     $s6 , 24($sp)
    lw     $ra , 28($sp)
    lw     $fp , 32($sp)
    addi   $sp , $sp ,36
    jr     $ra

########## FUNCTIONS (END)