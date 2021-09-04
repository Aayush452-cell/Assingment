from django.db import models
from django.contrib.auth.models import AbstractUser

sex_choice = (
    ('Male', 'Male'),
    ('Female', 'Female')
)

class User(AbstractUser):
    @property
    def is_student(self):
        if hasattr(self,'student'):
            return True
        return False
    @property
    def is_teacher(self):
        if hasattr(self,'teacher'):
            return True
        return False
    @property
    def is_Admin(self):
        if hasattr(self,'Admin'):
            return True
        return False

class Dept(models.Model):
    id = models.CharField(primary_key='True', max_length=100)
    name = models.CharField(max_length=200)

    def __str__(self):
        return self.name


class Course(models.Model):
    dept = models.ForeignKey(Dept, on_delete=models.CASCADE)
    id = models.CharField(primary_key='True', max_length=50)
    name = models.CharField(max_length=50)
    shortname = models.CharField(max_length=50, default='X')

    def __str__(self):
        return self.name


class Class(models.Model):
    # courses = models.ManyToManyField(Course, default=1)
    id = models.CharField(primary_key='True', max_length=100)
    dept = models.ForeignKey(Dept, on_delete=models.CASCADE)
    section = models.CharField(max_length=100)
    sem = models.IntegerField()

    class Meta:
        verbose_name_plural = 'classes'

    def __str__(self):
        d = Dept.objects.get(name=self.dept)
        return '%s : %d %s' % (d.name, self.sem, self.section)

class Student(models.Model):
    user = models.OneToOneField(User,on_delete=models.CASCADE, null=True)
    dept = models.ForeignKey(Dept, on_delete=models.CASCADE, default=1)
    enrol_no = models.CharField(primary_key=True,max_length=100)
    name = models.CharField(max_length=200)
    sex = models.CharField(max_length=200)
    attendance = models.IntegerField(default=0)

    def __str__(self):
        return self.name

class Admin(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, null=True)
    admin_id = models.CharField(primary_key=True, max_length=100)
    name = models.CharField(max_length=100)
    sex = models.CharField(max_length=50, choices=sex_choice, default='Male')
    def __str__(self):
        return self.name

class Teacher(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, null=True)
    id = models.CharField(primary_key=True, max_length=100)
    dept = models.ForeignKey(Dept, on_delete=models.CASCADE, default=1)
    name = models.CharField(max_length=100)
    sex = models.CharField(max_length=50, choices=sex_choice, default='Male')
    attendance = models.IntegerField(default=0)

    def __str__(self):
        return self.name


class pendingattendance(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, null=True)
    reg_id = models.CharField(max_length=100)
    dept = models.ForeignKey(Dept, on_delete=models.CASCADE, default=1)
    name = models.CharField(max_length=100)
    email = models.EmailField(max_length=120)
    date = models.DateField()
    status = models.CharField(max_length=100,default='no')
    def  __str__(self):
        return self.name