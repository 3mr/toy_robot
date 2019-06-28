# README

IT'S VERY IMPORTANT TO READ THIS FILE BEFORE RUNNING THE APP.

follow those steps to setup the app:

* Clone the repo or unzip the downloaded file

* Run ```rake db:create``` to create the sqlite3 DB.

* Run ```rake db:migrate``` to build the needed table.

* Run ```rake db:seed``` THIS IS A VERY IMPORTANT STEP.

* Navigate to ```http://localhost:3000``` in your browser.

* A (5 * 5) table simulation exists in the page.

* Write your commands to the robot in the left Textarea then click ```Apply moves``` button and see the result on the simulated table.

* If you want to take the robot out of the table you can click ```Drop robot``` button.

* As I store the robot last location in the DB, you will find it at the last place if you refreshed the page, the same goes if you dropped it and refreshed the page, you will see an error message telling you that the robot is out of the table.

* If you asked the robot to perform the ```REPORT``` command, please check the server logs to see it's report, it will look like this in the server log
====================================================================================================
====================================================================================================
3,3,NORTH
====================================================================================================
====================================================================================================
