require 'anima'

# In goes a message and a client, out goes an email
class Sender
  include Anima.new(:client, :message)

  def send_email
    client.send_email(
      source: message.from,
      destination: { to_addresses: message.to },
      message: {
        subject: { data: message.subject, charset: 'UTF-8' },
        body: { text: { data: message.body, charset: 'UTF-8' } }
      }
    )
  end
end
