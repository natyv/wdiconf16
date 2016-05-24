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
  zoom: 14,
  center: new google.maps.LatLng(-37.8181067, 144.9570576),
  mapTypeControlOptions: {
    mapTypeIds: [google.maps.MapTypeId.ROADMAP, 'map_style'],
    scrollwheel: false,
    disableDoubleClickZoom: true
  }
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
  title: 'General Assembly',
  icon: image
});
}
