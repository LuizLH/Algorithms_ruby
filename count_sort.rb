#Implementing the count sort algorithm

def CountSort(list)
    n = list.length
    puts "n = #{n}"
 
    # The output character array that
    # will have sorted arr
    #char[] output = new char[n];
    output = Array.new(n, "") 
    puts "output array"
    
    # Create a count array to store
    # count of individual characters
    # and initialize count array as 0
    #int[] count = new int[256];
    count = Array.new(256, 0)
    puts "count array"

    # store count of each character
    # for (int i = 0; i < n; ++i)
    #    ++count[arr[i]];
    for i in (0..n-1)
        count[list[i].ord] = count[list[i].ord] + 1
    end

    puts "Store count of each character"
    p count

    # Change count[i] so that count[i]
    # now contains actual position of
    # this character in output array
    #    for (int i = 1; i <= 255; ++i)
    #        count[i] += count[i - 1];
    for i in (1..255)
        count[i] += count[i - 1]
    end

    puts "Sum count"
    p count

    # Build the output character array
    # To make it stable we are operating in reverse
    # order.
    # for (int i = n - 1; i >= 0; i--) {
    #     output[count[arr[i]] - 1] = arr[i];
    #     --count[arr[i]];
    # }
    for i in (n-1..0)
        output[count[list[i].ord] - 1] = list[i]
        count[list[i].ord] = count[list[i].ord] - 1
    end
    
    puts "Minus count"
    p count

    puts "output array"
    p output
    # Copy the output array to arr, so
    # that arr now contains sorted
    # characters
    # for (int i = 0; i < n; ++i)
    #     arr[i] = output[i];
    for i in (0..n-1)
        list[i] = output[i]
    end

    puts "exit"
    p list

end

=begin
static void countsort(char[] arr)
    {
        int n = arr.Length;
 
        // The output character array that
        // will have sorted arr
        char[] output = new char[n];
 
        // Create a count array to store
        // count of individual characters
        // and initialize count array as 0
        int[] count = new int[256];
 
        for (int i = 0; i < 256; ++i)
            count[i] = 0;
 
        // store count of each character
        for (int i = 0; i < n; ++i)
            ++count[arr[i]];
 
        // Change count[i] so that count[i]
        // now contains actual position of
        // this character in output array
        for (int i = 1; i <= 255; ++i)
            count[i] += count[i - 1];
 
        // Build the output character array
        // To make it stable we are operating in reverse
        // order.
        for (int i = n - 1; i >= 0; i--) {
            output[count[arr[i]] - 1] = arr[i];
            --count[arr[i]];
        }
 
        // Copy the output array to arr, so
        // that arr now contains sorted
        // characters
        for (int i = 0; i < n; ++i)
            arr[i] = output[i];
    }
=end