$(function() {

  var dgoptions = {
      bgColour : '#F0FEEF'
       , drawOnly : true
    };
  
  // if sigpad is not in a cocoon nested form.. 
  // also, without this, it won't show sigpad when edit is pressed. 2016-06-24.  
  $('.sigPad').signaturePad(dgoptions);


  // if sigpad IS in a cocoon nested form..
  // show sigpad using cocoon:after-insert --  using callback..
  $('#passengers')
    .on('cocoon:after-insert', function() {
      $('.sigPad').signaturePad(dgoptions);
      //$('.sigPad').signaturePad({displayOnly:true}).regenerate(sig);
  })


  // if this IS in a cocoon nested form..  
  // show it using cocoon:after-insert --  using callback..
  $('#passengers')
    .on('cocoon:after-insert', function() {
      $(".dgselect2").select2({
    });
    })


});




 