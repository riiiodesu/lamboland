import { Controller } from "@hotwired/stimulus";
// import mapboxgl from 'mapbox-gl';

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    marker: String
  }
  connect() {
    console.log("yay",this.element)
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })

    this.#addMarkerToMap()
    this.#fitMapToMarker()

  }
  #addMarkerToMap() {
     const marker = JSON.parse(this.markerValue);
     console.log(marker, marker.lng, marker.lat)
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(this.map)
    }

  #fitMapToMarker() {
    const bounds = new mapboxgl.LngLatBounds()
    bounds.extend([ this.markerValue.lng, this.markerValue.lat ])
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}
