def missing_character(string)
  list = format_string(string)
  count = 0
  list.each do |c|
    if c =~ /[a-z]/
      count += 1
    end
  end
  result = compare_letters(count)
end

def format_string(string)
  list = string.downcase.gsub(" ", "")
  list = list.split("")
  list = list.uniq
end

def compare_letters(count)
  if count == 26
    "is a pangram"
  else
    "isn't a pangram"
  end
end

# execution

string = "The quick brown fox jumps over the lazy dog"

result = missing_character(string)
puts result