import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = [ 'passengerForm', 'parentDiv' ]

  connect() {
    this.addPassenger();
  }

  addPassenger() {
    const randomIndex = new Date().getTime();
    const passengerForm = this.passengerFormTarget.innerHTML.replace(/PASSENGER_RECORD/g, randomIndex)
    const parentDiv = this.parentDivTarget;
    parentDiv.insertAdjacentHTML('beforeend', passengerForm);
  }

  removePassenger(e){
    const passenger = e.target.closest("#passenger-form");
    passenger.querySelector("input[name*='_destroy']").value = 1
    passenger.hidden = true;
  }
}
