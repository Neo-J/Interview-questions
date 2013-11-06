def select_sort array
  b = []  
  a.size.times do |i|  
    min = a.min  
    b << min  
    a.delete_at(a.index(min))  
  end  
  return b  
end 

array = [2,5,8,3,6,9,1,7,12,20,15]  
puts select_sort(array)
