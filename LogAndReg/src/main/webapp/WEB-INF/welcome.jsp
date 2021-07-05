<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Save a Soul</title>
  <link rel="preconnect" href="https://fonts.gstatic.com" />
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="./css/index.css" />
</head>

<body>
  <main>
    <section class="glass">
      <div class="dashboard">
        <div class="user">
          <a href="/home"><img src="./images/logo (2).png" alt="/" /></a>
        </div>
        <a href="/profile/${user.id }" style="text-decoration: none;">
          <div class="link">
            <img src="./images/Icon=profile.png" alt="" />
            <h2>Me</h2>
          </div>
        </a>
        <a href="/addpet" style="text-decoration: none;">
          <div class="link">
            <img src="./images/Icon=add.png" alt="" />
            <h2>Add</h2>
          </div>
        </a>

        <a href="/contact" style="text-decoration: none;">
          <div class="link">
            <img src="/images/Icon=about.png" alt="" />
            <h2>Contact</h2>
          </div>
        </a>

        <a href="/logout" style="text-decoration: none;">
          <div class="link">
            <h2>Logout</h2>
          </div>
        </a>
        <!-- <div class="link">
              <img src="./images/library.png" alt="" />
              <h2>Library</h2>
            </div> -->
      </div>

      </div>
      <div class="games">
        <div class="status">
          <h1>Save a soul</h1>
          <br><br>
          <content>
            <h2>Most recent</h2>
            <br><br>
            <section class="categories">

              <form action="/category/{id}" ><button name="category"value=""><span id="meow">Mewo</span></button></form> <form action=""><button><span id="woff">Woff</span></button></form> <form action=""><button><span id="other">Other</span></button></form>
            </section>


            <div class="card">
              <figure class="profile">
                
                <figcaption>
                  <h4>Pet title</h4>
                  <p>By creator</p>
                  <form action="/pet/{id}/details">
                    <h1 ><input style="font-size: 10pt;width: auto ;background-color: #FF6648;font-weight: 600;" type="submit" value="Adopt me" >
                    </h1>
                  </form>
                </figcaption>
              </figure>
              <div><img class="petimg" src="images/moto.png" alt=""></div>
            </div>

          </content>
        </div>
      </div>


    
  </main>
  <div class="circle1"></div>
  <div class="circle2"></div>
</body>

</html>
