def find_uniq arr
	xor_result = arr.inject(&:^)
	diff = 1
	diff <<= 1 unless xor_result & diff == diff
	arr1 = arr.select { |x| x & diff == diff }
	arr2 = arr.select { |x| x & diff != diff }
	return [arr1.inject(&:^), arr2.inject(&:^)]
end 

array1 = [2,2,3,3,4,4,5,5,6,6,7,8,8,9,9,0,11,11]
array2 = [1,1,-2,-2,-3,5,5,-9]
p find_uniq array1
p find_uniq array2
