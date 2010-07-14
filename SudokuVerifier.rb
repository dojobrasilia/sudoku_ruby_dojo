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
	
	def col_valid?(i)
		if (@board[1][i] == @board[2][i])
			return false
		else	 		
			!(
				(@board[2][i] == '8' and @board[3][i] == '8')	or 
				(@board[3][i] == '1' and @board[6][i] == '1')
			)
		end
	end

	def row_valid?(i)
		verify = []
		for j in 0..8 do
			if verify.include? @board[i][j]
				return false 
			elsif
				verify << @board[i][j]
			end
		end
	end

end

