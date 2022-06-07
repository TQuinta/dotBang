import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "link", "popup" ]

  connect() {
    console.log(this)
    console.log(this.linkTarget)
    console.log(this.popupTarget)
  }

  enter(e) {
    console.log(e)
    this.popupTarget.classList.remove("hidden")
  }

  leave(e) {
    this.popupTarget.classList.add("hidden")
  }

}
