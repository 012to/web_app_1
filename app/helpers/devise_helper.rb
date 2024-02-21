module DeviseHelper
  ALERTS = {
    'alert' => 'warning',
    'notice' => 'success',
    'error' => 'danger'
  }.freeze

  def bootstrap_alert(key)
    ALERTS[key]
  end
end