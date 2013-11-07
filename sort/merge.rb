def merge(l, r)  
  result = []  
  while l.size > 0 and r.size > 0 do  
    if l.first < r.first  
      result << l.shift  
    else  
      result << r.shift  
    end  
  end  
  if l.size > 0  
    result += l  
  end  
  if r.size > 0  
    result += r  
  end
  return result  
end  
  
def merge_sort(a)  
  return a if a.size <= 1  
  middle = a.size / 2  
  left = merge_sort(a[0, middle])  
  right = merge_sort(a[middle, a.size - middle])  
  merge(left, right)  
end  


array = [2,5,8,3,6,9,1,7,12,20,15]  
puts merge_sort(array)



