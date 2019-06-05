require 'pry'
def begins_with_r(tools)
  #This will be the boolean answer that is returned at the end of the method.
  answer = nil
  matchfound = []
  tools.each do |tool|
    if tool[0] == "r" || tool[0] == "R"
      matchfound << true
    end
  end
  if matchfound.include?(false)
    answer = false
  else
    answer = true
  end
end
