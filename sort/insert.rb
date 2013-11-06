def insert_sort arr   
  arr.each_with_index do |el,i|    
    j = i - 1    
      while j >= 0    
        break if arr[j] <= el    
        arr[j + 1] = arr[j]    
        j -= 1    
      end    
    arr[j + 1] = el    
  end    
  return arr    
end



array = [2,5,8,3,6,9,1,7,12,20,15]  
puts insert_sort(array)

