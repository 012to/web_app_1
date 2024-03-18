export function checkSessionTimeout() {
  $.ajax({
    url: '/timeout',
    type: 'GET',
    success: function() {},
    error: function(xhr, status, error) {
      // ログインセッションがタイムアウトした場合の処理
    }
  });
}

// セッションタイムアウトのチェック間隔を設定
export function startSessionTimeoutCheck() {
  setInterval(checkSessionTimeout, 60000);
  // セッションタイムアウトのチェック間隔（ミリ秒）
}

window.checkSessionTimeout = checkSessionTimeout;
window.startSessionTimeoutCheck = startSessionTimeoutCheck
