<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

    <!-- Style Resources -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <style>
    /* ------------------------------------- */
    /* Media queries     ................... */
    /* ------------------------------------- */
    @media screen and (min-width: 1024px) {
        .custom-box {
            font-size: 17px;
            width: 500px;
        }
    }

    @media screen and (max-width: 1024px) {
        .custom-box {
            font-size: 17px;
        }
    }
    </style>
</head>
<body>
    <h1>${helloMessage} ;)</h1>
    <h2>age parameter is ${age}</h2>
    <h2>${welcomeMessage}</h2>

    <h1>Simple Service Challenge <span class="badge badge-secondary">New</span></h1>

    <div class="custom-box">
        <ul class="list-group">
          <li class="list-group-item">
          (1) Create an interface called DemoService with a method named getHelloMessage() that has
              String parameter called user and create another method named getWelcomeMessage() without
              parameters. Both methods should return a String.
          </li>
          <li class="list-group-item">
          (2) Create a class called DemoServiceImpl and annotate it with the @Service annotation. I will
              explain what this annotation is later in this video, so don't worry.
          </li>
          <li class="list-group-item">
          (3) The DemoServiceImpl class needs to implement the DemoService interface, and within the
              class, the method getHelloMessage() should return the String "Hello " + user, and the method
              getWelcomeMessage() should return the String "Welcome to this Demo application.". Those two
              methods are defined in the DemoService interface as mentioned above.
          </li>
          <li class="list-group-item">
          (4) In DemoController inject/autowire DemoService using constructor injection.
          </li>
          <li class="list-group-item">
          (5) In the controller methods, use DemoService to add attributes to the model instead
              of using strings. In other words, call the service methods to get messages that are used
              as model attributes and displayed by the JSP page.
          </li>
          <li class="list-group-item">
          (6) You have to remove the user model attribute in the welcome() controller method and use
              another attribute instead. The value for the attribute should come from calling getHelloMessage()
              from DemoService.
          </li>
          <li class="list-group-item">
          (7) Modify the welcome.jsp file to use the new model attribute name instead of user.
          </li>
        </ul>
    </div>
</body>
</html>