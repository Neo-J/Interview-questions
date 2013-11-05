# puddle with ruby 
def puddle_ruby array
	p_l, p_r = 0, array.length - 1
	max_l, max_r = array[0], array[array.length-1]
	volume = 0
	while p_l < p_r
		if max_l < max_r
			p_l += 1
			array[p_l] > max_l ? max_l = array[p_l] : volume += max_l - array[p_l]
		else
			p_r -= 1
			array[p_r] > max_r ? max_r = array[p_r] : volume += max_r - array[p_r]
		end
	end
	volume
end

t1 = [2, 5, 1, 2, 3, 4, 7, 7 ,6]
t2 = [2, 5, 1, 3, 1, 2, 1, 7, 7, 6]
t3 = [6, 1, 4, 6, 7, 5, 1, 6, 4]
p puddle_ruby t1 
p puddle_ruby t2
p puddle_ruby t3