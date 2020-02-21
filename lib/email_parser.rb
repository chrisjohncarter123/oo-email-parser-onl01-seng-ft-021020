# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :emails
  
  def initialize(data)
    @emails = data
  end
  
  def parse
    
    splitters = [",", " ", " ,"]
    
    splitters.each do |s|
     # @emails = @emails.split(s)
    end
    
    regex = @emails.split(%r{(,\s+|\s+|\s|,)})
    result = []
    regex.each do |r|
      if(result.include?(r) == false)
        result << r
      end
    end

    @emails
  end
end
e = EmailAddressParser.new("john@doe.com person@somewhere.org")

puts e.parse
