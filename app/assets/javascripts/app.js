// new progress circle

$(document).ready(function() {
  var progressChart = document.getElementById('progresschart');
  var progress = document.getElementById('progress').innerHTML;

  var bar = new ProgressBar.Circle(progressChart, {
    strokeWidth: 6,
    easing: 'easeInOut',
    duration: 1400,
    color: '#F26A62',
    trailColor: '#eee',
    trailWidth: 1,
    svgStyle: null
  });

  bar.animate(progress);  // Number from 0.0 to 1.0
});

//timetable

var descriptions = {
  event1: '<h3>You Code Like a Girl. Good for you!</h3><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas culpa tenetur sed nemo odio pariatur laborum, aperiam autem totam, consequatur distinctio ipsum neque. Ipsa ex architecto sint voluptatem voluptas libero.</p>',
  event2: '<h3>Keynote: contributing to open source as a junior</h3><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas culpa tenetur sed nemo odio pariatur laborum, aperiam autem totam, consequatur distinctio ipsum neque. Ipsa ex architecto sint voluptatem voluptas libero.</p>',
  event3: '<h3>You Code Like a Girl. Good for you!</h3><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas culpa tenetur sed nemo odio pariatur laborum, aperiam autem totam, consequatur distinctio ipsum neque. Ipsa ex architecto sint voluptatem voluptas libero.</p>',
  event4: '<h3>Keynote: contributing to open source as a junior</h3><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas culpa tenetur sed nemo odio pariatur laborum, aperiam autem totam, consequatur distinctio ipsum neque. Ipsa ex architecto sint voluptatem voluptas libero.</p>',
  event5: '<h3>You Code Like a Girl. Good for you!</h3><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas culpa tenetur sed nemo odio pariatur laborum, aperiam autem totam, consequatur distinctio ipsum neque. Ipsa ex architecto sint voluptatem voluptas libero.</p>'
};

$(document).ready(function() {
  $('#event1').addClass('selected-event');
  $('#event-description').html('<h3>Keynote: contributing to open source as a junior</h3><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas culpa tenetur sed nemo odio pariatur laborum, aperiam autem totam, consequatur distinctio ipsum neque. Ipsa ex architecto sint voluptatem voluptas libero.</p>');

  $('#timetable').on('click mouseover', '.event', function() {
    $('tr').removeClass('selected-event');
    $(this).addClass('selected-event');
    var event = this.id
    $('#event-description').fadeOut('slow', function() {
     $('#event-description').html(descriptions[event]).fadeIn('slow');
    });
  });
});

// map stuffs

function initMap() {
  // style array

  var styles = [
    {
      stylers: [
        { hue: "#F26A62" },
        { saturation: -20 }
      ]
    },{
      featureType: "road",
      elementType: "geometry",
      stylers: [
        { lightness: 100 },
        { visibility: "simplified" }
      ]
    },{
      featureType: "road",
      elementType: "labels",
      stylers: [
        { visibility: "off" }
      ]
    }
  ];
  // create new styled map instance
  var styledMap = new google.maps.StyledMapType(styles,
    {name: "WDI Conf"});

// Create a map object, and include the MapTypeId to add
// to the map type control.


var mapOptions = {
  zoom: 15,
  center: new google.maps.LatLng(-37.8181067, 144.9570576),
  mapTypeControlOptions: {
    mapTypeIds: [google.maps.MapTypeId.ROADMAP, 'map_style']
  },
    zoomControl: false,
    disableDefaultUI: true,
    scrollwheel: false,
    disableDoubleClickZoom: true

};
var map = new google.maps.Map(document.getElementById('map'),
  mapOptions);

//Associate the styled map with the MapTypeId and set it to display.
map.mapTypes.set('map_style', styledMap);
map.setMapTypeId('map_style');

var myLatLng = {lat: -37.8181067, lng: 144.9570576};
var image = "https://pbs.twimg.com/profile_images/658945176941891584/NsDfkqMx_normal.png"
var marker = new google.maps.Marker({
  position: myLatLng,
  map: map,
  title: 'General Assembly: 12A, 45 William Street, Melbourne 3000',
  icon: image
});
}

$(document).ready(function(){

	//Check to see if the window is top if not then display button
	$(window).scroll(function(){
		if ($(this).scrollTop() > 100) {
			$('.scrollToTop').fadeIn();
		} else {
			$('.scrollToTop').fadeOut();
		}
	});

	//Click event to scroll to top
	$('.scrollToTop').click(function(){
		$('html, body').animate({scrollTop : 0},800);
		return false;
	});

});
