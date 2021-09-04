# Attendance Management System for Student And Teachers.

# Features
1)Admin can create classes , Departments, Create Account for teachers and students .

2)Admin controls the attendance for teachers i.e. can approve or disacrd attendance.

3)Admin provides the account id or password to teachers and accounts.

4)Teachers can check their profile and no of attendaces for current month and can controls the attendance for students of their department i.e. can approve or disacrd attendance
  and can give their attendance.
  
5)Admins can check the list of students and teachers details on its dashboard.

6)Both Admin and Teacher can see the list of pending list of attendances for teachers and students respectively and can control it.

7)Students can check their profile and no of their attendances and give their attendace.

8)Teachers and students can give only one attendance per day from their repective profile so it prevents it from giving fake attendances.

# Further Improvments.
1) We can make system more robust by arranging the attendance class wise and department wise.
2) I failed to depoly it on Heroku because i didn't find any resources regarding deployment of sql with django on heroku. So improvement can be made in this.
3) We can make code format more better by using Django Templating as it was not such big project so i didn't go for it

# Credentials to look demo
  Student Username - Nitish 
  
  Student Password - Nitish123
 
  Teacher Username - Saket 
  Teacher Password - Saket123
   
  Admin Username - Aayush
  
  Admin Password - root
 
 # Steps to run on local machine for demo

Before running the project, run these commands,

1) pip install -r requirements.txt
2) Install SQL on your device and create a database and make sure to include the name of your database in settings.py file
3) Start Xampp and start mysql servers and the run these commands on pycharm or on any ide.
5) python manage.py makemigrations
6) python manage.py migrate
7) python manage.py runserver

## ScreenShots of project
![image](https://user-images.githubusercontent.com/68737300/132103269-145547c8-2a99-4fac-aaf7-f2541faec13e.png)
![image](https://user-images.githubusercontent.com/68737300/132103023-420cb979-4d07-4952-b059-58f3ef945fae.png)
![image](https://user-images.githubusercontent.com/68737300/132103084-5cc6c1b6-d1b9-4ac8-a45c-dd527770531c.png)
![image](https://user-images.githubusercontent.com/68737300/132103108-eaa6f8cd-4891-4950-838a-2fb29da14d2e.png)
![image](https://user-images.githubusercontent.com/68737300/132103142-fdbfb66a-eeab-49a0-8b90-84ada25a1e35.png)
![image](https://user-images.githubusercontent.com/68737300/132103151-c48e1553-3034-4532-9d86-2f5c429f194f.png)
![image](https://user-images.githubusercontent.com/68737300/132103182-7a478d0a-75db-4806-a0a8-98c59932bcf3.png)

