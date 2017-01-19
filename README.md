# Vehicle-Management-System

Build a online vehicle management system for my hometown government, web address is 115.28.228.129

The whole program is whole completed by myself. Thanks for kind help from Dingxi(Gansu, China) government office. Without their suggestions and technical support, I can't finish it in a short period of time.

This sytem satisfies a series of functional requirement for users such as applying for the right of using vehicles, checking the traveling reords of 
specific vehicle, driver or date, managing all the vehicles information which comes from different areas in the whole city and so on. 
It can be used in any time in any place with network. It ensures that information of the official resource is transparent, which can effective avoid some officers using government vehicles for private purposes.
At the same time, the government can also ramp up efforts to tighten regulations and root out violators through my system.
<br>

There are three different roles in this system:
### 1. user(Each Department) Bottome Layer Role
It has the largest number of roles in the database, each department in countries and towns must upload their basic vehicles information 
to the whole city database. User with this role only can check the vehicles information based on his own department and he also has no 
authority to update, delete or insert the vehicle information to the system after completing information uploading process. 
### 2. keshi(Each City Supervisor) Medium Layer Role
In this system, I give 8 accounts of supervisor to supervisor different areas in our city. One of them which name is Dingxi has the special
ability to query the vehicles information from other disitricts. Supervisor can check all the vehicles' status corresponding to his jurisdiction,
inculding recent vehicle using record, travel vehicle information and so on. Through these function, supervisor can easily find the illegal 
vehicle using condition in his district and deal with these issues promptly. Supervisor also only has the selecting authority, same as the user.
### 3. master(Administrator) Top Layer Role
This role has the most highest authority in this system. It can check all the information in the database and also can do all operations 
to the system. Hence if one user want to add a new vehicle in his department, at first he need to send a request to the administrator. Then after
the city government approving, the administrator can insert new vehicle record to the system and user can nomally use it at this time. Although 
this process is a little complicated, it helps government to make sure that all the common resources are in the control, thus efficiently avoiding
the corruption problem.

