import { Controller } from "stimulus"
import { csrfToken } from "@rails/ujs"


export default class extends Controller {
  static targets = [ "button" ]

  connect() {
    console.log("hello")
    console.log(this.buttonTarget)
  }

  toggle(event) {
    event.preventDefault()
    event.stopPropagation()
    const url = this.buttonTarget.href
    console.log("starting fetch")
    fetch(url, {
      method: this.buttonTarget.dataset.method,
      headers: { "Accept": "application/json", "X-CSRF-Token": csrfToken() }
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data)
        this.toggleButton(data)
      })
  }

  toggleButton(data) {
    this.buttonTarget.outerHTML = data.button_html
  }
}
