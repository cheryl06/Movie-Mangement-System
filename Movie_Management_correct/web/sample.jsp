<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Bootbusiness | Short description about company">
    <meta name="author" content="Your name">
    <title>Four screens film festival</title>
   
  </head>
  <body>
   
    <!-- Start: MAIN CONTENT -->

    <div class="content">
      <div class="container">
          <div class="viewfilm">
        
            <script id="viewFilms" type="text/x-handlebars-template">

          {{#each this}}
              
           <h4> {{FilmName}}</h4>
       <p class="star" id="{{FilmId}}"></p>
       </div>   

     {{/each}}
     </script>

    </div>
      </div>
         
            
     </div>
             
     </div>
    <!-- End: MAIN CONTENT -->
    
   <script type="text/javascript" src="js/jquery.min.js"></script> 
   <script src="lib/jquery.raty.min.js"></script>
  <script type="text/javascript" src="js/handlebars.js"></script>
  <script>
var source   = $("#viewFilms").html();
var template = Handlebars.compile(source);
var context = [
  {FilmId:1, score:3.5, numberOfVotes: 100,FilmName: "Avenger", url:"xemvuM-uav0", Cast:"Scarlet Johonsson, Iron man, captain America, Thor, tfwhavchgashcg", Director:"Cristain noles",Producer:"bbc films",Writer:"john david",Rating:"5"},{FilmId:2, score:5, numberOfVotes: 100,FilmName: "Avenger1", url:"xemvuM-uav0", Cast:"Scarlet Johonsson, Iron man, captain America, Thor, tfwhavchgashcg", Director:"Cristain noles",Producer:"bbc films",Writer:"john david",Rating:"5"},{FilmId:3, score:5,numberOfVotes: 100,FilmName: "Toy Story1", url:"ejwrxGs_Y_I", Cast:"Scarlet Johonsson, Iron man, captain America, Thor", Director:"Cristain noles",Producer:"bbc films",Writer:"john david",Rating:"5"},{FilmId:4, score:5,numberOfVotes: 100,FilmName: "Toy Story2", url:"ejwrxGs_Y_I", Cast:"Scarlet Johonsson, Iron man, captain America, Thor", Director:"Cristain noles",Producer:"bbc films",Writer:"john david",Rating:"5"},{FilmId:5, score:2,numberOfVotes: 100,FilmName: "Toy Story3", url:"ejwrxGs_Y_I", Cast:"Scarlet Johonsson, Iron man, captain America, Thor", Director:"Cristain noles",Producer:"bbc films",Writer:"john david",Rating:"5"},{FilmId:6, score:5,numberOfVotes: 100,FilmName: "Toy Story4", url:"ejwrxGs_Y_I", Cast:"Scarlet Johonsson, Iron man, captain America, Thor", Director:"Cristain noles",Producer:"bbc films",Writer:"john david",Rating:"5"},{FilmId:7, score:5,numberOfVotes: 100,FilmName: "Avenger2", url:"xemvuM-uav0", Cast:"Scarlet Johonsson, Iron man, captain America, Thor, tfwhavchgashcg", Director:"Cristain noles",Producer:"bbc films",Writer:"john david",Rating:"5"}
  ];

var html    = template(context);
$(".viewfilm").append(html);

var updateRating = function(rating){
    var data= {
    filmId:  this.id,
    rating: rating ,
  };
  $.ajax({
    url:"servlet",
    type:'GET',
    dataType:'json',
    data: data,
    success: function(){

    },
    error: function(){
        
       $('#'+data.filmId).raty({
        score:data.rating,
  readOnly : true,

});

    }
  });
}
    $.fn.raty.defaults.path = 'lib/img';
   for (var itr = 0; itr < context.length; itr++) {
    $('#'+context[itr].FilmId).raty({
      score:context[itr].score,
      hints: ['Rotten', 'Poor', 'Indifferent', 'Good', 'Gorgeous'],
      half: false,
      click: updateRating,
    });
   };

  

$(document).on("click", ".open-viewer", function() {
  var vidId = $(this).data('id');
  var rateId = $(this).data('ratingId');
  $('iframe').attr("src", 'http://www.youtube.com/embed/' + vidId);
  $('.star').attr("id",'rateId');

});
      
</script>
  </body>
</html>