FINISHED = true
puts "Not finished" unless FINISHED


first_name ||= ""
puts "First name = #{first_name}"

class Document
  def initialize
    return self
  end
end



def get_next_object
  return nil
end


while next_object = get_next_object
  puts "Ada object"
end