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
    
    if(@emails.include?(", "))
      @emails = @emails.split(", ")
    else
      @emails = @emails.split(" ")
    end
    @emails
    #@emails = @emails.split(" ")
    
  end
end