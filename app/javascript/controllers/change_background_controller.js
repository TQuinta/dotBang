import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["background"]
  connect() {
    console.log("Hello from change-background-controller!")
    console.log(this.backgroundTarget)
  }
  toYellow(event){
    // event.preventDefault()

  }
  toBlue(event){
    //event.preventDefault()

  }
}
