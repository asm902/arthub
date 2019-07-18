import "bootstrap";
import flatpickr from 'flatpickr';
import "../plugins/flatpickr";
import { bookingPrice } from "components/booking";


import "flatpickr/dist/flatpickr.min.css" // Note this is important!

flatpickr(".datepicker", {
  disableMobile: true,
  altInput: true,
  altFormat: "F j",
  dateFormat: "Y-m-d"
});

bookingPrice();
