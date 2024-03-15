import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-button"


export default class extends Controller {
  static targets=["newReviewCard"]

  connect() {
  }

  toggleReview(event) {
    event.currentTarget.style.display = "none"
    this.newReviewCardTarget.style.display = "block"
  }
}
