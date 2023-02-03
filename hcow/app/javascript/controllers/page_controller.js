import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "select", "destination", "content", "fileSelector" ]

  toggle() {
   if(this.selectTarget.value == "Basic Page") {

     this.contentTarget.style.display = "block";
     this.destinationTarget.style.display = "none";
     this.fileSelectorTarget.style.display = "none";

   }else if(this.selectTarget.value == "Internal Link" || this.selectTarget.value == "External Link") {

     this.contentTarget.style.display = "none";
     this.destinationTarget.style.display = "block";
     this.fileSelectorTarget.style.display = "none";

   }else if(this.selectTarget.value == "PDF") {

     this.contentTarget.style.display = "none";
     this.destinationTarget.style.display = "none";
     this.fileSelectorTarget.style.display = "block";

   }
  }
}