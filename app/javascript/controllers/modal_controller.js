import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["modal"]

  connect() {
    document.addEventListener('click', (event) => {

      if (!this.modalContent.contains(event.target) && !this.modalTarget.classList.contains('hidden')) {
        this.modalTarget.classList.add('hidden');
      }
    }, true);
  }

  toggle() {
    this.modalTarget.classList.toggle("hidden");
  }

  get modalContent() {
    return this.modalTarget.querySelector('.modal-content');
  }
}

