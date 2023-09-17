#https://leetcode.com/problems/valid-sudoku/description/

# @param {Character[][]} board
# @return {Boolean}

# below hidden code is not working because hash with array or set not define like this 
# def is_valid_sudoku(board)
#     rws = Hash.new(Set.new) # Ruby has set not works like this 
#     cls = Hash.new(Set.new)
#     squares = Hash.new(Set.new)

#     for r in (0...9)
#         for c in (0...9)
#             next if board[r][c] == "."

#             if ( cls[c.to_s].include?(board[r][c]) ||  squares["(#{r/3}, #{c/3})"].include?(board[r][c]))
#                 puts "board: #{board[r][c]} rows: #{r} cols: #{c} #{rws[r].include?(board[r][c])} "
#                 return false
#             else
#                  puts "else board: #{board[r][c]} rows: #{r} cols: #{c} squares: squares['(#{r/3}, #{c/3})'] #{cls[c]}"
                
#                 cls[c.to_s].add(board[r][c])
#                 rws[r.to_s].add(board[r][c])
#                squares["(#{r/3}, #{c/3})"].add(board[r][c])
#             end
#         end
#     end

#     return true
# end


def is_valid_sudoku(board)
    rows = Hash.new()
    cols = Hash.new()
    squares = Hash.new()

    for r in (0...9)
        for c in (0...9)
            next if board[r][c] == "."

            if (validate_row?(rows[r], board[r][c])) || (validate_col?(cols[c], board[r][c])) ||validate_square?(squares["(#{r/3}, #{c/3})"], board[r][c])
                return false
            else
                cols[c] = compute_val(cols[c], board[r][c])
                rows[r] = compute_val(rows[r], board[r][c])
                squares["(#{r/3}, #{c/3})"] = compute_val(squares["(#{r/3}, #{c/3})"], board[r][c])
            end
        end
    end

    return true
end

def validate_row?(row, number)
    !row.nil? && row.include?(number)
end

def validate_col?(col, number)
    !col.nil? && col.include?(number)
end

def validate_square?(square, number)
    !square.nil? && square.include?(number)
end

def compute_val(hash, value)
    hash.nil? ? [value] : hash.append(value)
end
