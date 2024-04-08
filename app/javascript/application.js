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