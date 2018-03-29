class String
  def censor(bad_word)
    self.gsub! "#{bad_word}", "CENSORED"
  end

  def num_of_chars
    size # existing ruby method, no need for additional self call
  end
end

p "The bunny was in trouble with the king's bunny".censor('bunny')
p "The bunny was in trouble with the king's bunny".num_of_chars # > 46