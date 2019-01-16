class Piece
    # attr_reader :color
    def initialize(color, board, pos, value="X")
        @color = color
        @board = board
        @pos = pos 
        @value = value
    end 

    def to_s
        # print " " + @value + " "
        # (self.color).to_s
        "_#{@value.to_s}_"
    end 

    def empty?

    end 

    def valid_moves

    end 

    def pos=(val)

    end 

    def symbol 

    end 

    private 

    def move_into_check?(end_pos)

    end

    # def inspect
    #     print " " + @color.to_s + " "
    # end 
end 

