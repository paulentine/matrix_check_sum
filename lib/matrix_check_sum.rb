# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

# Time complexity: O(n * n) = O(n^2), where n is the length of each row & column
# Space complexity: O(1), since we only need to allocate a constant space for our variables

def matrix_check_sum(matrix)
  i = 0
  j = 0
  rows_sum = 0
  cols_sum = 0
  while matrix[i]
    while matrix[j]
      rows_sum += matrix[i][j]
      cols_sum += matrix[j][i]
      j += 1
    end
    return false if rows_sum != cols_sum
    i += 1
  end
  return true
end
