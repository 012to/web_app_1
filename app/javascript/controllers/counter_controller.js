import { Controller} from '@hotwired/stimulus';

export default class extends Controller {
  static targets = ['view'];
  static values = {num: Number}; 

  plus1(evt) {
    this.viewTarget.textContent = ++this.numValue;
  }
}