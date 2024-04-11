class Users::SessionsController < Devise::SessionsController
  def create
    update_last_active_date if user_signed_in?
    super
  end

  private

  def update_last_active_date
    current_user.update(last_active_date: Time.zone.now)
  end
end
