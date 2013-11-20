def great_subarr_sum arr
	length = arr.length
	sum = great_sum = 0
	arr.each do |x|
		sum += x
		sum = 0 if sum<0
		great_sum = sum if sum > great_sum
	end
	great_sum = arr.max if great_sum == 0
	return great_sum
end

array1 = [1,3,-3,5,6,-10,-5,7,7,0]
array2 = [-3,-5,-9,-1,-3]
array3 = [1,-2,3,10,-4,7,2,-5]
p great_subarr_sum array1
p great_subarr_sum array2
p great_subarr_sum array3
