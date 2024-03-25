[1mdiff --git a/Tick/__pycache__/settings.cpython-312.pyc b/Tick/__pycache__/settings.cpython-312.pyc[m
[1mindex a2542d3..7b6c850 100644[m
Binary files a/Tick/__pycache__/settings.cpython-312.pyc and b/Tick/__pycache__/settings.cpython-312.pyc differ
[1mdiff --git a/Tick/settings.py b/Tick/settings.py[m
[1mindex 584d977..bf7dde2 100644[m
[1m--- a/Tick/settings.py[m
[1m+++ b/Tick/settings.py[m
[36m@@ -120,6 +120,9 @@[m [mUSE_TZ = True[m
 [m
 STATIC_URL = 'static/'[m
 [m
[32m+[m[32mSTATICFILES_DIRS = [[m
[32m+[m[32m    BASE_DIR / 'static'[m
[32m+[m[32m][m
 # Default primary key field type[m
 # https://docs.djangoproject.com/en/5.0/ref/settings/#default-auto-field[m
 [m
[1mdiff --git a/base/templates/base/login_register.html b/base/templates/base/login_register.html[m
[1mindex 15eb388..9d84379 100644[m
[1m--- a/base/templates/base/login_register.html[m
[1m+++ b/base/templates/base/login_register.html[m
[36m@@ -1,18 +1,73 @@[m
[31m-{%  extends 'main.html' %}[m
[32m+[m[32m{% extends 'main.html' %}[m
 [m
 {% block content %}[m
[31m-<div>[m
[31m-    <form method="POST" action="">[m
[31m-[m
[31m-        <label>Username:</label>[m
[31m-        <input type="text" name="Introduceți numele de utilizator" placeholder="Introduceți numele de utilizator" />[m
[31m-[m
[31m-        <label>Password:</label>[m
[31m-        <input type="password" name="Introduceți parola" placeholder="Introduceți numele de utilizator" />[m
[31m-[m
[31m-        <input type="submit" value="Loghează-te" />[m
[31m-    </form>[m
[31m-[m
[32m+[m[32m<div class="section">[m
[32m+[m	[32m<div class="container">[m
[32m+[m		[32m<div class="row full-height justify-content-center">[m
[32m+[m		[32m <body>[m
[32m+[m[32m<div id="stars"></div>[m
[32m+[m[32m<div id="stars2"></div>[m
[32m+[m[32m<div id="stars3"></div>[m
[32m+[m[32m<div class="section">[m
[32m+[m	[32m<div class="container">[m
[32m+[m		[32m<div class="row full-height justify-content-center">[m
[32m+[m			[32m<div class="col-12 text-center align-self-center py-5">[m
[32m+[m				[32m<div class="section pb-5 pt-5 pt-sm-2 text-center">[m
[32m+[m					[32m<h6 class="mb-0 pb-3"><span>Autentificare </span><span>Înregistrare</span></h6>[m
[32m+[m								[32m<input class="checkbox" type="checkbox" id="reg-log" name="reg-log"/>[m
[32m+[m								[32m<label for="reg-log"></label>[m
[32m+[m					[32m<div class="card-3d-wrap mx-auto">[m
[32m+[m						[32m<div class="card-3d-wrapper">[m
[32m+[m							[32m<div class="card-front">[m
[32m+[m								[32m<div class="center-wrap">[m
[32m+[m									[32m<div class="section text-center">[m
[32m+[m										[32m<h4 class="mb-4 pb-3">Autentificare</h4>[m
[32m+[m										[32m<div class="form-group">[m
[32m+[m											[32m<input type="email" class="form-style" placeholder="Email">[m
[32m+[m											[32m<i class="input-icon uil uil-at"></i>[m
[32m+[m										[32m</div>[m
[32m+[m										[32m<div class="form-group mt-2">[m
[32m+[m											[32m<input type="password" class="form-style" placeholder="Parolă">[m
[32m+[m											[32m<i class="input-icon uil uil-lock-alt"></i>[m
[32m+[m										[32m</div>[m
[32m+[m										[32m<a href="https://www.web-leb.com/code" class="btn mt-4">Autentificare</a>[m
[32m+[m										[32m<p class="mb-0 mt-4 text-center"><a href="https://www.web-leb.com/code" class="link">Ai uitat parola?</a></p>[m
[32m+[m											[32m</div>[m
[32m+[m										[32m</div>[m
[32m+[m									[32m</div>[m
[32m+[m							[32m<div class="card-back">[m
[32m+[m								[32m<div class="center-wrap">[m
[32m+[m									[32m<div class="section text-center">[m
[32m+[m										[32m<h4 class="mb-3 pb-3">Înregistrare</h4>[m
[32m+[m										[32m<div class="form-group">[m
[32m+[m											[32m<input type="text" class="form-style" placeholder="Nume complet">[m
[32m+[m											[32m<i class="input-icon uil uil-user"></i>[m
[32m+[m										[32m</div>[m
[32m+[m										[32m<div class="form-group mt-2">[m
[32m+[m											[32m<input type="tel" class="form-style" placeholder="Număr de telefon">[m
[32m+[m											[32m<i class="input-icon uil uil-phone"></i>[m
[32m+[m										[32m</div>[m
[32m+[m										[32m<div class="form-group mt-2">[m
[32m+[m											[32m<input type="email" class="form-style" placeholder="Email">[m
[32m+[m											[32m<i class="input-icon uil uil-at"></i>[m
[32m+[m										[32m</div>[m
[32m+[m										[32m<div class="form-group mt-2">[m
[32m+[m											[32m<input type="password" class="form-style" placeholder="Parolă">[m
[32m+[m											[32m<i class="input-icon uil uil-lock-alt"></i>[m
[32m+[m										[32m</div>[m
[32m+[m										[32m<a href="https://www.web-leb.com/code" class="btn mt-4">Înregistrare</a>[m
[32m+[m											[32m</div>[m
[32m+[m										[32m</div>[m
[32m+[m									[32m</div>[m
[32m+[m								[32m</div>[m
[32m+[m							[32m</div>[m
[32m+[m						[32m</div>[m
[32m+[m					[32m</div>[m
[32m+[m				[32m</div>[m
[32m+[m		[32m</div>[m
 </div>[m
[31m-[m
[31m-{% endblock content %}[m
\ No newline at end of file[m
[32m+[m[32m</body>[m
[32m+[m		[32m</div>[m
[32m+[m	[32m</div>[m
[32m+[m[32m</div>[m
[32m+[m[32m{% endblock content %}[m
[1mdiff --git a/base/templates/base/room.html b/base/templates/base/room.html[m
[1mindex 83cfc1a..2e5976f 100644[m
[1m--- a/base/templates/base/room.html[m
[1m+++ b/base/templates/base/room.html[m
[36m@@ -1,13 +1,82 @@[m
[31m-<!DOCTYPE html>[m
[31m-<html lang="en">[m
[31m-  <head>[m
[31m-    <meta charset="UTF-8" />[m
[31m-    <title>Title</title>[m
[31m-  </head>[m
[31m-  <body>[m
[31m-{% extends 'main.html'%}[m
[32m+[m[32m{%  extends 'main.html' %}[m
[32m+[m
 {% block content %}[m
[31m-    <h1>{{room.name}}</h1>[m
[31m-  {% endblock %}[m
[31m-  </body>[m
[32m+[m[32m<div>[m
[32m+[m[32m    <!doctype html>[m
[32m+[m[32m<html lang="en">[m
[32m+[m[32m<head>[m
[32m+[m
[32m+[m[32m  <title>Webleb</title>[m
[32m+[m[32m  <meta charset="utf-8">[m
[32m+[m[32m  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">[m
[32m+[m[32m  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v2.1.9/css/unicons.css">[m
[32m+[m[32m  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css">[m
[32m+[m[41m  [m
[32m+[m[32m</head>[m
[32m+[m[32m<body>[m
[32m+[m
[32m+[m	[32m<div class="section">[m
[32m+[m		[32m<div class="container">[m
[32m+[m			[32m<div class="row full-height justify-content-center">[m
[32m+[m				[32m<div class="col-12 text-center align-self-center py-5">[m
[32m+[m					[32m<div class="section pb-5 pt-5 pt-sm-2 text-center">[m
[32m+[m						[32m<h6 class="mb-0 pb-3"><span>Log In </span><span>Sign Up</span></h6>[m
[32m+[m			[41m          [m	[32m<input class="checkbox" type="checkbox" id="reg-log" name="reg-log"/>[m
[32m+[m			[41m          [m	[32m<label for="reg-log"></label>[m
[32m+[m						[32m<div class="card-3d-wrap mx-auto">[m
[32m+[m							[32m<div class="card-3d-wrapper">[m
[32m+[m								[32m<div class="card-front">[m
[32m+[m									[32m<div class="center-wrap">[m
[32m+[m										[32m<div class="section text-center">[m
[32m+[m											[32m<h4 class="mb-4 pb-3">Log In</h4>[m
[32m+[m											[32m<div class="form-group">[m
[32m+[m												[32m<input type="email" class="form-style" placeholder="Email">[m
[32m+[m												[32m<i class="input-icon uil uil-at"></i>[m
[32m+[m											[32m</div>[m
[32m+[m											[32m<div class="form-group mt-2">[m
[32m+[m												[32m<input type="password" class="form-style" placeholder="Password">[m
[32m+[m												[32m<i class="input-icon uil uil-lock-alt"></i>[m
[32m+[m											[32m</div>[m
[32m+[m											[32m<a href="https://www.web-leb.com/code" class="btn mt-4">Login</a>[m
[32m+[m[32m                      <p class="mb-0 mt-4 text-center"><a href="https://www.web-leb.com/code" class="link">Forgot your password?</a></p>[m
[32m+[m				[41m      [m					[32m</div>[m
[32m+[m			[41m      [m					[32m</div>[m
[32m+[m			[41m      [m				[32m</div>[m
[32m+[m								[32m<div class="card-back">[m
[32m+[m									[32m<div class="center-wrap">[m
[32m+[m										[32m<div class="section text-center">[m
[32m+[m											[32m<h4 class="mb-3 pb-3">Sign Up</h4>[m
[32m+[m											[32m<div class="form-group">[m
[32m+[m												[32m<input type="text" class="form-style" placeholder="Full Name">[m
[32m+[m												[32m<i class="input-icon uil uil-user"></i>[m
[32m+[m											[32m</div>[m
[32m+[m											[32m<div class="form-group mt-2">[m
[32m+[m												[32m<input type="tel" class="form-style" placeholder="Phone Number">[m
[32m+[m												[32m<i class="input-icon uil uil-phone"></i>[m
[32m+[m											[32m</div>[m
[32m+[m[32m                      <div class="form-group mt-2">[m
[32m+[m												[32m<input type="email" class="form-style" placeholder="Email">[m
[32m+[m												[32m<i class="input-icon uil uil-at"></i>[m
[32m+[m											[32m</div>[m
[32m+[m											[32m<div class="form-group mt-2">[m
[32m+[m												[32m<input type="password" class="form-style" placeholder="Password">[m
[32m+[m												[32m<i class="input-icon uil uil-lock-alt"></i>[m
[32m+[m											[32m</div>[m
[32m+[m											[32m<a href="https://www.web-leb.com/code" class="btn mt-4">Register</a>[m
[32m+[m				[41m      [m					[32m</div>[m
[32m+[m			[41m      [m					[32m</div>[m
[32m+[m			[41m      [m				[32m</div>[m
[32m+[m			[41m      [m			[32m</div>[m
[32m+[m			[41m      [m		[32m</div>[m
[32m+[m			[41m      [m	[32m</div>[m
[32m+[m		[41m      [m	[32m</div>[m
[32m+[m	[41m      [m	[32m</div>[m
[32m+[m	[32m    </div>[m
[32m+[m	[32m</div>[m
[32m+[m[32m</body>[m
 </html>[m
[32m+[m
[32m+[m
[32m+[m[32m</div>[m
[32m+[m
[32m+[m[32m{% endblock content %}[m
\ No newline at end of file[m
[1mdiff --git a/static/js/script.js b/static/js/script.js[m
[1mindex e69de29..c14249f 100644[m
[1m--- a/static/js/script.js[m
[1m+++ b/static/js/script.js[m
[36m@@ -0,0 +1,53 @@[m
[32m+[m[32mlet dropdowns = document.querySelectorAll('.navbar .dropdown-toggler')[m
[32m+[m[32mlet dropdownIsOpen = false[m
[32m+[m
[32m+[m[32m// Handle dropdown menues[m
[32m+[m[32mif (dropdowns.length) {[m
[32m+[m[32m  dropdowns.forEach((dropdown) => {[m
[32m+[m[32m    dropdown.addEventListener('click', (event) => {[m
[32m+[m[32m      let target = document.querySelector(`#${event.target.dataset.dropdown}`)[m
[32m+[m
[32m+[m[32m      if (target) {[m
[32m+[m[32m        if (target.classList.contains('show')) {[m
[32m+[m[32m          target.classList.remove('show')[m
[32m+[m[32m          dropdownIsOpen = false[m
[32m+[m[32m        } else {[m
[32m+[m[32m          target.classList.add('show')[m
[32m+[m[32m          dropdownIsOpen = true[m
[32m+[m[32m        }[m
[32m+[m[32m      }[m
[32m+[m[32m    })[m
[32m+[m[32m  })[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m// Handle closing dropdowns if a user clicked the body[m
[32m+[m[32mwindow.addEventListener('mouseup', (event) => {[m
[32m+[m[32m  if (dropdownIsOpen) {[m
[32m+[m[32m    dropdowns.forEach((dropdownButton) => {[m
[32m+[m[32m      let dropdown = document.querySelector(`#${dropdownButton.dataset.dropdown}`)[m
[32m+[m[32m      let targetIsDropdown = dropdown == event.target[m
[32m+[m
[32m+[m[32m      if (dropdownButton == event.target) {[m
[32m+[m[32m        return[m
[32m+[m[32m      }[m
[32m+[m
[32m+[m[32m      if ((!targetIsDropdown) && (!dropdown.contains(event.target))) {[m
[32m+[m[32m        dropdown.classList.remove('show')[m
[32m+[m[32m      }[m
[32m+[m[32m    })[m
[32m+[m[32m  }[m
[32m+[m[32m})[m
[32m+[m[32mfunction handleSmallScreens() {[m
[32m+[m[32m  document.querySelector('.navbar-toggler')[m
[32m+[m[32m    .addEventListener('click', () => {[m
[32m+[m[32m      let navbarMenu = document.querySelector('.navbar-menu')[m
[32m+[m
[32m+[m[32m      if (!navbarMenu.classList.contains('active')) {[m
[32m+[m[32m        navbarMenu.classList.add('active')[m
[32m+[m[32m      } else {[m
[32m+[m[32m        navbarMenu.classList.remove('active')[m
[32m+[m[32m      }[m
[32m+[m[32m    })[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mhandleSmallScreens()[m
[1mdiff --git a/static/styles/main.css b/static/styles/main.css[m
[1mindex e69de29..5df6ec7 100644[m
[1m--- a/static/styles/main.css[m
[1m+++ b/static/styles/main.css[m
[36m@@ -0,0 +1,972 @@[m
[32m+[m[32m@import url("https://fonts.googleapis.com/css?family=Poppins:400,500,600,700,800,900");[m
[32m+[m[32mbody {[m
[32m+[m[32m  font-family: "Poppins", sans-serif;[m
[32m+[m[32m  font-weight: 300;[m
[32m+[m[32m  line-height: 1.7;[m
[32m+[m[32m  color: #ffeba7;[m
[32m+[m[32m  background-color: #1f2029;[m
[32m+[m[32m  overflow: hidden;[m
[32m+[m[32m  height: 100vh;[m
[32m+[m[32m  background: radial-gradient(ellipse at bottom, #1b2735 0%, #12141d 100%);[m
[32m+[m[32m}[m
[32m+[m[32ma:hover {[m
[32m+[m[32m  text-decoration: none;[m
[32m+[m[32m}[m
[32m+[m[32m.link {[m
[32m+[m[32m  color: #ffeba7;[m
[32m+[m[32m}[m
[32m+[m[32m.link:hover {[m
[32m+[m[32m  color: #c4c3ca;[m
[32m+[m[32m}[m
[32m+[m[32mp {[m
[32m+[m[32m  font-weight: 500;[m
[32m+[m[32m  font-size: 14px;[m
[32m+[m[32m}[m
[32m+[m[32mh4 {[m
[32m+[m[32m  font-weight: 600;[m
[32m+[m[32m}[m
[32m+[m[32mh6 span {[m
[32m+[m[32m  padding: 0 20px;[m
[32m+[m[32m  font-weight: 700;[m
[32m+[m[32m}[m
[32m+[m[32m.section {[m
[32m+[m[32m  position: relative;[m
[32m+[m[32m  width: 100%;[m
[32m+[m[32m  display: block;[m
[32m+[m[32m}[m
[32m+[m[32m.full-height {[m
[32m+[m[32m  min-height: 100vh;[m
[32m+[m[32m}[m
[32m+[m[32m[type="checkbox"]:checked,[m
[32m+[m[32m[type="checkbox"]:not(:checked) {[m
[32m+[m[32m  display: none;[m
[32m+[m[32m}[m
[32m+[m[32m.checkbox:checked + label,[m
[32m+[m[32m.checkbox:not(:checked) + label {[m
[32m+[m[32m  position: relative;[m
[32m+[m[32m  display: block;[m
[32m+[m[32m  text-align: center;[m
[32m+[m[32m  width: 60px;[m
[32m+[m[32m  height: 16px;[m
[32m+[m[32m  border-radius: 8px;[m
[32m+[m[32m  padding: 0;[m
[32m+[m[32m  margin: 10px auto;[m
[32m+[m[32m  cursor: pointer;[m
[32m+[m[32m  background-color: #ffeba7;[m
[32m+[m[32m}[m
[32m+[m[32m.checkbox:checked + label:before,[m
[32m+[m[32m.checkbox:not(:checked) + label:before {[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  display: block;[m
[32m+[m[32m  width: 36px;[m
[32m+[m[32m  height: 36px;[m
[32m+[m[32m  border-radius: 50%;[m
[32m+[m[32m  color: #ffeba7;[m
[32m+[m[32m  background-color: #020305;[m
[32m+[m[32m  font-family: "unicons";[m
[32m+[m[32m  content: "\eb4f";[m
[32m+[m[32m  z-index: 20;[m
[32m+[m[32m  top: -10px;[m
[32m+[m[32m  left: -10px;[m
[32m+[m[32m  line-height: 36px;[m
[32m+[m[32m  text-align: center;[m
[32m+[m[32m  font-size: 24px;[m
[32m+[m[32m  transition: all 0.5s ease;[m
[32m+[m[32m}[m
[32m+[m[32m.checkbox:checked + label:before {[m
[32m+[m[32m  transform: translateX(44px) rotate(-270deg);[m
[32m+[m[32m}[m
[32m+[m[32m.card-3d-wrap {[m
[32m+[m[32m  position: relative;[m
[32m+[m[32m  width: 440px;[m
[32m+[m[32m  max-width: 100%;[m
[32m+[m[32m  height: 400px;[m
[32m+[m[32m  -webkit-transform-style: preserve-3d;[m
[32m+[m[32m  transform-style: preserve-3d;[m
[32m+[m[32m  perspective: 800px;[m
[32m+[m[32m  margin-top: 60px;[m
[32m+[m[32m}[m
[32m+[m[32m.card-3d-wrapper {[m
[32m+[m[32m  width: 100%;[m
[32m+[m[32m  height: 100%;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  -webkit-transform-style: preserve-3d;[m
[32m+[m[32m  transform-style: preserve-3d;[m
[32m+[m[32m  transition: all 600ms ease-out;[m
[32m+[m[32m}[m
[32m+[m[32m.card-front,[m
[32m+[m[32m.card-back {[m
[32m+[m[32m  width: 100%;[m
[32m+[m[32m  height: 100%;[m
[32m+[m[32m  background-color: #2b2e38;[m
[32m+[m[32m  background-image: url("../images/caca.png");[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  border-radius: 6px;[m
[32m+[m[32m  -webkit-transform-style: preserve-3d;[m
[32m+[m[32m}[m
[32m+[m[32m.card-back {[m
[32m+[m[32m  transform: rotateY(180deg);[m
[32m+[m[32m}[m
[32m+[m[32m.checkbox:checked ~ .card-3d-wrap .card-3d-wrapper {[m
[32m+[m[32m  transform: rotateY(180deg);[m
[32m+[m[32m}[m
[32m+[m[32m.center-wrap {[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  width: 100%;[m
[32m+[m[32m  padding: 0 35px;[m
[32m+[m[32m  top: 50%;[m
[32m+[m[32m  left: 0;[m
[32m+[m[32m  transform: translate3d(0, -50%, 35px) perspective(100px);[m
[32m+[m[32m  z-index: 20;[m
[32m+[m[32m  display: block;[m
[32m+[m[32m}[m
[32m+[m[32m.form-group {[m
[32m+[m[32m  position: relative;[m
[32m+[m[32m  display: block;[m
[32m+[m[32m  margin: 0;[m
[32m+[m[32m  padding: 0;[m
[32m+[m[32m}[m
[32m+[m[32m.form-style {[m
[32m+[m[32m  padding: 13px 20px;[m
[32m+[m[32m  padding-left: 55px;[m
[32m+[m[32m  height: 48px;[m
[32m+[m[32m  width: 100%;[m
[32m+[m[32m  font-weight: 500;[m
[32m+[m[32m  border-radius: 4px;[m
[32m+[m[32m  font-size: 14px;[m
[32m+[m[32m  line-height: 22px;[m
[32m+[m[32m  letter-spacing: 0.5px;[m
[32m+[m[32m  outline: none;[m
[32m+[m[32m  color: #c4c3ca;[m
[32m+[m[32m  background-color: #1f2029;[m
[32m+[m[32m  border: none;[m
[32m+[m[32m  -webkit-transition: all 200ms linear;[m
[32m+[m[32m  transition: all 200ms linear;[m
[32m+[m[32m  box-shadow: 0 4px 8px 0 rgba(21, 21, 21, 0.2);[m
[32m+[m[32m}[m
[32m+[m[32m.form-style:focus,[m
[32m+[m[32m.form-style:active {[m
[32m+[m[32m  border: none;[m
[32m+[m[32m  outline: none;[m
[32m+[m[32m  box-shadow: 0 4px 8px 0 rgba(21, 21, 21, 0.2);[m
[32m+[m[32m}[m
[32m+[m[32m.input-icon {[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  top: 0;[m
[32m+[m[32m  left: 18px;[m
[32m+[m[32m  height: 48px;[m
[32m+[m[32m  font-size: 24px;[m
[32m+[m[32m  line-height: 48px;[m
[32m+[m[32m  text-align: left;[m
[32m+[m[32m  -webkit-transition: all 200ms linear;[m
[32m+[m[32m  transition: all 200ms linear;[m
[32m+[m[32m}[m
[32m+[m[32m.btn {[m
[32m+[m[32m  border-radius: 4px;[m
[32m+[m[32m  height: 44px;[m
[32m+[m[32m  font-size: 13px;[m
[32m+[m[32m  font-weight: 600;[m
[32m+[m[32m  text-transform: uppercase;[m
[32m+[m[32m  -webkit-transition: all 200ms linear;[m
[32m+[m[32m  transition: all 200ms linear;[m
[32m+[m[32m  padding: 0 30px;[m
[32m+[m[32m  letter-spacing: 1px;[m
[32m+[m[32m  display: -webkit-inline-flex;[m
[32m+[m[32m  display: -ms-inline-flexbox;[m
[32m+[m[32m  display: inline-flex;[m
[32m+[m[32m  align-items: center;[m
[32m+[m[32m  background-color: #ffeba7;[m
[32m+[m[32m  color: #000000;[m
[32m+[m[32m}[m
[32m+[m[32m.btn:hover {[m
[32m+[m[32m  background-color: #000000;[m
[32m+[m[32m  color: #ffeba7;[m
[32m+[m[32m  box-shadow: 0 8px 24px 0 rgba(16, 39, 112, 0.2);[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m#stars {[m
[32m+[m[32m  width: 1px;[m
[32m+[m[32m  height: 1px;[m
[32m+[m[32m  background: transparent;[m
[32m+[m[32m  box-shadow: 174px 187px #fff, 749px 1972px #ffffff, 1996px 1113px #fff,[m
[32m+[m[32m    126px 42px #fff, 816px 200px #fff, 47px 1229px #fff, 750px 902px #fff,[m
[32m+[m[32m    1884px 1799px #fff, 460px 1597px #fff, 1215px 1884px #fff,[m
[32m+[m[32m    1986px 1726px #fff, 565px 823px #fff, 699px 1940px #fff, 32px 1091px #fff,[m
[32m+[m[32m    1559px 572px #fff, 1232px 815px #fff, 1060px 682px #fff, 1551px 531px #fff,[m
[32m+[m[32m    301px 976px #fff, 889px 1344px #fff, 410px 765px #fff, 1691px 231px #fff,[m
[32m+[m[32m    552px 82px #fff, 1849px 864px #fff, 236px 1881px #fff, 767px 1613px #fff,[m
[32m+[m[32m    1825px 1616px #fff, 440px 930px #fff, 1921px 1397px #fff, 409px 892px #fff,[m
[32m+[m[32m    1403px 128px #fff, 1617px 1549px #fff, 271px 1332px #fff, 5px 1884px #fff,[m
[32m+[m[32m    1371px 634px #fff, 382px 609px #fff, 1022px 1200px #fff, 601px 836px #fff,[m
[32m+[m[32m    811px 1240px #fff, 1266px 713px #fff, 1514px 1237px #fff, 318px 751px #fff,[m
[32m+[m[32m    662px 1315px #fff, 1592px 1170px #fff, 112px 290px #fff, 1885px 1104px #fff,[m
[32m+[m[32m    1247px 1511px #fff, 1803px 1126px #fff, 710px 527px #fff, 1480px 908px #fff,[m
[32m+[m[32m    1386px 74px #fff, 1414px 1279px #fff, 289px 1430px #fff, 258px 1933px #fff,[m
[32m+[m[32m    1648px 665px #fff, 444px 201px #fff, 1102px 1939px #fff, 619px 835px #fff,[m
[32m+[m[32m    810px 1704px #fff, 381px 1922px #fff, 1229px 1335px #fff, 1448px 637px #fff,[m
[32m+[m[32m    680px 455px #fff, 96px 1142px #fff, 449px 960px #fff, 274px 1974px #fff,[m
[32m+[m[32m    24px 1044px #fff, 1449px 1743px #fff, 537px 1874px #fff, 282px 272px #fff,[m
[32m+[m[32m    1090px 1557px #fff, 1738px 680px #fff, 1221px 731px #fff, 1620px 1212px #fff,[m
[32m+[m[32m    481px 466px #fff, 269px 611px #fff, 939px 1392px #fff, 1275px 1667px #fff,[m
[32m+[m[32m    163px 694px #fff, 1897px 27px #fff, 1991px 661px #fff, 988px 762px #fff,[m
[32m+[m[32m    961px 1686px #fff, 333px 1172px #fff, 1735px 229px #fff, 1322px 331px #fff,[m
[32m+[m[32m    362px 771px #fff, 287px 36px #fff, 1985px 1283px #fff, 1833px 162px #fff,[m
[32m+[m[32m    416px 1610px #fff, 991px 16px #fff, 1762px 424px #fff, 1669px 36px #fff,[m
[32m+[m[32m    1500px 598px #fff, 1108px 672px #fff, 992px 447px #fff, 879px 107px #fff,[m
[32m+[m[32m    1500px 756px #fff, 832px 1440px #fff, 1580px 1248px #fff, 231px 660px #fff,[m
[32m+[m[32m    799px 392px #fff, 1220px 1337px #fff, 892px 204px #fff, 574px 1343px #fff,[m
[32m+[m[32m    312px 728px #fff, 1067px 721px #fff, 735px 1612px #fff, 20px 1114px #fff,[m
[32m+[m[32m    454px 1957px #fff, 1099px 1905px #fff, 1442px 1051px #fff, 477px 150px #fff,[m
[32m+[m[32m    1838px 341px #fff, 587px 1068px #fff, 743px 607px #fff, 1803px 1706px #fff,[m
[32m+[m[32m    247px 114px #fff, 1498px 1426px #fff, 831px 1615px #fff, 158px 1183px #fff,[m
[32m+[m[32m    408px 1503px #fff, 790px 1545px #fff, 543px 906px #fff, 793px 1384px #fff,[m
[32m+[m[32m    1030px 408px #fff, 1706px 802px #fff, 622px 275px #fff, 277px 922px #fff,[m
[32m+[m[32m    534px 496px #fff, 533px 44px #fff, 1662px 1877px #fff, 1055px 1401px #fff,[m
[32m+[m[32m    256px 611px #fff, 548px 1978px #fff, 348px 48px #fff, 1809px 1016px #fff,[m
[32m+[m[32m    550px 846px #fff, 945px 1301px #fff, 113px 1305px #fff, 907px 1660px #fff,[m
[32m+[m[32m    729px 587px #fff, 1979px 1343px #fff, 1360px 61px #fff, 265px 1229px #fff,[m
[32m+[m[32m    1967px 1781px #fff, 278px 1895px #fff, 1636px 701px #fff, 1373px 1390px #fff,[m
[32m+[m[32m    1874px 391px #fff, 1326px 1972px #fff, 1001px 1169px #fff, 1478px 193px #fff,[m
[32m+[m[32m    202px 447px #fff, 1963px 1563px #fff, 1215px 159px #fff, 21px 669px #fff,[m
[32m+[m[32m    1518px 789px #fff, 1866px 460px #fff, 948px 195px #fff, 244px 1484px #fff,[m
[32m+[m[32m    768px 1235px #fff, 1846px 1180px #fff, 973px 822px #fff, 1994px 39px #fff,[m
[32m+[m[32m    1788px 1773px #fff, 692px 599px #fff, 1751px 1868px #fff, 161px 1885px #fff,[m
[32m+[m[32m    1776px 1781px #fff, 1801px 1320px #fff, 550px 643px #fff, 343px 613px #fff,[m
[32m+[m[32m    1387px 498px #fff, 1738px 715px #fff, 724px 544px #fff, 1367px 1431px #fff,[m
[32m+[m[32m    1506px 1827px #fff, 1410px 525px #fff, 793px 1053px #fff, 1211px 259px #fff,[m
[32m+[m[32m    