require_relative "piece.rb"
require_relative "display.rb"
require "byebug"

 
class Board 

    attr_reader :board

    def initialize
        @board = Array.new(8){Array.new(8)}
    end

    def populate_board
        pops = [0, 1, 6, 7] 
        color = ""
        pops.each do |line|
            if line < 2 
                color = :B 
            else
                color = :W
            end 

            @board[line].each_index do |p_idx|
                # testing
                @board[line][p_idx] = color
                # production 
                # @board[line][p_idx] = Piece.new(color, self, [line, p_idx])
            end 
        end
    end 

    # def [](pos)

    # end

    # def []=(pos,val)

    # end 

    def move_piece(start_pos,end_pos)
        # debugger
        s_x, s_y = start_pos[0], start_pos[1]
        e_x, e_y = end_pos[0], end_pos[1]

        if valid_pos?([start_pos,end_pos])
            @board[s_x][s_y],@board[e_x][e_y] = @board[e_x][e_y],@board[s_x][s_y]
        end 
    end 

    def valid_pos?(pos)
        start_pos, end_pos = pos
        
        s_x, s_y = start_pos[0], start_pos[1]
        e_x, e_y = end_pos[0], end_pos[1]

        if (s_x > 7 || s_x < 0) && (s_y > 7 || s_y < 0)
            raise "the end position is invalid"
        elsif (e_x > 7 || e_x < 0) && (e_y > 7 || e_y < 0)
            raise "the end position is invalid"
        end 

        raise "there's no piece at start" unless @board[s_x][s_y]

        return true
    end 

    def add_piece(piece, pos)

    end 
    def checkmate?(color)
        
    end 

    def in_check?(color)

    end

    def find_king(color)

    end 

    def pieces

    end 

    def dup

    end 

    def move_piece!(color, start_pos, end_pos)

    end 

end 

if __FILE__ == $PROGRAM_NAME
    abb = Board.new
    abb.populate_board

    disp = Display.new(abb)
    disp.render
    #abb.display
    #regular movement
    abb.move_piece([1,1], [2, 1])

    # invalid start
    # abb.move_piece([4,4], [2, 1])

    # invalid end move
    #abb.move_piece([1,1], [888, -11])

    puts
    puts
    puts

    # abb.display
    disp.render
    while true
        input = disp.cursor.get_input
        # p input
        puts
        puts
        puts

        # abb.display
        disp.render
    end
end