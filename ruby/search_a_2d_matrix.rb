# https://leetcode.com/problems/search-a-2d-matrix/submissions/

# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  total_rows = matrix.length
  total_columns = matrix.first.length

  top = 0
  bottom = total_rows - 1

  while(top <= bottom)
    row = (top + bottom)/2

    if target < matrix[row].first
      bottom = row - 1
    elsif target > matrix[row].last
      top = row + 1
    else
      break
    end
  end

  unless top <= bottom
    return false
  end

  row = (top + bottom)/2
  l = 0
  r = total_columns - 1

  while (l <= r)
    mid = (l+r)/2

    if target > matrix[row][mid]
      l = mid + 1
    elsif target < matrix[row][mid]
      r = mid - 1 
    else
      return true
    end
  end

  return false
end
