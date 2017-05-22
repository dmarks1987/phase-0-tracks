# HTTP REQUESTS
* When you surf the web, it works on a request-response system. You request a resource, such as  web page or an image, and you get back a response, or your browser does, at least. Thanks to the “http:” you place before a URL when you type in the browser’s address bar, requests and responses have a predefined structure. As defined by the Hypertext Transfer Protocol (HTTP), an important part of that structure is a status code.

### Common HTTP Status Codes
* Status codes are three-digit numbers that represent either successful responses, informational messages, redirection responses, or error codes. The first number in the three-digit code tells us what kind of response it is. If the code begins with the number 2, it represents a successful request, 1 indicates an informational message, 3 means it's a redirectional response, while 4 and 5 give us error codes. Here are some common codes we'll see:

##### 200 OK
* The request is successful. The information returned with the response is dependent on the method used with the request.

##### 300 Multiple Choices
* The resource being requested can't be resolved into one because it has different choices. There might be a few index.html pages depending on the language.

##### 301 Moved Permanently
* The requested resource has been assigned a new permanent URI.

##### 404 Not Found
* The requested resource is no longer available and can't be found. Common causes for this are the user entering the domain name incorrect or a site no longer existing.

##### 403 Forbidden
* Access to the resource is forbidden. This can mean that the serve only allows certain machines to access the system and the user's machine is not one of them.

##### 500 Internal Server Error
* A catchall server-side error code that doesn't identify a specific problem.

##### 503 Service Unavailable
* The web server isn't available. Could be that the server was just restarted, is in the middle of initialization, it's overloaded or it's just down for maintainence. 

##### 504 Gateway Timeout
* Indicates a gateway timeout. This happens in a setup where a caching or proxy server is directly serving the webpage and the actual webserver behind it is unreachable.

### GET and POST Requests
* These are two request methods that either retrieve some data (GET) or submit data to be processed (POST).

##### GET Method
* Have length restrictions.
* Can be cached, remain in browser history, and be bookmarked.
* Should NEVER be used when dealing with sensitive data.
* Should ONLY be used to retrieve data.

##### POST Method
* Never cached.
* Don't stay in browser history.
* Can't be bookmarked.
* No restrictions on data length.
* Data not displayed in URL.
* Parameters not stored in web server logs.
* More difficult to hack.

### Cookies
* a small piece of data sent from a website and stored on the user's computer by the user's web browser while the user is browsing.
* Cookies are set using the Set-Cookie HTTP header, sent in an HTTP response from the web server. This header instructs the web browser to store the cookie and send it back in future requests to the server
