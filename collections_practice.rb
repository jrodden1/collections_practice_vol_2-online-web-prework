require 'pry'
def begins_with_r(tools)
  #answer var will be the boolean answer that is returned at the end of the method.
  answer = nil
  matchfound = []
  tools.each do |tool|
    if tool[0] == "r" || tool[0] == "R"
      matchfound << true
    else
      matchfound << false
    end
  end
  #Logic looks a little funny, but its asking does the matchfound array include a "false" -- if that is true, then the answer is false, else the answer for #begins_with_r should be true.
  if matchfound.include?(false) == true
    answer = false
  else
    answer = true
  end
end

def contain_a(array)
  matchfoundArr = []
  array.each do |element|
    if element.include?("a") == true || element.include?("A") == true
      matchfoundArr << element
    end
  end
  #Logic looks a little funny, but its asking does the matchfound array include a "false" -- if that is true, then the answer is false, else the answer for #begins_with_r should be true.
  matchfoundArr
end
