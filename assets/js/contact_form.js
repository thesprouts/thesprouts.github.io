$(function() {
  $("form#email-us-form").submit(function() {
    var email = $('input#message-author').val();
    var body = $('textarea#email-message').val();

    $.ajax({  
        type: "POST",  
        url: "/contact",
        data: "email=" + email + '&body=' + body,
        success: function() {
          $('button#email-us-button').addClass("btn btn-success");
        },
        error: function() {
          $('button#email-us-button').addClass("btn btn-danger");
        }
      });
    return false;
  });
});