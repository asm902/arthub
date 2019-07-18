const priceContainer = document.querySelector('.total_price_container');
const paintingPrice = document.querySelector('.painting_price').innerText;
const price = document.querySelector('#price');
const calculation = document.querySelector('#calculation');
const fees = document.querySelector('#fees');
const totalPriceShow = document.querySelector('#total_price');
const bookingButton = document.querySelector('.btn_book');
const datesButton = document.querySelector('.btn_dates');
// console.log(datesButton)
const bookingStart = document.querySelector('#booking_start');
const bookingEnd = document.querySelector('#booking_end');
const startDate = document.querySelector('#range_start');
// console.log(startDate);
const endDate = document.querySelector('#range_end');

const bookingPrice = () => {
  datesButton.disabled = true;
  startDate.addEventListener('change', () => {
    datesButton.style.backgroundColor = "rgb(128,0,128)";
    datesButton.style.backgroundColorHover = "rgb(128,0,128)";
    datesButton.style.textDecorationHover = "underline";
    datesButton.style.borderColor = 'rgb(128,0,128)';
  });

  endDate.addEventListener('change', () => {
    datesButton.style.backgroundColor = "rgb(128,0,128)";
    datesButton.style.backgroundColorHover = "rgb(128,0,128)";
    datesButton.style.textDecorationHover = "underline";
    datesButton.style.borderColor = "rgb(128,0,128)";
    datesButton.disabled = false;
  });

  datesButton.addEventListener('click', () => {
    event.preventDefault();
    const startDate = document.querySelector('#range_start').value;
    const endDate = document.querySelector('#range_end').value;
    const startDate2 = new Date(startDate)
    const endDate2 = new Date(endDate)
    console.log(startDate2)
    console.log(endDate2)
    const days = Math.abs(endDate2 - startDate2) / 1000;
    const duration = Math.floor(days / 86400);
    const bookingPrice = duration * paintingPrice;
    const bookingFee = bookingPrice * 0.15;
    const totalPrice = bookingPrice + bookingFee;


    priceContainer.style.display = "block";
    price.innerText = `$${bookingPrice}`;
    calculation.innerText = `(${duration} days at $${paintingPrice} per day)`;
    fees.innerText = `$${bookingFee}`;
    totalPriceShow.innerText = `$${totalPrice}`;

    datesButton.style.display = "none";
    bookingButton.style.display = "block";

    bookingStart.value = startDate;
    bookingEnd.value = endDate;

  });
}




export { bookingPrice }
