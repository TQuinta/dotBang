import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["body", "info"]

  connect() {
    console.log("Hello from our first Stimulus controller")
  }
  change() {
    console.log("semi working")
    this.bodyTarget.classList.add("yellow-background")
    this.infoTarget.classList.remove("info-none")
    this.infoTarget.classList.add("info")
  }
  changeb() {
    console.log("semi working")
    this.bodyTarget.classList.add("blue-background")

  }
  reset() {
    this.bodyTarget.classList.remove("yellow-background")
    this.bodyTarget.classList.remove("blue-background")
    this.infoTarget.classList.remove("info")
    this.infoTarget.classList.add("info-none")
  }
}
