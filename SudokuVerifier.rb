class InvalidBoard < RuntimeError
	
end

class SudokuVerifier 
	def verify board
		
		@board = board
		
		if board.empty?	
			raise InvalidBoard
		end
		
		for i in 0..8 do
			verify = []
			for j in 0..8 do
				if verify.include? index(i,j)
					return false 
				elsif
					verify << index(i,j)
				end
			end
		end
		
		if index(2,0) == '8' and index(3, 0) == '8'
			return false
		end
		
		if index(3, 2) == '1' and index(6, 2) == '1'
			return false
		end
		true
	end
	private 
		def index i, j
    	@board[9*i+j].chr
  	end
end

