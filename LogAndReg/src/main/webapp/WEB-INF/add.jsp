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
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="/css/add.css" />
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
        <a href="/pet/new" style="text-decoration: none;">
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
        <!-- <div class="link">
              <img src="/images/library.png" alt="" />
              <h2>Library</h2>
            </div> -->
      </div>

      </div>
      <div class="games">
        <div class="status">
          <h1>Save a soul</h1>
          <br><br>
          <content>
            <h1 style="color: #FF6648;">Add</h1>
            <br><br>


            <div class="card">
              
                 <form:form  method="POST" action="/home"  modelAttribute="pet">
                  <table>
                    <tr><td><form:label path="name">Name</form:label></td><td><form:input type="text" path="name" name="name"/></td></tr>
                    <tr><td><form:label path="gender">Gender</form:label></td><td><form:input type="text" path="gender" name="gender"/></td></tr>
                    <tr><td><form:label path="description">Description</form:label></td><td><form:textarea name="description" path="description" id="" cols="30" rows="10"></form:textarea></td></tr>
                 
                  <tr ><td><form:label path="picture">Add picture</form:label></td>
                 <td>
                 <form:input type="text" path="picture"/></td>
                 <form:errors path="picture"></form:errors></tr>
                 
                    <tr><td><form:label path="location">Location</form:label></td><td><form:input name="location" path="location" type="text"/></td></tr>
                 
                  </table>
                  <figure id="sideright">
                  <img class="abstract" src="images/logoabstract.png" alt="">
                  <figcaption>
                  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <button>uuuuuuuuuu</button>
                    <a href=""><img clas="acceptanse" src="images/Icon=cancel.png" alt=""></a>
                  </figcaption>
                </figure>
                 </form:form>
                
                
               
               
                
              
              
            </div>

          </content>
        </div>
      </div>


    
  </main>
  <div class="circle1"></div>
  <div class="circle2"></div>
</body>

</html>