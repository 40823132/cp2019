import 'dart:html';
import 'dart:math' as Math;

CanvasElement canvas;
CanvasRenderingContext2D ctx;
int flag_w = 300;
int flag_h = 200;
num circle_x = flag_w / 2;
num circle_y = flag_h / 2;

void main() {
  canvas = querySelector('#canvas');
  ctx = canvas.getContext('2d');

  drawJP(ctx);
  querySelector("#JP").onClick.listen((e) => drawJP(ctx));
  querySelector("#ROC").onClick.listen((e) => drawROC(ctx));
  querySelector("#Russia").onClick.listen((e) => drawRussia(ctx));
  querySelector("#France").onClick.listen((e) => drawFrance(ctx));
  querySelector("#Germany").onClick.listen((e) => drawGermany(ctx));
  querySelector("#Netherlands").onClick.listen((e) => drawNetherlands(ctx));
  querySelector("#UK").onClick.listen((e) => drawUK(ctx));
  querySelector("#button").onClick.listen((e) => clearCanvas());
}

void drawROC(ctx) {
  // 先畫滿地紅
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  // 再畫青天
  ctx.fillStyle = 'rgb(0, 0, 150)';
  ctx.fillRect(0, 0, flag_w / 2, flag_h / 2);
  // 畫十二道光芒白日
  ctx.beginPath();
  num star_radius = flag_w / 8;
  num angle = 0;
  for (int i = 0; i < 25; i++) {
    angle += 5 * Math.pi * 2 / 12;
    num toX = 75 + Math.cos(angle) * star_radius;
    num toY = 50 + Math.sin(angle) * star_radius;
    // 只有 i 為 0 時移動到 toX, toY, 其餘都進行 lineTo
    if (i != 0)
      ctx.lineTo(toX, toY);
    else
      ctx.moveTo(toX, toY);
  }
  ctx.closePath();
  // 將填色設為白色
  ctx.fillStyle = '#fff';
  ctx.fill();
  // 白日:藍圈
  ctx.beginPath();
  ctx.arc(75, 50, flag_w * 17 / 240, 0, Math.pi * 2, true);
  ctx.closePath();
  // 填色設為藍色
  ctx.fillStyle = 'rgb(0, 0, 149)';
  ctx.fill();
  // 白日:白心
  ctx.beginPath();
  ctx.arc(75, 50, flag_w / 16, 0, Math.pi * 2, true);
  ctx.closePath();
  // 填色設為白色
  ctx.fillStyle = '#fff';
  ctx.fill();
}

void drawJP(ctx) {
  // 先畫滿白
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#fff';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.closePath();
  // 紅日:紅心
  ctx.beginPath();
  ctx.arc(150, 100, flag_w / 5, 0, Math.pi * 2, true);
  ctx.closePath();
  // 填色設為白色
  ctx.fillStyle = 'rgb(189, 0, 0)';
  ctx.fill();
}

void drawRussia(ctx) {
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#fff';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(0, 57, 166)';
  ctx.fillRect(0, 66, flag_w, flag_h);
  ctx.fillStyle = 'rgb(189, 0, 0)';
  ctx.fillRect(0, 132, flag_w, flag_h);
  ctx.closePath();
}

void drawFrance(ctx) {
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '	#0055A4';
  ctx.fillRect(0, 0, flag_w*30/100, flag_h);
  ctx.fillStyle = '#fff';
  ctx.fillRect(90, 0, flag_w*33/100, flag_h);
  ctx.fillStyle = '	#EF4135';
  ctx.fillRect(90+99, 0, flag_w*37/100, flag_h);
  ctx.closePath();
}

void drawGermany(ctx) {
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(0, 0, 0)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#FF0000';
  ctx.fillRect(0, 66, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 204, 0)';
  ctx.fillRect(0, 133, flag_w, flag_h);
  ctx.closePath();
}

void drawNetherlands(ctx) {
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(174, 28, 40)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#fff';
  ctx.fillRect(0, 66, flag_w, flag_h);
  ctx.fillStyle = 'rgb(33, 70, 139)';
  ctx.fillRect(0, 133, flag_w, flag_h);
  ctx.closePath();
}

void drawUK(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#012169';
  ctx.fillRect(0, 0, flag_w*1, flag_h*1);
    ctx.strokeStyle='#fff';
  ctx.lineWidth = 30;
    ctx.beginPath();
    ctx.moveTo(0,0);
    ctx.lineTo(300,150);
    ctx.moveTo(0,150);
    ctx.lineTo(300,0);
  ctx.stroke();
  ctx.strokeStyle='#c9072a';
  ctx.lineWidth = 10;
  ctx.beginPath();
  ctx.moveTo(0,155);
  ctx.lineTo(150,80);
  ctx.stroke();
  ctx.strokeStyle='#c9072a';
  ctx.lineWidth = 10;
  ctx.beginPath();
  ctx.moveTo(150,70);
  ctx.lineTo(295,-5);
  ctx.stroke();
  ctx.strokeStyle='#c9072a';
  ctx.lineWidth = 10;
  ctx.beginPath();
  ctx.moveTo(150,70);
  ctx.lineTo(305,145);
  ctx.stroke();
  ctx.strokeStyle='#c9072a';
  ctx.lineWidth = 10;
  ctx.beginPath();
  ctx.moveTo(150,80);
  ctx.lineTo(-5,5);
  ctx.stroke();
  ctx.strokeStyle="#fff";
  ctx.lineWidth = 50;
    ctx.beginPath();
    ctx.moveTo(0,75);
    ctx.lineTo(300,75);
    ctx.moveTo(150,0);
    ctx.lineTo(150,150);
    ctx.stroke();
  ctx.strokeStyle='#c9072a';
  ctx.lineWidth = 30;
    ctx.beginPath();
    ctx.moveTo(0,75);
    ctx.lineTo(300,75);
    ctx.moveTo(150,0);
    ctx.lineTo(150,150);
    ctx.stroke();
    ctx.fillStyle ='#fff';
  ctx.fillRect(0, 150, flag_w, flag_h*1/4); 
}

void clearCanvas() {
  ctx.clearRect(0, 0, flag_w, flag_h);
}