//get product desc
$(document).ready( () => {
		
    $('.product-button').click( (evt) => {
      let desc = $(evt.target).attr('data-description');
      $('#description').text(desc);
      $('#title').text(desc);
      $('#product-modal').modal('show');
      
    })
  
})//end of product desc