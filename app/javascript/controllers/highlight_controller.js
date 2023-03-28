import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ 'availableFlightsCont', 'flightLabel' ]
  static values = { index: Number }
  connect() {
  }

  highlight(e) {
    const label = e.target.labels[0];
    label.classList.add('!border-black', '!text-black', '!bg-gradient-to-r', '!from-blue-200', '!to-blue-300');
    this.removeHighlightFromOthers(label);
  }

  removeHighlightFromOthers(label) {
    // Using the for attribute (which is unique for every label) as a substitute for label's id.
    const highlightedLabelId = label.getAttribute('for');
    this.flightLabelTargets.forEach((flightLabel) => {
      if (flightLabel.getAttribute('for') != highlightedLabelId) {
        flightLabel.classList.remove('!border-black', '!text-black', '!bg-gradient-to-r', '!from-blue-200', '!to-blue-300');
      }
    })
  }
}
