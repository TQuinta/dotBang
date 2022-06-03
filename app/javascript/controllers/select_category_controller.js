console.log("hello")
import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "skills", "roles" ]

  showDropdown(event){
    if (event.target.value === "Skills") {
      this.skillsTarget.classList.remove("d-none")
      this.rolesTarget.classList.add("d-none")
      // this.inputTarget.classList.remove("d-none")
    }
    if (event.target.value === "Roles") {
      this.rolesTarget.classList.remove("d-none")
      this.skillsTarget.classList.add("d-none")
    }
  }

  showSearch(event){
    if (event.target.value === "xxx") {
      this.skillsTarget.classList.remove("d-none")
      this.rolesTarget.classList.add("d-none")
      // this.inputTarget.classList.remove("d-none")
    }
    if (event.target.value === "xxx") {
      this.rolesTarget.classList.remove("d-none")
      this.skillsTarget.classList.add("d-none")
    }
  }
}
