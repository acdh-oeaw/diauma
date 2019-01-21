// Init map
map = L.map('map', {maxZoom: 18, fullscreenControl: true});


// Define base layers
baseMaps = {
    OpenStreetMap: L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'}),
    GoogleSatellite: L.tileLayer('http://{s}.google.com/vt/lyrs=s&x={x}&y={y}&z={z}', {subdomains: ['mt0', 'mt1', 'mt2', 'mt3'], attribution: '&copy; Google Maps '}),
};

controls = {}
map.setView([30, 340], 2);

L.control.layers(baseMaps, controls).addTo(map);
baseMaps.OpenStreetMap.addTo(map);
