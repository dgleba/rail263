var dgoptions = {
  bgColour : '#F0FEEF'
  , drawOnly : true
};

$( document ).ready(function(){
// if sigpad is not in a cocoon nested form..  
$('.sigPad').signaturePad(dgoptions);


// if sigpad IS in a cocoon nested form..  
// show sigpad using cocoon:after-insert --  using callback..
$('#passengers')
  .on('cocoon:after-insert', function() {
    $('.sigPad').signaturePad(dgoptions);
  })
 
});

 