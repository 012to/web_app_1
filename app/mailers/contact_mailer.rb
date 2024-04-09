class ContactMailer < ApplicationMailer
   def send_mail(contact)
    @contact = contact
    mail to: "rachi.app.test@gmail.com", subject: '【お問い合わせ】' + @contact.subject.to_s
  end
end
