require "byebug"
require_relative "cursor.rb"
require "colorize"

class Display

    attr_accessor :cursor
    def initialize(board)
        @board = board
        @cursor = Cursor.new([0,0], board)
        @prev = []
    end
    
    # def render
    #     x, y = @cursor.cursor_pos
    #     if cursor.selected
    #         a, b = @cursor.prev_pos
    #     end 

    #     (@board.board).each_with_index do |line, x_idx|
    #         line.each_with_index do |piece, y_idx|
                
    #             if a == x_idx && b == y_idx && cursor.selected
    #                 print ("_" + piece.to_s + "_").colorize(:color => :white, :background => :green) + " "
    #             elsif x == x_idx && y == y_idx
    #                 print ("_" + piece.to_s + "_").colorize(:color => :white, :background => :red) + " "
    #             else 
    #                 print ("_" + piece.to_s + "_") + " "
    #             end
    #         end
    #         puts
    #     end
    #     # (@board.board[x][y])
    # end 

    # def render
    #     x, y = @cursor.cursor_pos
    #     if @cursor.selected
    #         a, b = @cursor.prev_pos
    #     end 

    #     (@board.board).each_with_index do |line, x_idx|
    #         line.each_with_index do |piece, y_idx|
                
    #             if a == x_idx && b == y_idx && @cursor.selected
    #                 print ("_" + piece.to_s + "_").colorize(:color => :white, :background => :green) + " "
    #                 # @cursor.selected = false
    #             elsif x == x_idx && y == y_idx
    #                 print ("_" + piece.to_s + "_").colorize(:color => :white, :background => :red) + " "
    #             else 
    #                 print ("_" + piece.to_s + "_") + " "
    #             end
    #         end
    #         puts
    #     end
    #     # (@board.board[x][y])
    # end 

    # def render
    #     # debugger
    #     x, y = @cursor.cursor_pos
    #     if @cursor.selected
    #         a, b = @cursor.prev_pos
    #     end 

    #     (@board.board).each_with_index do |line, x_idx|
    #         line.each_with_index do |piece, y_idx|
                
    #             if a == x_idx && b == y_idx && @cursor.selected
    #                 print ("_" + piece.to_s + "_").colorize(:color => :white, :background => :green) + " " 
    #             elsif x == x_idx && y == y_idx
    #                 print ("_" + piece.to_s + "_").colorize(:color => :white, :background => :red) + " "
    #             else 
    #                 print ("_" + piece.to_s + "_") + " "
    #             end
    #         end
    #         puts
    #     end
    #     # (@board.board[x][y])
    # end 


    # Version 4.0 WORKING 
    # def render
    #     # system("clear")
    #     if @cursor.selected
    #         a, b = @cursor.prev_pos
    #         @prev = [a, b]
    #     else 
    #         x, y = @cursor.cursor_pos
    #     end 

    #     (@board.board).each_with_index do |line, x_idx|
    #         line.each_with_index do |piece, y_idx|
    #             # debugger
    #             if @prev[0] == x_idx && @prev[1] == y_idx
    #                 print ("_" + piece.to_s + "_").colorize(:color => :white, :background => :green) + " "                
    #             elsif x == x_idx && y == y_idx
    #                 print ("_" + piece.to_s + "_").colorize(:color => :white, :background => :red) + " "
    #             else 
    #                 print ("_" + piece.to_s + "_") + " "
    #             end
    #         end
    #         puts
    #     end
    #     # (@board.board[x][y])
    # end 

    # Version 4.20
    def render
        # system("clear")
        if @cursor.selected
            a, b = @cursor.prev_pos
            @prev = [a, b]
        else 
            x, y = @cursor.cursor_pos
        end 

        (@board.board).each_with_index do |line, x_idx|
            line.each_with_index do |piece, y_idx|
                # debugger
                if @prev[0] == x_idx && @prev[1] == y_idx
                    print (piece.to_s).colorize(:color => :white, :background => :green) + " "                
                elsif x == x_idx && y == y_idx
                    print (piece.to_s).colorize(:color => :white, :background => :red) + " "
                else 
                    print (piece.to_s) + " "
                end
            end
            puts
        end
        # (@board.board[x][y])
    end 
    
end 