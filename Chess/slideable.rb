module Slideable

    HORIZONTAL_DIRS = []
    DIAGONAL_DIRS = []

    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves(horordiag)
        result = []
        horordiag.each do |pos|
            result << grow_unblocked_moves_in_dir(pos)
        end
        result
    end

    private
    
    # def move_dirs

    # end

    def grow_unblocked_moves_in_dir(dx,dy)
        until (dy > 7 || dx > 7) || (dx < 0 || dy < 0)
            dx += dx
            dy += dy
            result <<
        end
    end
end