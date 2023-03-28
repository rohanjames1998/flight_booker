import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ 'availableFlightsCont', 'flightLabel' ]
  static values = { index: Number }
  connect() {
  }

  highlight(e) {
    const label = e.target.labels[0];
    label.classList.add('border-black', 'text-black', 'bg-slate-200');
    this.removeHighlightFromOthers(label);
  }


}
