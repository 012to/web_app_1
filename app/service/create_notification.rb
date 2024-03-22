require 'active_support/all'
require 'net/http'

class CreateNotification
  ProductionOneSignalAppId = "3e611dcb-2fb8-4c5b-a643-2391106834d4"
  ProductionSignalRestAPIKey = "Zjg0NWNlZDgtMzJhZC00NDQwLTkxMTQtM2U3MjE5Yzk4YTgz"

  def notification!
    params = {
      app_id: ProductionOneSignalAppId,
      rest_api_key: ProductionSignalRestAPIKey,
      headings: { en: "Notification test", ja: "通知テスト" },
      contents: { en: "This is a notification test", ja: "これは通知のテストです。成功おめでとう(^^)" },
      included_segments: ["All"]
    }
    one_signal_web_push(params)
  end

  def one_signal_web_push(params)
    raise "AppId or RestAPIKey is required" if params[:app_id].blank? || params[:rest_api_key].blank?
    raise "ContentsIsNone" if params[:contents].blank?

    params[:isChromeWeb] = true
    uri = URI.parse('https://onesignal.com/api/v1/notifications')
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    request = Net::HTTP::Post.new(uri.path,
                                  'Content-Type' => 'application/json',
                                  'Authorization' => "Basic #{params[:rest_api_key]}")
    request.body = params.as_json.to_json

    return http.request(request)
  end
end

