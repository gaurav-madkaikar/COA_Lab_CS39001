# COA Lab Assignment 4
# Program: Recursively sort an array of 10 integers
# Group No. 54
# Group Members: Gaurav Madkaikar (19CS30018), Girish Kumar (19CS30018)

#### Data segment
.data
    arr:                  .space  40
    input_prompt_1:       .asciiz "Enter the 10 integer values to be stored in the array:\n"
    input_prompt_2:       .asciiz "Input array:\n"
    output_prompt:        .asciiz "Sorted array:\n"
    linefeed:             .asciiz "\n"
    space:                .asciiz " "

#### Text segment
.text
.globl main

    main:
        # Initialise the main stack frame
        jal 	init_stack 

        # Input Prompt for arr
        la    $a0, input_prompt_1
        li    $v0, 4
        syscall 

        # Read input for array 'arr'
        move  $s0, $zero              # initialize counter(i) to 0
        la    $s1, arr                # load address of arr in $s1
        jal   readInput               # unconditional jump to read the input array

        la    $a0, input_prompt_2
        li    $v0, 4
        syscall 

        # Print the input array
        move  $s0, $zero              # i <-- 0
        move  $a1, $s1                # $a1 <-- arr
        li    $a2, 10                 # $a2 <-- N (10)
        jal   printArray

        # Print a newline
        la    $a0, linefeed
        li    $v0, 4
        syscall

        # Recursively sort the array
        la    $s0, arr    # $s0 <-- arr
        move  $a0, $s0    # $a0 <-- arr
        li    $a1, 0      # a1 <-- left
        li    $a2, 9      # a2 <- right
        jal   recursive_sort    # function call with arguments $a0, $a1, $a2

        la    $a0, output_prompt
        li    $v0, 4
        syscall 

        # Print the sorted array
        move  $a1, $s0
        move  $s0, $zero
        li    $a2, 10
        jal   printArray

        # Exit the program
        j     ExitProg

    ######### Functions (START) #########
    # Read integers and store them in arr
    readInput:
        bge   $s0, 10, exitReadInp     # if i >= N(=10), stop reading input and return to main

        li    $v0, 5                  # read the integer
        syscall  
     
        sll   $t3, $s0, 2             # $t3 <-- 4 * i
        add   $t3, $t3, $s1           # $t3 <-- (arr + 4 * i) = &arr[i]
        sw    $v0, ($t3)              # Store value in arr[i]
        
        addi  $s0, $s0, 1             # i <-- i + 1

        j     readInput               # continue reading the input

    # Stop reading input for arr and return
    exitReadInp:
        jr    $ra

    # Initialise the stack frame
    init_stack: 
        addiu	    $sp, $sp, -12       # $sp <-- $sp - 12
        sw 		    $ra, 8($sp)         # $ra <-- $sp - 4   (return address)
        sw		    $fp, 4($sp)         # $fp <-- $sp       (old frame pointer)
        move		$fp, $sp            # new $fp points to the top of the stack (same as $sp <-- $sp - 24)
        jr          $ra                 # return to callee

    # Argument: $a0 - Input value to be stored on the stack
    pushTostack:  
        sw        $a0, ($sp)  	        # Store $a0 on the stack
        addiu      $sp, $sp, -4         # Decrement $sp
        jr 		  $ra                   # return to the callee

    # Print the array elements separated by spaces
    printArray:
        bge   $s0, $a2, exitPrint     # if i >= N, exit the loop

        sll   $t1, $s0, 2              # $t1 <-- 4 * i
        add   $t1, $t1, $a1            # $t1 <-- (arr + 4 * i) = &arr[i]

        lw    $a0, ($t1)               # Load element at arr[i]
        li    $v0, 1
        syscall                        # print arr[i]

        addi  $s0, $s0, 1              # i <-- i + 1    
        j     printSpace               # print a space after each element
        
    # Prints a space
    printSpace:
        la    $a0, space
        li    $v0, 4
        syscall
        
        j     printArray

    # Exit the print function
    exitPrint:
        jr   $ra

    # Prints a newline
    printNewline:
        la    $a0, linefeed
        li    $v0, 4
        syscall

        jr    $ra

    ######### Recursive Sorting
    # Arguments: $a0 <- Starting address, $a1 <- left, $a2 <- right
    recursive_sort:
        # Maintain the stack frame for each function call
        addiu	    $sp, $sp, -12       # $sp <-- $sp - 12
        sw 		    $ra, 8($sp)         # $ra <-- $sp + 8   (return address)
        sw		    $fp, 4($sp)         # $fp <-- $sp + 4   (old frame pointer)
        move		$fp, $sp            # new $fp points to the top of the stack (same as $sp <-- $sp - 24)

        # Store registers on the stack memeory    
        addiu   $sp, $sp, -20   # allocate memory
        sw		$s1, 0($fp)		# store l
	    sw		$s2, -4($fp)	# store r
	    sw		$s3, -8($fp)	# store p
	    sw		$a1, -12($fp)	# store left
	    sw		$a2, -16($fp)	# store right
        
        move    $s1, $a1        # l <-- left
        move    $s2, $a2        # r <-- right
        move    $s3, $a1        # p <-- left

        j     loop              # Process the loop
                 
    loop:
        bge   $s1, $s2, exitToMain     # while (l < r): go to leftInc ; else return to main
        
        j     leftInc

    leftInc:
        sll   $t3, $s1, 2              # $t3 <-- 4 * l
        sll   $t4, $s3, 2              # $t4 <-- 4 * p
        add   $t5, $t3, $s0            # $t5 <-- (arr + 4 * l) = &arr[l]
        add   $t6, $t4, $s0            # $t6 <-- (arr + 4 * p) = &arr[p]
        lw    $t7, 0($t5)
        lw    $t8, 0($t6)

        bgt     $t7, $t8, rightDec     # arr[l] <= arr[p]
        bge     $s1, $a2, rightDec     # l < right
        addi    $s1, $s1, 1            # l++

        j       leftInc                # continue the loop  

    rightDec:
        sll   $t3, $s2, 2              # $t3 <-- 4 * r
        sll   $t4, $s3, 2              # $t4 <-- 4 * p
        add   $t5, $t3, $s0            # $t5 <-- (arr + 4 * r) = &arr[r]
        add   $t6, $t4, $s0            # $t6 <-- (arr + 4 * p) = &arr[p]
        lw    $t7, ($t5)
        lw    $t8, ($t6)

        blt     $t7, $t8, mainProc     # arr[r] >= arr[p]
        ble     $s2, $a1, mainProc     # r > left
        addi    $s2, $s2, -1           # r--

        j       rightDec               # continue the loop              

    mainProc:
        blt  $s1, $s2, exitProc        # if l >= r, continue   

        # swap arr[p] and arr[r]
        move   $s4, $a1          # $s4 <-- left
        move   $t3, $s3          # $t3 <-- p
        move   $t4, $s2          # $t4 <-- r
        move   $a0, $t3
        move   $a1, $t4
        jal    swap 

        # load initial values after swap call
        lw		$a1, -12($fp)	# load a1
	    lw		$a2, -16($fp)	# load a2  
        lw      $ra, 8($fp)  

        # recusrive_sort(arr, left, r - 1)
        move   $a0, $s0
        move   $a1, $s4
        move   $a2, $s1
        addi   $a2, $a2, -1
        jal  recursive_sort

        # load initial values after recursive_sort call
        lw		$a1, -12($fp)	# load a1
	    lw		$a2, -16($fp)	# load a2
	    lw		$ra,  8($fp)	# load ra
       
    #   recusrive_sort(arr, r + 1, right)
        move $a0, $s0  
        move $a1, $s2
        addi $a1, $a1, 1     # a1 <-- r + 1
        jal recursive_sort

        # load initial values after recursive_sort call and return
        lw		$a1, -12($fp)	# load a1
	    lw		$a2, -16($fp)	# load a2
        lw      $s1, ($fp)       
        lw      $s2, -4($fp)     
        lw      $s3, -8($fp)

        lw    $ra, 8($fp)       # Restore return address
        lw    $fp, 4($fp)       # Restore frame pointer
        addiu $sp, $sp, 32      # pop the stackframe
        jr   $ra                # return

    # swap values in indices $a0, $a1
    swap:
        addiu $sp, $sp, -8
        sw    $ra, 4($sp)   

        sll   $t3, $a0, 2              # $t3 <-- 4 * p
        sll   $t4, $a1, 2              # $t4 <-- 4 * r
        add   $t5, $t3, $s0            # $t5 <-- (arr + 4 * p) = &arr[p]
        add   $t6, $t4, $s0            # $t6 <-- (arr + 4 * r) = &arr[r]

        # swap procedure
        lw    $t7, 0($t5)
        lw    $t8, 0($t6)
        sw    $t8, 0($t5)
        sw    $t7, 0($t6)

        # Pop the stackframe and return
        lw 	  $ra, 4($sp)
        addiu $sp, $sp, 8
        jr    $ra

    exitProc:
        # swap arr[l] and arr[r]
        move  $a0, $s1
        move  $a1, $s2
        jal   swap

        # Pop the stackframe
        lw		$a1, -12($fp)	# load a1
	    lw		$a2, -16($fp)	# load a2  
        lw      $ra, 8($fp) 

        # Continue the outer loop
        j     loop   

    exitToMain:
        # Pop the stackframe
        lw    $ra, 8($fp)
        lw    $fp, 4($fp)
        addiu $sp, $sp, 32
        jr    $ra                      # return back to main

    ######### Functions (END) #########
    # Exit the program
    ExitProg:
        # Pop the main stackframe
        lw    $ra, 8($fp)
        lw    $fp, 4($fp)
        addiu $sp, $sp, 12

        li   $v0, 10
        syscall                        # Syscall for exiting the program
    