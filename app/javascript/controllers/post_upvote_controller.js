import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "button", "count" ]

  connect() {
    console.log("Hello")
    console.log(this.buttonTarget)
  }

  toggle(event) {
    event.preventDefault()
    const url = this.buttonTarget.action
    fetch(url, {
      method: "PATCH",
      headers: { "Accept": "application/json" },
      body: new FormData(this.buttonTarget)
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data)
        this.updateVotes(data)
        this.toggleButton(data)
      })
  }

  updateVotes(data) {
    this.countTarget.innerHTML = data.votes
  }

  toggleButton(data) {
    this.buttonTarget.outerHTML = data.button_html
  }
}
