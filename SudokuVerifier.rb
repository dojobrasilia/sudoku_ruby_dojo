class InvalidBoard < RuntimeError
	
end

class SudokuVerifier 
	def self.verify board		
		if board.empty?	
			raise InvalidBoard
		end
		
		if board[8].chr == '1'
			return false 
		elsif board[8+5].chr == '1'
				return false 
		end
	
		true
	end
end

