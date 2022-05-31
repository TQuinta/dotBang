import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "form", "input" ]

  connect() {
    console.log("Hello")
  }

  showDropdown(event){
    if (event.target.value == "Skills") {
      this.skillsInputTarget.classList.remove("d-none")
    }
    if (event.target.value == "Roles") {
      console.log("you have selected roles")
    }
  }
}
