# DDWA Assignment 1 - CMS for IMGD Resource Library

A PHP-based Content Management System for IMGD Resource Library accessible by Staffs, Lecturers and Students. The IRL is responsible for the purchasing, installation and maintenance of all softwares for the IMGD students. The IRL also purchases new software titles, upgrades the existing softwares and remove unused softwares based on the requirements specified by the Course Management. The IRL holds on to Lists of Softwares, Consultancy Projects, Students and Lecturers related to the IMGD course. 

- [GitHub](https://github.com/osshiya/DME-Assignment-1.git)
- [GitHub Pages](https://osshiya.github.io/DDWA-Assignment-1/)
- [Amphibistudio](https://student.amphibistudio.sg/10187403A/DDWA/DDWA-Assg01-S10187403A-OngShiYa/)

## Design Process
The website is for three different groups of users; Adminstrator, Staff and Students from IMGD. The website is mainly used for IMGD course-relaated information regarding the softwares and projects involved with Students and Lecturers. To achieve the target and for it to be the most ideal way for different users to make use of these system. Different users will have different extent of abilities and permission to view information that will be useful for them in regards to the roles they are assigned to.

 As a Adminstrator, I will want to have full access to all the information of the staffs and students as will as the ability to modify and change information.
 As a Staff, I will want to have access to all the information of students and information for the staffs.
 As a Student, I will want to have access to information for students only.

Adminstrators: Can view all the pages and equipped with permission to modify details.
Staff: View all the informative pages but have no permission to modify information.
Students: View pages with information of students only.

- Administrator
    - name: admin
    - password: adminpwd
- Staff
    - name: staff
    - password: staffpwd
-  Student
    - name: student
    - password: studentpwd

## Features
- Access to respective pages after keying username and password stored from the database.
- Adminstrator Page: Page with modifiable details.
- Student List: list of students.
- Staff List: list of staffs.
- Notebook Specifications: list of specification for notebooks.
- Software List: list of requried software.
- Project List: Project involved in and informations.
 

### Features Left to Implement
- Removing warning message from login

## Technologies Used
- [JQuery](https://jquery.com)
    - The project uses **JQuery** to simplify DOM manipulation.
- [HTML]
    - The project uses **HTML** to create formatting.
- [Javascript]
    - The project uses **Javascript** to create features.
- [CSS]
    - The project uses **CSS** to modify the components' style.


## Testing
1. Login
    1. Try to log in from "index" page with wrong details, nothing happened, site refreshed.
    2. Try again with correct details. Log in to one of the three site depending on the role of the user.

2. Access tables
    1. Tap on any of the buttons after entering one of the three roles' sites, grayed out buttons are not avaliable to some users depending on their roles.
    2. Each button will redirect users to different datas.
    3. Press on the back button and will be sent back to the previous page

3. Log Out
    1. Tap on log out button, wait for a while and user will return back to index page. 
    2. Sign in again with the same detail or users with the same roles to return back to the previous site. 

## Credits

### Content

### Media

### Acknowledgements
- I received inspiration for this project from DDWA Assignment01 Brief.pdf
