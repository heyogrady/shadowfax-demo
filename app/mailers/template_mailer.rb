class TemplateMailer < BaseMailer

  layout "mailer"

  def basic
    mail to: "john@example.com"
  end

  def drip
    mail to: "john@example.com"
  end

  def hero
    mail to: "john@example.com"
  end

  def marketing
    mail to: "john@example.com"
  end

  def newsletter
    mail to: "john@example.com"
  end

  def newsletter_2
    mail to: "john@example.com"
  end

  def order
    mail to: "john@example.com"
  end

  def password
    mail to: "john@example.com"
  end

  def sidebar
    mail to: "john@example.com"
  end

  def sidebar_hero
    mail to: "john@example.com"
  end

  def welcome
    mail to: "john@example.com"
  end

end
