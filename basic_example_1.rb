class Baseball
end

class Baseball
  def swing
    "Homerun"
  end
end

p Baseball.new.swing # > Homerun

class Baseball
  def swing
    "Strike"
  end
end

p Baseball.new.swing  # > Strike