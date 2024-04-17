import { Controller} from '@hotwired/stimulus';

export default class extends Controller {

  next(event) {
    const button_id = event.currentTarget.id;
    if (button_id == 1) {
      console.log(button_id)
    }
  }
}

