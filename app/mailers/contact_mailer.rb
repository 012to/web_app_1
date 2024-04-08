class ContactMailer < ApplicationMailer
   def send_mail(contact)
    @contact = contact
    mail to: "rachitomoyoo0@gmail.com", subject: '【お問い合わせ】' + @contact.subject.to_s
  end
end
