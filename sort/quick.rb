def quick_sort arr
	(a = arr.pop) ? quick_sort(arr.select{|i| i <= a}) + [a] + quick_sort(arr.select{|i| i > a}) : []
end

array = [2,5,8,3,6,9,1,7,12,20,15]  
puts quick_sort(array)

