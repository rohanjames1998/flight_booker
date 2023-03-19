import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = [ 'passengerForm', 'parentDiv' ]

  connect() {
    this.addMore();
  }

  addMore() {
    const passengerForm = this.passengerFormTarget;
    const parentDiv = this.parentDivTarget;
    // Cloning form content in order to add more than one if needed.
    const clone = passengerForm.content.cloneNode(true);
    parentDiv.insertBefore(clone, parentDiv.firstChild);
  }
}
