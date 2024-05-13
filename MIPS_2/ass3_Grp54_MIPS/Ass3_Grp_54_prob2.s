# COA Lab Assignment 3
# Program: kth Largest Element in an array
# Group No. 54
# Group Members: Gaurav Madkaikar, Girish Kumar

#### Data segment
.data
    arr:                  .space  40
    input_prompt_1:       .asciiz "Enter the 10 integer values to be stored in the array:\n"
    input_prompt_2:       .asciiz "Enter the value of k: "
    input_prompt_3:       .asciiz "Sorted array:\n"
    output_prompt:        .asciiz "The kth largest number is: "
    err_kval1:            .asciiz "ERROR: k cannot be greater than n\n"
    err_kval2:            .asciiz "ERROR: k cannot be less than 1\n"
    linefeed:             .asciiz "\n"
    space:                .asciiz " "

#### Text segment
.text
.globl main

    main:
        # Input Prompt for arr
        la    $a0, input_prompt_1
        li    $v0, 4
        syscall

        move  $s0, $zero              # initialize counter to 0
        la    $s1, arr
        jal   readInput               # unconditional jump to read the input array

        # Input Prompt for k
        la    $a0, input_prompt_2
        li    $v0, 4
        syscall

        li    $v0, 5                    # read int
        syscall 
        move  $t6, $v0                # Store k in $t6

        bgt   $t6, 10, sanityCheck1    # Sanity check for value of k < n
        blt   $t6, 1, sanityCheck2     # Sanity check for value of k > 0

        move  $s0, $zero              # initialize counter $s0 to 0

        # INSERTION SORT (ASCENDING ORDER)
        li    $t0, 1                    # Initialise j to 1
        jal   sortArr                  # Call the sorting method

        # PRINT THE SORTED ARRAY
        la    $a0, input_prompt_3       # Prompt for displaying the sorted array
        li    $v0, 4
        syscall

        move  $s0, $zero              # initialize counter $s0 to 0
        jal   printArr                # call method to print the array

        jal   printNewline

        # FIND THE Kth LARGEST ELEMENT
        la    $a0, output_prompt       # output prompt
        li    $v0, 4
        syscall

        li    $t0, 10                 # $t0 <-- 10 (= n)
        sub   $t6, $t0, $t6           # $t6 <-- (n - k) = (10 - k)

        sll   $t3, $t6, 2             # $t3 <-- 4 * (n - k)
        add   $t3, $t3, $s1           # $t3 <-- (arr + 4 * (n - k)) = &arr[n - k]

        lw    $a0, ($t3)               # print arr[n - k]
        li    $v0, 1
        syscall

        j     ExitProg                 # Exit from main

    readInput:
        bge   $s0, 10, exitToMain    # if i >= N(=10), stop reading input and return to main

        li    $v0, 5                    # read the integer
        syscall  
     
        sll   $t3, $s0, 2              # $t3 <-- 4 * i
        add   $t3, $t3, $s1            # $t3 <-- (arr + 4 * i) = &arr[i]
        sw    $v0, ($t3)               # Store value in arr[i]
        
        addi  $s0, $s0, 1             # i <-- i + 1

        j     readInput               # continue reading the input

    printArr:
        bge   $s0, 10, exitToMain      # if i >= 5, exit the loop

        sll   $t3, $s0, 2              # $t3 <-- 4 * i
        add   $t3, $t3, $s1            # $t3 <-- (arr + 4 * i) = &arr[i]

        lw    $a0, ($t3)                # Load element at arr[i]
        li    $v0, 1
        syscall                      # print arr[i]

        addi  $s0, $s0, 1             # i <-- i + 1    
        j     printSpace              # print a space after each element

    # $t0 = j, $t1 = i, $s1 = arr, $t2 = temp, $t3 = 4 * j, $t4 = 4 * i
    sortArr:
        bge   $t0, 10, exitToMain        # exit outer loop if j >= N(=10)

        sll   $t3, $t0, 2               # $t3 <-- 4 * j
        add   $t3, $t3, $s1             # $t3 <-- (arr + 4 * j) = &arr[j]

        lw    $t2, ($t3)                # temp <-- arr[j]

        addi  $t1, $t0, -1             # i <-- j - 1
        addi  $t0, $t0, 1              # j <-- j + 1

        j     while_loop               # go to the inner i loop
    
    # $s2 = arr[i], $s3 = arr[i+1]
    # INNER WHILE LOOP
    while_loop:
        blt   $t1, $zero, exitLoop      # exit the loop if i < 0

        sll   $t4, $t1, 2               # $t4 <-- 4 * i
        add   $s2, $s1, $t4             # $s2 <-- arr + 4 * i = &arr[i]
        lw    $t7, ($s2)

        ble   $t7, $t2, exitLoop        # exit loop if arr[i] <= temp

        addi  $s3, $s2, 4             # $s3 <-- &arr[i+1]
        lw    $t5, ($s2)              # $t5 <-- arr[i]
        sw    $t5, ($s3)              # arr[i+1] <-- arr[i]

        addi  $t1, $t1, -1            # i <-- i - 1

        j     while_loop              # Continue with the while loop
        
    # EXIT THE OUTER LOOP
    exitLoop:
        addi  $t1, $t1, 1              # i <-- i + 1
        sll   $t4, $t1, 2              # $t4 <-- 4 * (i + 1)
        add   $s2, $s1, $t4            # $s2 <-- arr + 4 * (i + 1) = &arr[i + 1]
        sw    $t2, ($s2)               # arr[i + 1] <-- temp  

        j     sortArr                  # return to the outer loop

    exitToMain:
        jr    $ra                     # return back to main

    sanityCheck1:
        la    $a0, err_kval1              # print the error message
        li    $v0, 4
        syscall

        j     ExitProg                # Exit the program

    sanityCheck2:
        la    $a0, err_kval2              # print the error message
        li    $v0, 4
        syscall

        j     ExitProg                # Exit the program

    # Prints a newline
    printNewline:
        la    $a0, linefeed
        li    $v0, 4
        syscall

        jr    $ra

    # Prints a space
    printSpace:
        la    $a0, space
        li    $v0, 4
        syscall

        j    printArr

    ExitProg:
        li   $v0, 10
        syscall                       # Syscall for exiting the program
    