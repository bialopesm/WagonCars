import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    const newRentalForm = document.getElementById('new_rental');
    if (newRentalForm) {
      flatpickr(this.element, {
        minDate: 'today',
        altInput: true,
        dateFormat: "Y-m-d",
        disable: JSON.parse(newRentalForm.dataset.unavailableDates)
      });
    }
  }
};
