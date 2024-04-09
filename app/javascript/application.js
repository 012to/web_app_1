// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "controllers";
import "@hotwired/turbo-rails";




/* reloadしないと表示されない（MVP後確認）

window.addEventListener('turbo:load', loadAddToAnyScript);

function loadAddToAnyScript() {
  // 既にAddToAnyスクリプトがあれば削除
  const existingScript = document.querySelector('script[src="https://static.addtoany.com/menu/page.js"]');
  if (existingScript) {
    existingScript.remove();
  }

  // AddToAnyスクリプトを新たに追加
  const script = document.createElement('script');
  script.src = "https://static.addtoany.com/menu/page.js";
  script.async = true;
  document.body.appendChild(script);

  // AddToAny設定
  window.a2a_config = window.a2a_config || {};
  window.a2a_config.num_services = 4;
}
*/

/*
document.getElementById('notification-toggle').addEventListener('change', function() {
  if (this.checked) {
    // 通知をオンにする処理
    // API経由でサーバーに通知をオンにするリクエストを送信する
    fetch('/user_settings/update_notification_settings', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': '<%= form_authenticity_token %>'
      },
      body: JSON.stringify({ notification_enabled: true })
    })
    .then(response => {
      // レスポンスの処理
    })
    .catch(error => console.error('Error:', error));
  } else {
    // 通知をオフにする処理
    // API経由でサーバーに通知をオフにするリクエストを送信する
    fetch('/user_settings/update_notification_settings', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': '<%= form_authenticity_token %>'
      },
      body: JSON.stringify({ notification_enabled: false })
    })
    .then(response => {
      // レスポンスの処理
    })
    .catch(error => console.error('Error:', error));
  }
});
*/
