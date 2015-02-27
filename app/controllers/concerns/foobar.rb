class Foobar

	include Comparable
	include Enumerable
	
	def self.baz(arr)
		#sum = 0
		#arr.uniq.each do |i|
		#	i = Integer(i)
		#	if i < 10 and i.even?
		#		sum += i + 2
		#	end
		#end
		#return sum
		return arr.uniq.inject(0) {|sum, i| (Integer(i) < 10 and Integer(i).even?) ? sum + Integer(i) + 2 : sum + 0}
	end

end
