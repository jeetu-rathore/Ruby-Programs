
def bubbleSort(arr)
start_time = Time.now
 for i in (arr.length-1).downto(0)
  for j in 1..i
    if (arr[j-1] > arr[j])
        
      arr[j-1],arr[j] = arr[j],arr[j-1]
    
    end
  end
 end
  puts "#{arr}"
  end_time = Time.now
  diff = end_time-start_time
 puts "Bubble Soring time #{diff}"
end

def selectionSort(arr)

start_time = Time.now
 for i in 0..(arr.length-2)
   min = i
  for j in (i+1)..(arr.length-1)
    if (arr[j] < arr[min])
        min = j
       
       arr[i],arr[min] = arr[min],arr[i];
       
    end
  end
 end
  puts "#{arr}"
  end_time = Time.now
  diff = end_time-start_time
 puts "Selection Soring time #{diff}"

end

def insertionSort(arr)
  start_time = Time.now
  for i in 1..(arr.length-1)
    key = arr[i]
    j = i-1
    while (j>0 and arr[j] > key)
      arr[j+1] = arr[j]
      j = j-1
    end
    arr[j+1]=key

  end
  puts "#{arr}"
  end_time = Time.now
  diff = end_time-start_time
 puts "insertion Soring time #{diff}"
end

def heapify(arr, n, i)
    largest = i  # Initialize largest as root
    l = 2 * i + 1     # left = 2*i + 1
    r = 2 * i + 2     # right = 2*i + 2
 
    # See if left child of root exists and is
    # greater than root
    if l < n and arr[i] < arr[l]
        largest = l
    end
    # See if right child of root exists and is
    # greater than root
    if r < n and arr[largest] < arr[r]
        largest = r
    end

 
    # Change root, if needed
    if largest != i
        arr[i],arr[largest] = arr[largest],arr[i]  # swap
 
        # Heapify the root.
        heapify(arr, n, largest)
     end
  end 

def heapSort(arr)
   start_time = Time.now
    n = arr.length
 
    # Build a maxheap.
    for i in ((n/2)-1).downto(0)
        heapify(arr, n, i)
    end
    # One by one extract elements
    for i in (n-1).downto(0)
        arr[i], arr[0] = arr[0], arr[i]   # swap
        heapify(arr, i, 0)
    end
    puts "#{arr}"
  end_time = Time.now
  diff = end_time-start_time
 puts "Heap Soring time #{diff}"
end
input_array = gets.chomp().split(' ').map{|x| x.to_i}
bubbleSort(input_array)
selectionSort(input_array)
insertionSort(input_array)
heapSort(input_array)