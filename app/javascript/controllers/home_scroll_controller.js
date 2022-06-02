import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["body", "role", "skill"]

  connect() {
    console.log("Hello from our first Stimulus controller")
  }

  roleScroll(event) {
    event.preventDefault()
    this.bodyTarget.parentElement.classList.add("yellow-background")
    this.bodyTarget.parentElement.classList.remove("blue-background")
    this.skillTarget.classList.add("d-none")
    this.roleTarget.classList.remove("d-none")
    console.log(this.roleTarget.offsetTop)
    window.scrollTo(0, this.roleTarget.getBoundingClientRect().top + document.documentElement.scrollTop)
  }
  skillScroll(event) {
    event.preventDefault()
    this.bodyTarget.parentElement.classList.remove("yellow-background")
    this.bodyTarget.parentElement.classList.add("blue-background")
    this.roleTarget.classList.add("d-none")
    this.skillTarget.classList.remove("d-none")
    window.scrollTo(0, this.skillTarget.getBoundingClientRect().top + document.documentElement.scrollTop)
  }
  goUp(event) {
     event.preventDefault()
     this.bodyTarget.parentElement.classList.remove("yellow-background")
     this.bodyTarget.parentElement.classList.remove("blue-background")
    // this.flexTarget.classList.add("flex-none")
    // this.flexTarget.classList.remove("flex")
    // this.bodyTarget.classList.toggle("yellow-background")
    console.log()
    window.scrollTo(0, 0)
  }
  switchToSkills(event) {
    event.preventDefault()
    this.bodyTarget.parentElement.classList.remove("yellow-background")
    this.bodyTarget.parentElement.classList.add("blue-background")
    this.roleTarget.classList.add("d-none")
    this.skillTarget.classList.remove("d-none")
  }

  switchToRoles(event) {
    event.preventDefault()
    this.bodyTarget.parentElement.classList.add("yellow-background")
    this.bodyTarget.parentElement.classList.remove("blue-background")
    this.skillTarget.classList.add("d-none")
    this.roleTarget.classList.remove("d-none")
  }
}
