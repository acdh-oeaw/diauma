// Init map
map = L.map('map', {maxZoom: 18, fullscreenControl: true});


// Define base layers
baseMaps = {
    OpenStreetMap: L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'}),
    GoogleSatellite: L.tileLayer('http://{s}.google.com/vt/lyrs=s&x={x}&y={y}&z={z}', {subdomains: ['mt0', 'mt1', 'mt2', 'mt3'], attribution: '&copy; Google Maps '}),
};

controls = {}
map.setView([46.5, 14], 8);
L.control.layers(baseMaps, controls).addTo(map);
baseMaps.OpenStreetMap.addTo(map);

var imageUrl = '/static/webpage/maps/suggestiv_kaernten.png';
var imageBounds = [[45.65171024913483,12.437753704352426],[47.29437290743704,15.67192558457878]];
var overlay = L.imageOverlay(imageUrl, imageBounds);
overlay.addTo(map);

function updateOpacity(value) {
    overlay.setOpacity(value);
}



