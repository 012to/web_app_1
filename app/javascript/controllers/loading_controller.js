import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["loader"]

  connect() {
    this.loaderTarget.classList.add('hidden');
  }

  transition(event) {
    event.preventDefault();
    const url = event.currentTarget.href;
    this.loaderTarget.classList.remove('hidden');

    setTimeout(() => {
      window.location = url;
    }, 2500);
  }
}
