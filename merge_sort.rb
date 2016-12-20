def merge_sort(arr)
	return arr if arr.length <= 1
	length = arr.length
	x = arr[0..length/2 - 1]
	y = arr[(length/2)..length]
	p x
	p y
	merge_sort(x)
	merge_sory(y)
	merge(x,y,arr)
end

def merge(a,b,orig)
	puts "Merge: #{a} and #{b}"
	a_pointer, b_pointer = 0, 0
	orig_pointer = 0

	temp = []
	while a_pointer <= a.length - 1 && b_pointer <= b.length - 1
		if a[a_pointer] <= b[b_pointer]
			orig[orig_pointer] = a[a_pointer]
			a_pointer += 1
		else
			orig[orig_pointer] = b[b_pointer]
			b_pointer += 1
		end
		orig_pointer += 1
	end
	if a_pointer == a.length
		while b_pointer <= b.length - 1
			orig[orig_pointer] = b[b_pointer]
			b_pointer += 1
			orig_pointer += 1
		end
	else
		while a_pointer <= a.length - 1 
			orig[orig_pointer] = a[a_pointer]
			a_pointer += 1
			orig_pointer += 1
		end
	end
	p "Merged #{orig}"
	orig
end