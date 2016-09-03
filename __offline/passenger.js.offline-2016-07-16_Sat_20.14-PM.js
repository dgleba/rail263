$(function() {

// was in app assets javvascripts. moved code to the form partial and show becuase sigpad needs different code for create and show sig. 2016-07-16_Sat_20.15-PM

  var dgoptions = {
      bgColour : '#F0FEEF'
       , drawOnly : true
    };
  
  // if sigpad is not in a cocoon nested form.. 
  // also, without this, it won't show sigpad when edit is pressed. 2016-06-24.  
  $('.sigPad').signaturePad(dgoptions);


  // if sigpad IS in a cocoon nested form..
  // show sigpad using cocoon:after-insert --  using callback..
  $('#passengers-offline')
    .on('cocoon:after-insert', function() {
      $('.sigPad').signaturePad(dgoptions);
      //$('.sigPad').signaturePad({displayOnly:true}).regenerate(sig);
  })


  // if this IS in a cocoon nested form..  
  // show it using cocoon:after-insert --  using callback..
  $('#passengers-offline')
    .on('cocoon:after-insert', function() {
      $(".dgselect2").select2({
    });
    })
    
  // show hide search form...  
  $('.checkbox-class').change(function(e) {
      $($(this).data('toggle-div')).toggle();    
  })   

});




 