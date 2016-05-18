$(function() {
  var $form = $('#payment-form');
  $form.submit(function(event) {
    // Disable the submit button to prevent repeated clicks:
    $form.find('.submit').prop('disabled', true);
    // Request a token from Stripe:
    Stripe.card.createToken($form, stripeResponseHandler);
    // Prevent the form from being submitted:
    return false;
  });
});

function stripeResponseHandler(status, response) {
  console.log(response);
  // Grab the form:
  var $form = $('#payment-form');
  if (response.error) { // Problem!
    // Show the errors on the form:
    $form.find('.payment-errors').text(response.error.message);
    $form.find('.submit').prop('disabled', false); // Re-enable submission
  } else { // Token was created!
    // Get the token ID:
    var token = response.id;
    // Insert the token ID into the form so it gets submitted to the server:
    $form.append($('<input type="hidden" name="stripeToken">').val(token));
    // Submit the form:
    $form.get(0).submit();
  }
};

// {
//   id: "tok_u5dg20Gra", // Token identifier
//   card: {...}, // Dictionary of the card used to create the token
//   created: 1463550259, // Timestamp of when token was created
//   currency: "usd", // Currency that the token was created in
//   livemode: false, // Whether this token was created with a live API key
//   object: "token", // Type of object, always "token"
//   used: false // Whether this token has been used
// }
