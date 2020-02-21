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
      @emails.each do |e|
        @emails = @emails.split(s)
      end
    end
    
  end
end