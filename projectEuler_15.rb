def count_chains n
  chain = Array.new(n+1) { Array.new(n+1) }

  (0..n).each do |i|
    (0..n).each do |j|
      if (i == 0) or (j == 0)
        chain[i][j] = 1
      else
        chain[i][j] = chain[i-1][j].to_i + chain[i][j-1].to_i
      end
    end
  end
  puts chain[n][n]
end

count_chains(20)
