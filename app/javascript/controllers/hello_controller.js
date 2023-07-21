import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!"
  }
    myCarousel = document.querySelector('#carouselExampleOption')
    carousel = new bootstrap.Carousel(myCarousel, {
    interval: 1000
    ,keyboard:true /*キーボードイベントに反応するかどうか*/
    ,pause:false /* hover（ポインタをカルーセルの載せても止まらないようにする */
    ,slide : false
    ,wrap: true /* 最初に戻らない */
    ,touch:true
  });
}
