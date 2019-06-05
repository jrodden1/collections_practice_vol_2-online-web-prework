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

def first_wa(array)
  firstWaOut = ""

  array.each do |element|
    if element.class == String && element.include?("wa") == true
      return firstWaOut = element
    end
  end
  firstWaOut
end

def remove_non_strings(array)
  outputArr = array.select do |num|
    num.class == String
  end
end

def count_elements(arrayOfHashes)
  outputArrOfHash = []

  arrayOfHashes.each.with_index do |hash, index|
    hash.each do |key, value|
      if outputArrOfHash == []
        outputArrOfHash[0] = {key => value, :count => 1}
      else
        outputArrOfHash.each.with_index do |outhash, outindex|
          if outhash.has_value?(value) == false
            outputArrOfHash << {key => value, :count => 1}
          else
            outputArrOfHash[outindex][:count] += 1
            binding.pry
          end
        end
      end
    end
  end
  outputArrOfHash
end
