<img src=./image.png width=50%>

# server requests failure report
Last week, it was reported that the kakebe online shopping platform was returning 301 Error on all requests made on the platform routes, all the services were down.  99% of the users were affected. The root cause was that we permanently moved the url of our site without prior informing the customers on our available platforms.

## Timeline
The error was realized on Saturday 30th June 1200 hours (East Africa Time) when we decided to permanently move our url during to the lagging of the routes we realized on the server and had to take immediate action . Our public relations and communications team  then Sunday 1st July 2200 hours (East Africa Time) announced to all customers about the sudden change and and a link to the current url.

## Root cause and resolution
Our site is run on one active server web 01, and two redandant servers , web 02 and web 03 and since we had configured web 01 to handle all http request from customers, as the number and request shoot high, the server got overloadedand greatly slowed down abraptly as the memory got used up. 


In immediate response, we then imediately reconfigured web 02, as it was more powerful and had large memory enough to handle the increased routes.

## Measures against such problem in future
- we then configured the redundant server, web 03 to a load balancer to web 01 and web 02.
- keeping an eye on our servers to ensure they are running properly
- Having redandant servers to prevent your program from completely going offline during an issue like this.
