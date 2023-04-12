def report_length(str)
  length = str.length
  if length == 0
    return "Please enter a string!"
  else
    "This string was #{length} characters long."
  end
end