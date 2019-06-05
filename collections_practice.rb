def begins_with_r(tools)
  #This will be the boolean answer that is returned at the end of the method.
  matchfound = false
  tools.each do |tool|
    if tool[0] == "r" || tool[0] == "R"
      matchfound = true
    end
  end
  matchfound = true
end
