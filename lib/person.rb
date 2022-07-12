# class Person
#     def initialize(attributes={})
#       attributes.each do |key, value| 
#         self.class.attr_accessor(key) #setting the setter keys
#         self.send(("#{key}="), value) #accessing values on setted keys
#       end
#     end
#   end

  class Person
    attr_accessor :name, :birthday, :hair_color, :eye_color, :height, 
    :weight, :handed, :complexion, :t_shirt_size, 
    :wrist_size, :glove_size, :pant_length, :pant_width
    #better to use like this in order to restrict attributes to be used.
  
    def initialize(attributes)
      attributes.each {|key, value| self.send(("#{key}="), value)}
    end
  end