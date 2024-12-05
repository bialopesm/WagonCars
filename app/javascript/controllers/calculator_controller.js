import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["startDate", "endDate", "totalprice", "pricePerDay"];



  updateTotalPrice() {

    //console.log("Stimulus is working!!!")
    const pickupDate = new Date(this.startDateTarget.value);
    const deliveredDate = new Date(this.endDateTarget.value);

    if (pickupDate && deliveredDate && !isNaN(pickupDate) && !isNaN(deliveredDate)) {

      const timeDifference = deliveredDate - pickupDate;

      const daysDifference = timeDifference / (1000 * 3600 * 24);


      if (daysDifference >= 0) {
        const pricePerDay = parseFloat(this.pricePerDayTarget.innerText);


        const totalPrice = daysDifference * pricePerDay;

        this.totalpriceTarget.textContent = totalPrice.toFixed(2);
      }
    }
  }
}
