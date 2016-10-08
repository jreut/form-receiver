require 'anima'

# Struct representinng POST'ed form fields
class FormField
  include Anima.new(:name, :value)
end
