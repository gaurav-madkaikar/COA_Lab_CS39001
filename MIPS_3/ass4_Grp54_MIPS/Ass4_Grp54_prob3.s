# COA Lab Assignment 4
# Program: Recursively search for a key in a sorted array of N elements
# Group No. 54
# Group Members: Gaurav Madkaikar (19CS30018), Girish Kumar (19CS30018)

#### Data segment
.data
    arr:                  .space  200
    input_prompt_1:       .asciiz "Enter the number of elements to be stored: "
    input_prompt_2:       .asciiz "Enter the elements of the array:\n"
    input_prompt_4:       .asciiz "Enter the value of the element to be searched: "
    input_prompt_3:       .asciiz "Input array:\n"
    output_prompt_1:      .asciiz "Sorted array:\n"
    output_prompt_2a:     .asciiz "The value < "
    output_prompt_2b:     .asciiz " > "
    output_prompt_2c_s:   .asciiz "is FOUND in the array at index < "
    output_prompt_2c_f:   .asciiz "is NOT FOUND in the array\n"
    output_prompt_2d:     .asciiz " >\n"
    linefeed:             .asciiz "\n"
    space:                .asciiz " "

#### Text segment
.text
.globl main

    main:
        # Initialise the main stack frame
        jal 	init_stack 

        # Input Prompt for n
        la    $a0, input_prompt_1
        li    $v0, 4
        syscall

        # Store n
        li   $v0, 5
        syscall
        move $s7, $v0           # $s7 <-- n

        # Input Prompt for arr
        la    $a0, input_prompt_2
        li    $v0, 4
        syscall 

        # Read input for array 'arr'
        move  $s0, $zero              # initialize counter (i) to 0
        la    $s1, arr                # load address of arr in $s1
        jal   readInput               # unconditional jump to read the input array

        la    $a0, input_prompt_3
        li    $v0, 4
        syscall 

        # Print the array
        move  $s0, $zero               # i <-- 0
        move  $a1, $s1                 # $a1 <-- arr
        move  $a2, $s7                 # $a2 <-- N (10)
        jal   printArray

        la    $a0, linefeed
        li    $v0, 4
        syscall

        # Recursively sort the array
        la    $s0, arr    # $s0 <-- arr
        move  $a0, $s0    # $a0 <-- arr
        li    $a1, 0      # a1 <-- left

        move  $t0, $s7
        addi  $t0, $t0, -1
        move  $a2, $t0    # a2 <- right

        jal   recursive_sort    # function call with arguments $a0, $a1, $a2

        la    $a0, output_prompt_1
        li    $v0, 4
        syscall 

        # Print the array
        move  $a1, $s0
        move  $s0, $zero
        move  $a2, $s7
        jal   printArray

        la    $a0, linefeed
        li    $v0, 4
        syscall

        # Input prompt for key 
        la    $a0, input_prompt_4
        li    $v0, 4
        syscall

        # Store value of key
        li    $v0, 5
        syscall
        move  $s6, $v0      # $s6 <-- key

        # Recursive search for key
        la    $s0, arr
        move  $a0, $s0      # $a0 <-- arr
        li    $a1, 0        # $a1 <-- 0

        move  $t0, $s7      # $t0 <-- n
        addi  $t0, $t0, -1  # $t0 <-- n - 1
        move  $a2, $t0      # $a2 <-- n - 1
        move  $a3, $s6      # $a3 <-- key

        jal   recursive_search

        move  $s5, $v0      # store the location of key in $s5

        # Print index (0 - based indexing)
        la    $a0, output_prompt_2a
        li    $v0, 4
        syscall

        move  $a0, $s6      # print n
        li    $v0, 1
        syscall

        la    $a0, output_prompt_2b
        li    $v0, 4
        syscall

        # print success
        beq   $s5, -1, printFail

        la    $a0, output_prompt_2c_s
        li    $v0, 4
        syscall

        move  $a0, $s5      # print the location of key in arr
        li    $v0, 1
        syscall

        la    $a0, output_prompt_2d
        li    $v0, 4
        syscall

        # Exit the program
        j     ExitProg

    readInput:
        bge   $s0, $s7, exitReadInp     # if i >= N, stop reading input and return to main

        li    $v0, 5                  # read the integer
        syscall  
     
        sll   $t3, $s0, 2             # $t3 <-- 4 * i
        add   $t3, $t3, $s1           # $t3 <-- (arr + 4 * i) = &arr[i]
        sw    $v0, ($t3)              # Store value in arr[i]
        
        addi  $s0, $s0, 1             # i <-- i + 1

        j     readInput               # continue reading the input

    # Stop reading input 
    exitReadInp:
        jr    $ra

    ######### Functions(START) #########
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

    # Print the array arr
    printArray:
        addiu $sp, $sp, -8
        sw    $ra, 4($sp) 

    Printloop:
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
        
        j     Printloop

    exitPrint:
        lw 	  $ra, 4($sp)
        addiu $sp, $sp, 8
        jr    $ra

    # Prints a newline
    printNewline:
        la    $a0, linefeed
        li    $v0, 4
        syscall

        jr    $ra

    ######### Recursive Sorting
    # Arguments: $a0 <- Starting address, $a1 <- left, $a2 <- right
    recursive_sort:
        addiu	    $sp, $sp, -12       # $sp <-- $sp - 12
        sw 		    $ra, 8($sp)         # $ra <-- $sp - 4   (return address)
        sw		    $fp, 4($sp)         # $fp <-- $sp       (old frame pointer)
        move		$fp, $sp            # new $fp points to the top of the stack (same as $sp <-- $sp - 24)

        # Store register values onto the stackframe
        addiu   $sp, $sp, -20
        sw		$s1, 0($fp)		# store l
	    sw		$s2, -4($fp)	# store r
	    sw		$s3, -8($fp)	# store p
	    sw		$a1, -12($fp)	# store left
	    sw		$a2, -16($fp)	# store right
        
        move    $s1, $a1        # l <-- left
        move    $s2, $a2        # r <-- right
        move    $s3, $a1        # p <-- left

        j     loop
                 
    loop:
        bge   $s1, $s2, exitToMain
        
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
        lw      $ra, 8($fp)     # load ra

        # recursive_sort(arr, left, r - 1)
        move   $a0, $s0
        move   $a1, $s4
        move   $a2, $s1
        addi   $a2, $a2, -1  # a2 <-- r - 1

        jal  recursive_sort

        # load initial values after recursive_sort call
        lw		$a1, -12($fp)	# load a1
	    lw		$a2, -16($fp)	# load a2
	    lw		$ra,  8($fp)	# load ra
       
        # recusrive_sort(arr, r + 1, right)
        move $a0, $s0  
        move $a1, $s2
        addi $a1, $a1, 1     # a1 <-- r + 1

        jal recursive_sort

        # load initial values after recursive_sort call
        lw		$a1, -12($fp)	# load a1
	    lw		$a2, -16($fp)	# load a2
        lw     $s1, ($fp)       
        lw     $s2, -4($fp)     
        lw     $s3, -8($fp)

        lw    $ra, 8($fp)       # Restore return address
        lw    $fp, 4($fp)       # Restore frame pointer
        addiu $sp, $sp, 32      # pop the stackframe
        jr   $ra                # return

    # swap values in indices $a0, $a1
    swap:
        addiu $sp, $sp, -8
        sw    $ra, 4($sp)   

        sll   $t3, $a0, 2              # $t3 <-- 4 * k1
        sll   $t4, $a1, 2              # $t4 <-- 4 * k2
        add   $t5, $t3, $s0            # $t5 <-- (arr + 4 * k1) = &arr[k1]
        add   $t6, $t4, $s0            # $t6 <-- (arr + 4 * k2) = &arr[k2]

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

        j     loop   

    exitToMain:
        # Pop the stackframe
        lw    $ra, 8($fp)
        lw    $fp, 4($fp)
        addiu $sp, $sp, 32
        jr    $ra                      # return back to main

    # Recursive search for an element in the array
    # Arguments: $a0 <-- arr,  $a1 <-- start, $a2 <-- end, $a3 <-- key 
    recursive_search:
        addiu	    $sp, $sp, -12       # $sp <-- $sp - 12
        sw 		    $ra, 8($sp)         # $ra <-- $sp - 4   (return address)
        sw		    $fp, 4($sp)         # $fp <-- $sp       (old frame pointer)
        move		$fp, $sp            # new $fp points to the top of the stack (same as $sp <-- $sp - 24)
        
        # Store registers in memory
        addiu   $sp, $sp, -20
        sw		$s1, 0($fp)		# store mid1
	    sw		$s2, -4($fp)	# store mid2
	    sw		$a1, -8($fp)	# store start
	    sw		$a2, -12($fp)	# store end
	    sw		$a3, -16($fp)	# store key 

        j   searchLoop          # run the outer loop

    searchLoop:
        bgt  $a1, $a2, exitSearchLoop     # while (start <= end)

        sub  $t3, $a2, $a1                # $t2 <-- (end - start)
       
        li   $t0, 3           
        div  $t3, $t0                     # Lo <-- (end - start) / 3
        mflo $t3                          # $t3 <-- (end - start) / 3 
        
        # store mid1 = start + (end - start) / 3
        add $s1, $a1, $t3
        
        # store mid2 = end - (end - start) / 3
        sub $s2, $a2, $t3

        sll $t4, $s1, 2     # $t4 <-- 4 * mid1
        add $t4, $t4, $s0   # $t4 <-- arr + 4 * mid1 = &arr[mid1]
        lw  $t5, 0($t4)     # $t5 <-- arr[mid1]

        # Condn 1: if key == a[mid1]: return mid1, else jump to condn2
        bne $a3, $t5, condn2

        # Restore register values and return value    
        lw    $a1, -8($fp)       
        lw    $a2, -12($fp) 
        lw    $a3, -16($fp) 
        lw    $ra, 8($fp)       # Restore return address
        lw    $fp, 4($fp)       # Restore frame pointer
        addiu $sp, $sp, 32      # pop the stack frame

        move   $v0, $s1         # load the return value (mid1)
        jr   $ra
        
    condn2:
        sll $t4, $s2, 2     # $t4 <-- 4 * mid2
        add $t4, $t4, $s0   # $t4 <-- arr + 4 * mid2 = &arr[mid2]
        lw  $t5, 0($t4)     # $t5 <-- arr[mid2]

        # Condn 2: if key == a[mid2], else jump to condn3
        bne $a3, $t5, condn3

        # Restore pointers and return value 
        # Restore register values
        lw    $a1, -8($fp)       
        lw    $a2, -12($fp) 
        lw    $a3, -16($fp) 
        lw    $ra, 8($fp)       # Restore return address
        lw    $fp, 4($fp)       # Restore frame pointer
        addiu $sp, $sp, 32      # pop the stack frame

        move $v0, $s2           # load the return value (mid2)
        jr   $ra

    condn3:
        sll $t4, $s1, 2     # $t4 <-- 4 * mid1
        add $t4, $t4, $s0   # $t4 <-- arr + 4 * mid1 = &arr[mid1]
        lw  $t5, 0($t4)     # $t5 <-- arr[mid1]

        # Condn 3: if key < a[mid1]: call recursive_search, else jump to condn4
        bge $a3, $t5, condn4

        # recursive_search(A, start, mid1 - 1, key)
        addi $a2, $s1, -1       # $a2 <-- mid1 - 1
        jal  recursive_search

        # Restore register values
        lw    $a1, -8($fp)       
        lw    $a2, -12($fp) 
        lw    $a3, -16($fp) 

        # Restore pointers and return value 
        lw    $ra, 8($fp)       # Restore return address
        lw    $fp, 4($fp)       # Restore frame pointer
        addiu $sp, $sp, 32      # pop the stack frame

        jr   $ra 

    condn4:
        sll $t4, $s2, 2     # $t4 <-- 4 * mid2
        add $t4, $t4, $s0   # $t4 <-- arr + 4 * mid2 = &arr[mid2]
        lw  $t5, 0($t4)

        # Condn 4: if key > a[mid2], else jump to condn2
        ble $a3, $t5, elseCondn

        # recursive_search(A, mid2 + 1, end, key)
        addi $a1, $s2, 1
        jal  recursive_search

        # Restore register values and pop stackframe (return)
        lw    $a1, -8($fp)       
        lw    $a2, -12($fp) 
        lw    $a3, -16($fp) 
        lw    $ra, 8($fp)       # Restore return address
        lw    $fp, 4($fp)       # Restore frame pointer
        addiu $sp, $sp, 32      # pop the stack frame

        jr   $ra 

    elseCondn:
        # recursive_search(A, mid1 + 1, mid2 + 1, key)
        addi $a1, $s1, 1        # $a1 <-- mid1 + 1
        addi $a2, $s2, -1       # $a2 <-- mid2 + 1
        jal  recursive_search

        # Restore register values and pop stackframe (return)
        lw    $a1, -8($fp)       
        lw    $a2, -12($fp) 
        lw    $a3, -16($fp) 
        lw    $ra, 8($fp)       # Restore return address
        lw    $fp, 4($fp)       # Restore frame pointer
        addiu $sp, $sp, 32      # pop the stack frame

        jr   $ra


    exitSearchLoop:
        # Restore pointers and return value 
        lw    $ra, 8($fp)       # Restore return address
        lw    $fp, 4($fp)       # Restore frame pointer
        addiu $sp, $sp, 32      # pop the stack frame

        # load the return value
        li   $v0, -1
        jr   $ra 

    # Print key not found
    printFail:
        la    $a0, output_prompt_2c_f
        li    $v0, 4
        syscall

        j     ExitProg

    ExitProg:
        lw    $ra, 8($fp)
        lw    $fp, 4($fp)
        addiu $sp, $sp, 12

        li   $v0, 10
        syscall                        # Syscall for exiting the program
    