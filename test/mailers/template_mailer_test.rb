require "test_helper"

class TemplateMailerTest < ActionMailer::TestCase

  def test_basic
    email = TemplateMailer.basic

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal ["john@example.com"], email.to
    assert_equal ["notifications@shadowfax-demo.herokuapp.com"], email.from
    # assert_equal read_fixture("basic").join, email.body.to_s
  end

  def test_drip
    email = TemplateMailer.drip

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal ["john@example.com"], email.to
    assert_equal ["notifications@shadowfax-demo.herokuapp.com"], email.from
  end

  def test_hero
    email = TemplateMailer.hero

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal ["john@example.com"], email.to
    assert_equal ["notifications@shadowfax-demo.herokuapp.com"], email.from
  end

  def test_marketing
    email = TemplateMailer.marketing

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal ["john@example.com"], email.to
    assert_equal ["notifications@shadowfax-demo.herokuapp.com"], email.from
  end

  def test_newsletter
    email = TemplateMailer.newsletter

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal ["john@example.com"], email.to
    assert_equal ["notifications@shadowfax-demo.herokuapp.com"], email.from
  end

  def test_newsletter_2
    email = TemplateMailer.newsletter_2

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal ["john@example.com"], email.to
    assert_equal ["notifications@shadowfax-demo.herokuapp.com"], email.from
  end

  def test_order
    email = TemplateMailer.order

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal ["john@example.com"], email.to
    assert_equal ["notifications@shadowfax-demo.herokuapp.com"], email.from
  end

  def test_password
    email = TemplateMailer.password

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal ["john@example.com"], email.to
    assert_equal ["notifications@shadowfax-demo.herokuapp.com"], email.from
  end

  def test_sidebar
    email = TemplateMailer.sidebar

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal ["john@example.com"], email.to
    assert_equal ["notifications@shadowfax-demo.herokuapp.com"], email.from
  end

  def test_sidebar_hero
    email = TemplateMailer.sidebar_hero

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal ["john@example.com"], email.to
    assert_equal ["notifications@shadowfax-demo.herokuapp.com"], email.from
  end

  def test_welcome
    email = TemplateMailer.welcome

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal ["john@example.com"], email.to
    assert_equal ["notifications@shadowfax-demo.herokuapp.com"], email.from
  end

end
