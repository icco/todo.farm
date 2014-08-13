$(document).ready(function() {
  $('.edit.line').editable('/save', {
    submitdata: { authenticity_token: $('form').children('input[name="authenticity_token"]').get(0).value },
  });
  $('.edit.note').editable('/save', {
    // loadurl: 'http://www.example.com/load.php',
    type: 'textarea',
    submit: 'Save',
    submitdata: { authenticity_token: $('form').children('input[name="authenticity_token"]').get(0).value },
  });
});
