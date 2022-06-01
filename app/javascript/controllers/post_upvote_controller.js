import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "button", "count" ]

  connect() {
    console.log(this.buttonTarget)
    console.log(this.buttonTarget.action)
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
        this.updateVotes(data)
      })
  }

  updateVotes(data) {
    console.log(data.votes)
    this.countTarget.innerHTML = data.votes
  }
}
