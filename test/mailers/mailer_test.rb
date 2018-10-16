require "test_helper"

class MailerTest < ActionMailer::TestCase

  def test_contact_us_notification
    contact = Contact.new(
      email: "john@example.com",
      title: "Huzzah",
      body: "Hello my friend"
    )
    @mailer = Mailer.contact_us_notification(contact)
    assert_equal ["support@shadowfax-demo.herokuapp.com"], @mailer.to
    assert_equal ["john@example.com"], @mailer.from
    assert_equal "Contact us message from john@example.com", @mailer.subject
  end

end
