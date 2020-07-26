<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Titillium+Web:200,300,400,700">
<meta name="viewport" content="width=device-width">
</head>
<script type="text/javascript">
//Mouse tracking for the eyes (from Irina - https://codepen.io/Irina-T/pen/LLVogK):

var eye1 = document.getElementById("eye1_4");
var eye2 = document.getElementById("eye2_4");

window.onmousemove = function(e) {
    if (e.clientX > window.innerWidth / 2 + 90) {
        eye1.style.left = "285px";
        eye2.style.left = "436px";
    }

    if (e.clientX < window.innerWidth / 2 - 100) {
        eye1.style.left = "245px";
        eye2.style.left = "396px";
    }

    if (
        e.clientX <= window.innerWidth / 2 + 90 &&
        e.clientX >= window.innerWidth / 2 - 100
    ) {
        eye1.style.left = "265px";
        eye2.style.left = "416px";
    }

    if (e.clientY > 170) {
        eye1.style.top = "90px";
        eye2.style.top = "90px";
    }

    if (e.clientY < 300) {
        eye1.style.top = "50px";
        eye2.style.top = "50px";
    }

    if (e.clientY <= 300 && e.clientY >= 170) {
        eye1.style.top = "70px";
        eye2.style.top = "70px";
    }
};
</script>
<style>
.wrapper {
    position: relative;
    width: 100%;
    max-width: 750px;
    margin: 50px auto 0;
    min-height: 600px;
}

.background {
    width: 100%;
    position: absolute;
    background-color: #818da7;
    background-size: 100% 100%;
    min-height: 600px;
    padding-top: 50px;
    overflow: hidden;
}

.errorPage {
    max-width: 500px;
    position: relative;
    z-index: 2;
    padding: 10px;
    float: left;
    min-height: 300px;
    font-family: "Titillium Web", sans-serif;
    color: #fff;
    h1 {
        font-size: 150px;
        font-weight: bold;
    }
    h3 {
        position: relative;
        font-size: 100px;
        line-height: 1.5em;
        font-weight: normal;
        margin-left: 10px;
        text-transform: none;
        color: #000;
        font-weight: bold;
        color: #fdd835;
    }
    h4 {
        font-size: 30px;
        margin: 0;
        color: #0c0c0c;
        line-height: 1.3;
        text-align: right;
    }
    a {
        color: #f3e0b0;
    }
    p {
        margin-bottom: 10px;
    }
    ul {
        margin-bottom: 15px;
    }
}

.penguinContainer {
    position: relative;
    height: 600px;
    width: 100%;
    transform: scale(0.5);
    transform-origin: right bottom;
}

.penguinWrap {
    position: absolute;
    width: 650px;
    height: 600px;
    right: 0;
    bottom: 0;
    display: block;
    transform-origin: center 600px;
}

.penguin {
    position: absolute;
    transform-origin: center 620px;
    transform: rotate(-1deg);
    animation: waddle 1.5s infinite;
}

.bodyForm1 {
    position: absolute;
    width: 340px;
    height: 280px;
    border-radius: 500px/430px;
    left: 130px;
    top: -20px;
    background-color: black;
}

.bodyForm2 {
    position: absolute;
    width: 400px;
    height: 530px;
    border-radius: 400px/510px;
    top: 70px;
    left: 100px;
    background-color: black;
}

.beak1 {
    position: absolute;
    width: 0;
    height: 0;
    border-top: 70px solid #fdd835;
    border-left: 70px solid transparent;
    transform: rotate(-135deg);
    top: 152px;
    left: 266px;
}

.beak2 {
    position: absolute;
    width: 0;
    height: 0;
    border-top: 70px solid #fbc02d;
    border-left: 70px solid transparent;
    -webkit-transform: rotate(45deg);
    transform: rotate(45deg);
    top: 152px;
    left: 264px;
}

.abdomen1 {
    position: absolute;
    width: 320px;
    height: 300px;
    background-color: #a7a7a7;
    border-radius: 312px / 287px;
    left: 140px;
    top: 213px;
}

.abdomen2 {
    position: absolute;
    width: 320px;
    height: 290px;
    background-color: white;
    border-radius: 341px / 337px;
    left: 139px;
    top: 195px;
}

.leg1_1 {
    position: absolute;
    width: 143px;
    height: 70px;
    background-color: #fbc02d;
    border-radius: 143px / 140px;
    left: 145px;
    top: 535px;
    animation: walk1 1s infinite;
}

.leg2_1 {
    position: absolute;
    width: 143px;
    height: 70px;
    background-color: #fbc02d;
    border-radius: 143px / 140px;
    left: 313px;
    top: 535px;
    animation: walk1 1s 0.4s infinite;
}

.leg1_2 {
    position: absolute;
    width: 115px;
    height: 34px;
    background-color: #fdd835;
    border-radius: 115px / 34px;
    left: 160px;
    top: 545px;
    animation: walk1 1s infinite;
}

.leg2_2 {
    position: absolute;
    width: 115px;
    height: 34px;
    background-color: #fdd835;
    border-radius: 115px / 34px;
    left: 328px;
    top: 545px;
    animation: walk1 1s 0.5s infinite;
}

.leftWing {
    position: absolute;
    width: 72px;
    height: 275px;
    border-radius: 72px/275px;
    left: 460px;
    top: 217px;
    transform: rotate(-20deg);
    transition: 400ms cubic-bezier(0.68, -0.55, 0.265, 1.55);
    animation: wing1 1s infinite;
    background-color: black;
}

.rightWing {
    position: absolute;
    width: 72px;
    height: 275px;
    border-radius: 72px/275px;
    left: 65px;
    top: 217px;
    transform: rotate(20deg);
    transition: 600ms cubic-bezier(0.68, -0.55, 0.265, 1.55);
    animation: wing2 .8s infinite;
    background-color: black;
}

.eyes {
    position: absolute;
    top: -40px;
    left: -130px;

    #eye1_1 {
        position: absolute;
        width: 140px;
        height: 160px;
        background: #fff;
        border-radius: 128px/150px;
        top: 70px;
        left: 295px;
        transform: scale(1);
    }

    #eye2_1 {
        position: absolute;
        width: 140px;
        height: 160px;
        background: #fff;
        border-radius: 150px;
        border-radius: 128px/150px;
        top: 70px;
        left: 423px;
        -webkit-transform: scale(1);
        transform: scale(1);
    }

    #eye1_3 {
        position: absolute;
        width: 180px;
        height: 180px;
        background: #fff;
        border-radius: 150px;
        top: 70px;
        left: 265px;
        transform: scale(0.67);
    }

    #eye2_3 {
        position: absolute;
        width: 180px;
        height: 180px;
        border-radius: 150px;
        top: 70px;
        left: 416px;
        transform: scale(0.67);
    }

    #eye1_4 {
        position: absolute;
        width: 180px;
        height: 180px;
        background: #000;
        border-radius: 150px;
        top: 90px;
        left: 285px;
        transform: scale(0.2);
        transition: all 0.2s;
    }

    #eye2_4 {
        position: absolute;
        width: 180px;
        height: 180px;
        background: #000;
        border-radius: 150px;
        top: 90px;
        left: 395px;
        transform: scale(0.2);
        transition: all 0.2s;
    }
}

.bubble {
    opacity: 0;
    position: absolute;
    font-family: "Titillium Web", sans-serif;
    text-decoration: none;
    display: inline-block;
    color: #000;
    font-size: 40px;
    left: -210px;
    top: -250px;
    width: 330px;
    text-align: center;
    background: #ffffff;
    padding: 45px 50px 50px;
    border-radius: 50%;
    border: 8px solid #fbc02d;
    transition: 500ms;
    pointer-events: none;
    &::before {
        opacity: 0;
        content: "";
        display: block;
        width: 28px;
        height: 28px;
        border-radius: 30px;
        background: #fff;
        position: absolute;
        top: 182px;
        right: -90px;
        border: 2px solid #fbc02d;
        pointer-events: none;
    }
    &::after {
        opacity: 0;
        content: "";
        display: block;
        width: 50px;
        height: 50px;
        border-radius: 50px;
        background: #fff;
        position: absolute;
        top: 130px;
        right: -54px;
        border: 2px solid #fbc02d;
        pointer-events: none;
    }
}

.penguinWrap:hover .bubble {
    opacity: 1;
    -webkit-transition: 500ms;
    transition: 500ms;
}

.penguinWrap:hover .bubble::after {
    opacity: 1;
    transition: opacity 300ms;
    transition-delay: 0.2s;
}

.penguinWrap:hover .bubble::before {
    opacity: 1;
    transition: opacity 300ms;
    transition-delay: 0.4s;
}

.slide-in-top {
    animation: slide-in-top 0.7s cubic-bezier(0.25, 0.46, 0.45, 1.2) both;
}

.slide-in-left {
    animation: slide-in-left 0.5s 1s cubic-bezier(0.25, 0.46, 0.45, 1.1) both;
}

.slide-in-left2 {
    animation: slide-in-left 0.5s 1.5s cubic-bezier(0.25, 0.46, 0.45, 1.1) both;
}

.clouds {
    width: 200x;
    height: 300px;
    position: absolute;
    opacity: 0.1;
}

.cloud1 {
    top: -30px;
    height: 240px;
    fill: #eee;
    animation: move 40s linear infinite;
}

.cloud2 {
    top: 140px;
    height: 150px;
    fill: #eee;
    animation: move 45s linear 15s infinite backwards;
}

.cloud3 {
    top: 190px;
    width: 100x;
    height: 200px;
    fill: #eee;
    animation: move 30s linear 8s infinite backwards;
}

.cloud4 {
    top: 260px;
    width: 100x;
    height: 180px;
    fill: #eee;
    animation: move 50s linear 9s infinite backwards;
}

@media screen and (max-width: 770px) {
    .wrapper {
        overflow: hidden;
    }
    .errorPage {
        float: none;
    }
    .penguinContainer {
        height: 350px;
    }
    .penguinWrap {
        width: 600px;
    }
    .penguinWrap:hover .bubble,
    .penguinWrap:hover .bubble::after,
    .penguinWrap:hover .bubble::before {
        opacity: 0;
    }
    .errorPage h1 {
        font-size: 120px;
        font-weight: bold;
    }
}

// ------------ Animation ------------
@-webkit-keyframes move {
    from {
        -webkit-transform: translateX(-400px);
    }
    to {
        -webkit-transform: translateX(105vw);
    }
}

@keyframes waddle {
    50% {
        transform-origin: 600px 410px;
        transform: rotate(0.5deg);
    }
}

@keyframes wing1 {
    50% {
        transform-origin: 25px 50px;
        transform: rotate(-40deg);
    }
}

@keyframes wing2 {
    50% {
        transform-origin: 50px 50px;
        transform: rotate(40deg);
    }
}

@keyframes walk1 {
    50% {
        transform: translateY(-5px);
    }
}

@keyframes slide-in-top {
    0% {
        -webkit-transform: translateY(-1000px);
        transform: translateY(-1000px);
        opacity: 0;
    }
    100% {
        -webkit-transform: translateY(0);
        transform: translateY(0);
        opacity: 1;
    }
}

@keyframes slide-in-left {
    0% {
        -webkit-transform: translateX(-1000px);
        transform: translateX(-1000px);
        opacity: 0;
    }
    100% {
        -webkit-transform: translateX(0);
        transform: translateX(0);
        opacity: 1;
    }
}

// ------------------------------------------
/* CP_DoFullRefresh */
html,
body {
    height: 100%;
    margin: 0;
    padding: 0;
}

* {
    box-sizing: border-box;
}

</style>
<body>
<div class="background">

    <!-- ---------- the SVG clouds ------------ -->
    <svg class="clouds cloud1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0" y="0" width="512" height="512" viewBox="0 0 512 512" enable-background="new 0 0 512 512" xml:space="preserve">
    <path id="cloud-icon" d="M406.1 227.63c-8.23-103.65-144.71-137.8-200.49-49.05 -36.18-20.46-82.33 3.61-85.22 45.9C80.73 229.34 50 263.12 50 304.1c0 44.32 35.93 80.25 80.25 80.25h251.51c44.32 0 80.25-35.93 80.25-80.25C462 268.28 438.52 237.94 406.1 227.63z"/>
	</svg>
    <svg class="clouds cloud2" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0" y="0" width="512" height="512" viewBox="0 0 512 512" enable-background="new 0 0 512 512" xml:space="preserve"> 
    <path id="cloud-icon" d="M406.1 227.63c-8.23-103.65-144.71-137.8-200.49-49.05 -36.18-20.46-82.33 3.61-85.22 45.9C80.73 229.34 50 263.12 50 304.1c0 44.32 35.93 80.25 80.25 80.25h251.51c44.32 0 80.25-35.93 80.25-80.25C462 268.28 438.52 237.94 406.1 227.63z"/>
	</svg>
    <svg class="clouds cloud3" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0" y="0" width="512" height="512" viewBox="0 0 512 512" enable-background="new 0 0 512 512" xml:space="preserve">
    <path id="cloud-icon" d="M406.1 227.63c-8.23-103.65-144.71-137.8-200.49-49.05 -36.18-20.46-82.33 3.61-85.22 45.9C80.73 229.34 50 263.12 50 304.1c0 44.32 35.93 80.25 80.25 80.25h251.51c44.32 0 80.25-35.93 80.25-80.25C462 268.28 438.52 237.94 406.1 227.63z"/>
	</svg>
    <svg class="clouds cloud4" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0" y="0" width="512" height="512" viewBox="0 0 512 512" enable-background="new 0 0 512 512" xml:space="preserve">
    <path id="cloud-icon" d="M406.1 227.63c-8.23-103.65-144.71-137.8-200.49-49.05 -36.18-20.46-82.33 3.61-85.22 45.9C80.73 229.34 50 263.12 50 304.1c0 44.32 35.93 80.25 80.25 80.25h251.51c44.32 0 80.25-35.93 80.25-80.25C462 268.28 438.52 237.94 406.1 227.63z"/>
	</svg>

    <div class="wrapper">
        <!-- ---------------  Text  --------------- -->
        <div class="errorPage">
            <h1 class="slide-in-top">Oops!</h1>
            <h3 class="slide-in-left">404</h3>
            <h4 class="slide-in-left2">Wrong address.<br>You're pretty far south.</h4>
        </div>

        <!-- --------------   Penguin   ---------------- -->
        <div class="penguinContainer">

            <div class="penguinWrap">
                <div class="penguin">
                    <div class="bodyForm1"></div>
                    <div class="bodyForm2"></div>
                    <div class="leftWing"></div>
                    <div class="rightWing"></div>
                    <div class="abdomen1"></div>
                    <div class="abdomen2"></div>
                    <div class="beak1"></div>
                    <div class="beak2"></div>
                    <div class="eyes">
                        <div id="eye1_1"></div>
                        <div id="eye2_1"></div>
                        <div id="eye1_4"></div>
                        <div id="eye2_4"></div>
                    </div>
                    <div class="leg1_1"></div>
                    <div class="leg1_2"></div>
                    <div class="leg2_1"></div>
                    <div class="leg2_2"></div>
                </div>

                <span class="bubble">Homepage maybe?</span>
            </div>
        </div>
    </div>

</div>
</body>
</html>