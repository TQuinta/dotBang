import { Controller } from "@hotwired/stimulus"
import { csrfToken } from "@rails/ujs"



export default class extends Controller {
  static values = { commentID: Number }
  static targets = ["comments", 'form']

  postComment(e) {
    e.preventDefault();
    fetch(this.formTarget.action, {
      method: "POST",
      headers: { "Accept": "application/json", "X-CSRF-Token": csrfToken() },
      body: new FormData(this.formTarget)
    })
    .then(response => response.json())
    .then((data) => {
      console.log(data)
      this.commentsTarget.insertAdjacentHTML('afterbegin', data.comment_html)
      this.formTarget.outerHTML = data.form_html
      this.commentsTarget.scrollIntoView()
      // if (data.inserted_item) {
      //   this.itemsTarget.insertAdjacentHTML("beforeend", data.inserted_item)
      // }
      // this.formTarget.outerHTML = data.form
    })
  }

  #insertMessageAndScrollDown(data) {
    this.messagesTarget.insertAdjacentHTML("beforeend", data)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }
}
