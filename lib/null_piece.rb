require "singleton"
class NullPiece < Piece
    include Singleton

    def initialize
        #super
    end 

    def to_s
        "___"
        # self.object_id.to_s 
    end 

end 