console.log("hello")
import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "skills", "roles", "background" ]

  showDropdown(event){
    console.log("hi")
    if (event.target.value === "Skills") {
      this.skillsTarget.classList.remove("d-none")
      this.rolesTarget.classList.add("d-none")
      this.backgroundTarget.classList.remove("yellow-background")
      this.backgroundTarget.classList.add("blue-background")
      // this.inputTarget.classList.remove("d-none")
    }
    if (event.target.value === "Roles") {
      this.rolesTarget.classList.remove("d-none")
      this.skillsTarget.classList.add("d-none")
      this.backgroundTarget.classList.remove("blue-background")
      this.backgroundTarget.classList.add("yellow-background")



    }
  }

  showSearch(e) {


    }
};
