import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = { commentID: Number }
  static targets = ["comment"]

  connect() {
    console.log("hello")
  }
}
