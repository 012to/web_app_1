class Users::SessionsController < Devise::SessionsController

  def create
    # Update last_active_date before signing out
    update_last_active_date if user_signed_in?
    super
  end

  private

  # Update last_active_date for the current user
  def update_last_active_date
    current_user.update(last_active_date: Time.zone.now)
  end
end
