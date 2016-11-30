What are some common HTTP status codes?

* 2xx - Success codes
    - 200 OK - the request has succeeded
    - 201 Created - the request has been fulfilled and resulted in a new resource being created
    - 204 No Content - the server has fulfilled the request but does not need to return an entity-body, and might want to return updated metainformation
    
* 3xx - Redirection codes
    - 304 Not Modified - if the client has performed a conditional GET request and access is allowed, but the document has not been modified, the server SHOULD respond with this status code

* 4xx Client Error codes
    - 400 Bad Request - the request could not be understood by the server due to malformed syntax
    - 401 Unauthorized - the request requires user authentication
    - 403 Forbidden - the server understood the request but is refusing to fulfill it
    - 404 Not Found - the server has not found anything matching the Request-URI
    - 409 Conflict - the request could not be completed due to a conflict with the current state of the resource

* 5xx Server Error codes
    - 500 Internal Server Error - the server encountered an unexpected condition which prevented it from fulfilling the request


What is the difference between a GET request and a POST request? When might each be used?

    A GET request requests data from a specified resource while a POST request submits data (much like a form submission) to be processed to a specified resource. GET would be used to retrieve remote data while POST would be used to insert or update remote data.


Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
    
    A cookie is a small piece of data (a text file) sent from a web server to a user's web browser and then stored on the user's machine. This information is sent back to the web server with each subsequent HTTP request. Web servers use cookies to identify individual users, for example, after an individual's login credentials have been verified.