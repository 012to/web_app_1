class ContactsController < ApplicationController
  before_action :authenticate_user!, except: %i[new create confirm back]

  def new
    @contact = Contact.new
  end

  def confirm
    @contact = Contact.new(contact_params)
    render :new if @contact.invalid?
  end

  def back
    @contact = Contact.new(contact_params)
    render :new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.send_mail(@contact).deliver_now
      redirect_to root_path, notice: "お問い合わせ内容を送信しました", status: :see_other
    else
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact)
          .permit(:email, :name, :phone_number, :subject, :message)
  end
end
