class Users::RegistrationsController < Devise::RegistrationsController
  def create
    super do |resource|
      update_last_active_date(resource)
    end
  end

  private

  def update_last_active_date(user)
    user.update(last_active_date: Time.zone.now)
  end
end
