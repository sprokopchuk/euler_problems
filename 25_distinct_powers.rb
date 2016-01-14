def distinct_powers a = 2..100, b = 2..100
	distinct_terms = []
	a.each do |i|
		b.each do |j|
			distinct_terms << i ** j
		end
	end
	distinct_terms.uniq!.size
end

p distinct_powers