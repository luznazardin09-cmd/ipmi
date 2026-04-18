
//Nazardin Maria Luz, tp1, comisión 1.

PImage Cuadro;
 int desplazar;
 
void setup(){
 
  size(800,400);
 Cuadro=loadImage("cuadrogato.jpg"); //cargo la imagen 
  
 desplazar= width/2;
}

void draw(){
 background(255);
  
//fondo
strokeWeight(0);
fill(#A2CDE8);
quad(176+desplazar,0,400+desplazar,0,400+desplazar,400,179+desplazar,400);

fill(0);
quad(400,0,567,0,556,200,400,268);

fill(#1E89A2);
square(213+desplazar,130,170);

fill(#0A1121);
quad(71+desplazar,0,176+desplazar,0,170+desplazar,175,80+desplazar,83);

fill(#0B2774);
quad(12+desplazar,166,77+desplazar,147,130+desplazar,161,86+desplazar,199);

fill(#2656D3);
quad(0+desplazar,0,71+desplazar,0,84+desplazar,143,0+desplazar,163);

fill(#245523);
quad(0+desplazar,168,82+desplazar,199,44+desplazar,228,0+desplazar,223);

fill(#1C901A);
triangle(0+desplazar,233,36+desplazar,233,0+desplazar,264);

strokeWeight(10);

line(173+desplazar,0,172+desplazar,100);

strokeWeight(13);
line(400,393,793,396);

//orejas

strokeWeight(0);
fill(0);
triangle(73+desplazar,2,28+desplazar,101,140+desplazar,54);
quad(73+desplazar,2,41+desplazar,23,27+desplazar,57,28+desplazar,101);

quad(351+desplazar,8,353+desplazar,31,328+desplazar,104,220+desplazar,56);

fill(#C11212);
triangle(70+desplazar,11,127+desplazar,52,31+desplazar,84);
triangle(332+desplazar,20,243+desplazar,57,319+desplazar,84);

//cuerpo

fill(0);
circle(94+desplazar,332,230);
circle(171+desplazar,298,250);
quad(39+desplazar,232,159+desplazar,136,206+desplazar,142,265+desplazar,217);

fill(#B4056F);
triangle(182+desplazar,253,233+desplazar,197,271+desplazar,260);

fill(#F0CD1F);
quad(179+desplazar,349,257+desplazar,359,235+desplazar,390,180+desplazar,387);

quad(65+desplazar,235,51+desplazar,271,147+desplazar,275,163+desplazar,259);
rect(51+desplazar,271,100,15);
quad(51+desplazar,286,150+desplazar,286,162+desplazar,346,85+desplazar,327);

quad(175+desplazar,258,166+desplazar,272,270+desplazar,272,271+desplazar,266);
quad(166+desplazar,272,164+desplazar,298,272+desplazar,307,270+desplazar,272);
quad(165+desplazar,298,172+desplazar,319,209+desplazar,309,215+desplazar,301);

fill(#FA5F12);
quad(172+desplazar,322,180+desplazar,348,267+desplazar,331,270+desplazar,312);
triangle(212+desplazar,318,225+desplazar,305,270+desplazar,312);
rect(50+desplazar,352,115,33,6);
quad(125+desplazar,182,70+desplazar,229,167+desplazar,251,198+desplazar,216);

fill(#9B192A);
quad(121+desplazar,184,136+desplazar,173,208+desplazar,174,223+desplazar,192);
quad(128+desplazar,184,168+desplazar,206,187+desplazar,230,223+desplazar,192);

fill(#703595);
quad(45+desplazar,238,7+desplazar,269,0+desplazar,284,38+desplazar,278);
quad(0+desplazar,284,0+desplazar,347,10+desplazar,367,48+desplazar,359);
quad(47+desplazar,358,51+desplazar,345,133+desplazar,347,18+desplazar,313);
quad(0+desplazar,284,38+desplazar,278,47+desplazar,306,17+desplazar,315);
triangle(20+desplazar,314,47+desplazar,306,80+desplazar,332);

fill(0);
triangle(130+desplazar,301,139+desplazar,314,142+desplazar,312);
quad(139+desplazar,314,160+desplazar,324,159+desplazar,316,142+desplazar,311);

//cara
fill(0);
ellipse(181+desplazar,111,308,120);

fill(#173CBC);
quad(73+desplazar,140,148+desplazar,134,170+desplazar,147,170+desplazar,169);

fill(#FA77BD);
strokeWeight(0);
quad(177+desplazar,169,177+desplazar,144,204+desplazar,134,300+desplazar,137);
quad(175+desplazar,169,299+desplazar,136,271+desplazar,154,220+desplazar,167);

fill(#45AA51);
quad(34+desplazar,110,56+desplazar,102,134+desplazar,128,64+desplazar,136);
quad(237+desplazar,129,295+desplazar,106,318+desplazar,109,307+desplazar,130);

fill(#A77CB7);
quad(36+desplazar,94,87+desplazar,74,160+desplazar,58,175+desplazar,98);

fill(#C69BD6);
quad(181+desplazar,95,176+desplazar,59,285+desplazar,75,320+desplazar,104);

fill(#FAD9F6);
quad(145+desplazar,122,187+desplazar,100,237+desplazar,127,205+desplazar,127);

//ojos
fill(0);

ellipse(118+desplazar,103,120,41);
ellipse(241+desplazar,103,110,45);

fill(#F5EB31);
ellipse(118+desplazar,103,110,30);
ellipse(241+desplazar,105,100,32);

fill(0);
triangle(97+desplazar,85,123+desplazar,86,116+desplazar,120);
triangle(229+desplazar,83,254+desplazar,86,244+desplazar,121);

//nariz
fill(#C11212);
triangle(151+desplazar,127,202+desplazar,129,174+desplazar,142);

//pajaro

fill(0);
ellipse(337+desplazar,204,53,28);
triangle(280+desplazar,198,327+desplazar,191,315+desplazar,207);
ellipse(350+desplazar,249,100,55);
triangle(349+desplazar,276,400+desplazar,285,400+desplazar,251);
quad(363+desplazar,223,365+desplazar,205,314+desplazar,212,297+desplazar,231);
quad(297+desplazar,231,295+desplazar,239,301+desplazar,254,311+desplazar,229);

fill(#1C901A);
quad(320+desplazar,211,316+desplazar,256,353+desplazar,219,355+desplazar,209);
quad(357+desplazar,209,353+desplazar,228,360+desplazar,243,316+desplazar,256);
quad(320+desplazar,221,310+desplazar,229,308+desplazar,238,316+desplazar,256);
quad(360+desplazar,226,370+desplazar,250,398+desplazar,265,386+desplazar,239);

fill(#FA5F12);
quad(362+desplazar,246,319+desplazar,258,349+desplazar,270,395+desplazar,273);
triangle(379+desplazar,261,395+desplazar,273,398+desplazar,267);

fill(#C11212);
ellipse(336+desplazar,204,40,22);

fill(#F0CD1F);
triangle(285+desplazar,198,318+desplazar,194,311+desplazar,203);

fill(0);
ellipse(336+desplazar,204,27,16);

fill(255);
ellipse(332+desplazar,201,10,6);

fill(0);
triangle(307+desplazar,305,319+desplazar,298,349+desplazar,302);
triangle(349+desplazar,302,366+desplazar,296,390+desplazar,299);
strokeWeight(3);
line(327+desplazar,270,321+desplazar,297);
line(339+desplazar,274,333+desplazar,301);
line(361+desplazar,273,365+desplazar,297);

line(292+desplazar,305,400+desplazar,299);

//imagen
image(Cuadro,0,0,400,400);

}

void mousePressed(){
 println(mouseX,mouseY);
}
