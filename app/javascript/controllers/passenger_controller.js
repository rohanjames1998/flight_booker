import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = [ 'passengerForm', 'parentDiv', 'passengerAdditionWarning', 'passengerRemovalWarning'  ];

  connect() {
    this.addPassenger();
  }

  addPassenger() {
    const randomIndex = new Date().getTime();
    const passengerForm = this.passengerFormTarget.innerHTML.replace(/PASSENGER_RECORD/g, randomIndex);
    const parentDiv = this.parentDivTarget;
    parentDiv.insertAdjacentHTML('beforeend', passengerForm);
  }

  removePassenger(e){
    const passenger = e.target.closest("fieldset");
    if ( this.visiblePassengerFields() > 1){
      passenger.querySelector("input[name*='_destroy']").value = 1
      passenger.classList.add('hidden');
      this.passengerRemovalWarningTarget.textContent = ""
    }
    else {
      this.passengerRemovalWarningTarget.textContent = "Flight Booking Need At Least One Passenger."
    }
  }

  visiblePassengerFields() {
    const visibleFields = Array.from(document.querySelectorAll('fieldset')).filter(s =>
      window.getComputedStyle(s).getPropertyValue('display') != 'none');
      return visibleFields.length
  }
}
