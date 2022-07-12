# class Person
#     def initialize(attributes)
#       attributes.each do |key, value| 
#         self.class.attr_accessor(key)
#         self.send(("#{key}="), value)
#       end
#     end
#   end

  class Person
    # we don't want to do this anymore :(
    attr_accessor :name, :birthday, :hair_color, :eye_color, :height, 
    :weight, :handed, :complexion, :t_shirt_size, 
    :wrist_size, :glove_size, :pant_length, :pant_width
  
    def initialize(attributes)
      attributes.each {|key, value| self.send(("#{key}="), value)}
    end
  end