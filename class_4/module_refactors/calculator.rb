module Calculator

  def self.sum(a,b)
    return a + b
  end

  def self.difference(a,b)
    return a - b
  end
  
  def self.product(a,b)
    a * b
  end
  
  def self.circumference(r)
    return 2 * r * Math::PI.round(2)
  end
  
  def self.cube(a)
    return a * a * a
  end

end
