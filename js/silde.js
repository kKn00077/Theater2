var current_img = 0;
var next_img = 1;
var divs;
var t;
var m_t;
function setRoll(){
 var l = e("image_list_1");
 divs = l.getElementsByTagName("div");
 window.img_cnt = divs.length-1;

 window.coord_x1 = 0;
 window.coord_x2 = 800;

 divs[next_img].style.display = "block";
 divs[next_img].style.left = window.coord_x2+"px";

 imgRoll();
}

function imgRoll(){
 divs[current_img].style.left = window.coord_x1 + "px";
 divs[next_img].style.left = window.coord_x2 + "px";

 window.coord_x1 -= 200;
 window.coord_x2 -= 200;

 if(window.coord_x1 < -800) {
  current_img = next_img;
  next_img += 1;
  if(current_img == window.img_cnt) next_img = 0;
  clearTimeout(t);
  setTimeout("setRoll()",4000);
  return;
 }

 t = setTimeout("imgRoll()",100);
}

setRoll();

function e(id){
 var o = document.getElementById(id);
 if(typeof o == undefined || o == null) { alert(id+" 이름을 가진 객체가 없습니다."); return;}

 return o;
}