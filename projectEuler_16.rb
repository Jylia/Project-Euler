puts (2**1000).to_s.split(//).inject(0) {|z, x| z + x.to_i}