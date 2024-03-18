class Users::SessionsController < Devise::SessionsController
  auto_session_timeout_actions

  def active
    render_session_status
  end

  def timeout
    if user_signed_in?
      update_last_active_date
      head :ok
    else
      head :unauthorized
    end
  end
  # DELETE /resource/sign_out
  def destroy
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
