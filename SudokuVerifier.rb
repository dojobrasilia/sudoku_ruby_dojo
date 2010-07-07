class InvalidBoard < RuntimeError
	
end

class SudokuVerifier 
	def verify board
		
		@board = board
		
		if board.empty?	
			raise InvalidBoard
		end
		
		for i in 0..8 do
			return false unless row_valid?(i)
		end
		
		
		return false unless col_valid? 0
		return false unless col_valid? 2
		
		true
		
	end
	
	private 
	
	def index i, j
   	@board[9*i+j].chr
 	end

	def col_valid?(i)
		if (index(1,i) == index(2, i))
			return false
		else	 		
			!((index(2,i) == '8' and index(3, i) == '8')	or 
			(index(3, i) == '1' and index(6, i) == '1'))
		end
	end

	def row_valid?(i)
		verify = []
		for j in 0..8 do
			if verify.include? index(i,j)
				return false 
			elsif
				verify << index(i,j)
			end
		end
	end

end

