require 'SudokuVerifier'

describe SudokuVerifier do

	before :each do
		@v = SudokuVerifier.new
		@board_matrix = [
											[5, 3, 4, 6, 7, 8, 9, 1, 2],
											[6, 7, 2, 1, 9, 5, 3, 4, 8],
								      [1, 9, 8, 3, 4, 2, 5, 6, 7],
								
								      [8, 5, 9, 7, 6, 1, 4, 2, 3],
								      [4, 2, 6, 8, 5, 3, 7, 9, 1],
								      [7, 1, 3, 9, 2, 4, 8, 5, 6],
								
								      [9, 6, 1, 5, 3, 7, 2, 8, 4],
								      [2, 8, 7, 4, 1, 9, 6, 3, 5],
								      [3, 4, 5, 2, 8, 6, 1, 7, 9]
										]
	end

	it 'should recognize repeated numbers on first row' do
		@board_matrix[0][8] = 1
		@v.has_errors(@board_matrix).should be_true
	end
	
	it 'should recognize repeated numbers on second row' do
		@board_matrix[1][4] = 1
		@v.has_errors(@board_matrix).should be_true
	end
	
	it 'should recognize repeated numbers on first column' do
		@board_matrix[2][0] = 8
		@board_matrix[2][2] = 1
		@v.has_errors(@board_matrix).should be_true
	end
	
	it 'should recognize repeated numbers on third column' do
		@board_matrix[3][2]=1
		@board_matrix[3][5]=9
		SudokuVerifier.new.has_errors(@board_matrix).should be_true
	end
	
	it 'should reject an empty board' do
		lambda{@v.has_errors ''}.should raise_error(InvalidBoard)
	end	
	
	it 'should accept valid board' do
	 	@v.has_errors(@board_matrix).should be_false
  end

end