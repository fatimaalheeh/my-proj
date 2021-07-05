<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Save a Soul</title>
  <link rel="preconnect" href="https://fonts.gstatic.com" />
  <link rel="stylesheet" href="/css/trial.css" />
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&display=swap" rel="stylesheet" />
  
</head>

<body>
  <main>
    <section class="glass">
      <div class="dashboard">
        <div class="user">
          <a href="/home"><img src="/images/logo (2).png" alt="/" /></a>
        </div>
        <a href="/profile" style="text-decoration: none;">
          <div class="link">
            <img src="/images/Icon=profile.png" alt="" />
            <h2>Me</h2>
          </div>
        </a>
        <a href="/addpet" style="text-decoration: none;">
          <div class="link">
            <img src="/images/Icon=add.png" alt="" />
            <h2>Add</h2>
          </div>
        </a>

        <a href="/" style="text-decoration: none;">
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
      
      </div>

      </div>
      <div class="games">
        <div class="status">
          <h1>Save a soul</h1>
          <br><br>
          <content>
            <h1 style="color: #FF6648;">Welcome</h1>
            <br><br>


            <div class="card">
              <figure class="profile">
                
                <figcaption>
                  <h2>my Name</h2>
                  <h4>0593356354</h4>
                  
                </figcaption>
              </figure>
                <figure>
                  <form action=""><span><button style="color: #FF6648;">added pets</button></span></form>
                  <form action=""><span><button style="background-color: #FF6648;">adopted pets</button></span></form>
                </figure>
            </div>

          </content>
        </div>
      </div>


    </section>
  </main>
  <div class="circle1"></div>
  <div class="circle2"></div>
</body>

</html>