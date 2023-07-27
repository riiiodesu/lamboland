let picture = [,,];
let num = -1;

slideshow_timer();

function slideshow_timer(){
if (num == 2){
    num = 0;
}
else {
    num ++;
}
document.getElementById("mypic").src=picture[num];
  setTimeout("slideshow_timer()",1000);
}
