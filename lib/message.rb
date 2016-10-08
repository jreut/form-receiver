require 'anima'

# Struct for an email message
class Message
  include Anima.new(:to, :from, :subject, :body)
end
