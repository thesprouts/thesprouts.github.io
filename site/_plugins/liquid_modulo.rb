# _plugins/mod.rb

module LiquidFilters  
  # makes modulus operation available to templates
  def mod(data, param)
    data % param
  end  
end