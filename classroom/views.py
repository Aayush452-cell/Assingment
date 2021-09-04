from django.shortcuts import render, HttpResponse, redirect
from django.contrib.auth.models import User
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from .models import *


def index(request):
    if request.user.is_anonymous:
        return render(request, "classroom/signup.html")
    if request.user.is_teacher:
        teacher = Teacher.objects.get(user=request.user)
        user = request.user
        params = {'teacher': teacher, 'user': user}
        return render(request, 'classroom/teacher.html', params)
    if request.user.is_student:
        student = Student.objects.get(user=request.user)
        user = request.user
        params = {'student': student, 'user': user}
        return render(request, 'classroom/student.html', params)
    else:
        return redirect("admin")
    return HttpResponse("error")


def admin(request):
    if request.user.is_anonymous:
        return render(request, "classroom/signup.html")
    return render(request, 'classroom/admin.html')


def addcourse(request):
    if request.user.is_anonymous:
        return render(request, "classroom/signup.html")
    if request.method == "POST":
        dept = request.POST['inputdept']
        dept = Dept.objects.get(name=dept)
        id = request.POST['courseid']
        name = request.POST['name']
        shortname = request.POST['shortname']
        adc = Course(dept=dept, id=id, name=name, shortname=shortname)
        adc.save()
        messages.success(request, "Course has been created!")
    return render(request, 'classroom/addcourse.html')


def addclass(request):
    if request.user.is_anonymous:
        return render(request, "classroom/signup.html")
    if request.method == "POST":
        id = request.POST["regid"]
        dept = request.POST['inputdep']
        dept = Dept.objects.get(name=dept)
        section = request.POST['inputsec']
        sem = request.POST['inputsem']
        print(id, dept, sem, section)
        adc = Class(dept=dept, id=id, section=section, sem=sem)
        adc.save()
        messages.success(request, "Class has been created!")
    return render(request, 'classroom/addclass.html')


def addteacher(request):
    if request.user.is_anonymous:
        return render(request, "classroom/signup.html")
    if request.method == "POST":
        try:
            username = request.POST["username"]
            password = request.POST["password"]
            email = request.POST['email']
            user = User.objects.create_user(username, email, password)
            user.save()
            id = request.POST["regid"]
            dept = request.POST['inputdep']
            dept = Dept.objects.get(name=dept)
            name = request.POST['name']
            sex = request.POST['inputgender']
            adc = Teacher(user=user, dept=dept, id=id, name=name, sex=sex)
            adc.save()
            messages.success(request, "New Teacher has been added!")
        except:
            messages.error(request,
                           "Something went wrong please check database there may be some teacher existing with same id")
    return render(request, 'classroom/addteacher.html')


def addstudent(request):
    if request.user.is_anonymous:
        return render(request, "classroom/signup.html")
    if request.method == "POST":
        try:
            username = request.POST["username"]
            password = request.POST["password"]
            email = request.POST['email']
            user = User.objects.create_user(username, email, password)
            user.save()
            enrol_no = request.POST["regid"]
            dept = request.POST['inputdep']
            dept = Dept.objects.get(name=dept)
            name = request.POST['name']
            sex = request.POST['inputgender']
            adc = Student(user=user, dept=dept, enrol_no=enrol_no, name=name, sex=sex)
            adc.save()
            messages.success(request, "New Student has been added!")
        except:
            messages.error(request,
                           "Something went wrong please check database there may be some stduent existing with same id")
    return render(request, 'classroom/addstudent.html')


def handeLogin(request):
    if request.method == "POST":
        try:
            # Get the post parameters
            loginusername = request.POST['username']
            loginpassword = request.POST['password']
            user = authenticate(username=loginusername, password=loginpassword)
            if user is not None:
                login(request, user)
                messages.success(request, "Successfully Logged In")
                if user.is_teacher:
                    teacher = Teacher.objects.get(user=user)
                    params = {'teacher': teacher, 'user': user}
                    return render(request, 'classroom/teacher.html', params)
                if user.is_student:
                    student = Student.objects.get(user=user)
                    params = {'student': student, 'user': user}
                    return render(request, 'classroom/student.html', params)
                return redirect("admin")
            else:
                messages.error(request, "Invalid credentials! Please try again")
                return render(request, 'classroom/signup.html')
        except:
            messages.error(request, "Invalid credentials! Please try again")
            return render(request, 'classroom/signup.html')
    return redirect('index')

def handelLogout(request):
    logout(request)
    messages.success(request, "Successfully logged out")
    return render(request, 'classroom/signup.html')

def giveattendance(request):
    if request.user.is_anonymous:
        return render(request, "classroom/signup.html")
    if request.method == "POST":
        try:
            user = request.user
            name = request.POST['name']
            email = request.POST['email']
            dept = request.POST['inputdep']
            dept = Dept.objects.get(name=dept)
            date = request.POST['birthday']
            regid = request.POST['regid']
            adc = pendingattendance(user=user, name=name, email=email, dept=dept, date=date, reg_id=regid)
            adc.save()
            messages.success(request,"Your Attendance has been recorded successfully !")
        except:
            messages.error(request,
                "Attendance for today has been already recorded please connect to concern person for further enquiry!")
    return render(request, "classroom/giveattendance.html")


def pendingteacherattendance(request):
    if request.user.is_anonymous:
        return render(request, "classroom/signup.html")
    items = pendingattendance.objects.all()
    teachers = []
    for item in items:
        if item.user.is_teacher:
            if item.status == "no":
                teachers.append(item)
    params = {'teachers': teachers}
    return render(request, 'classroom/pendingteacherattendance.html', params)


def pendingstudentattendance(request):
    if request.user.is_anonymous:
        return render(request, "classroom/signup.html")
    items = pendingattendance.objects.all()
    teacher = Teacher.objects.get(user=request.user)
    students = []
    for item in items:
        if item.user.is_student:
            if item.dept == teacher.dept:
                students.append(item)
    params = {'students': students}
    return render(request, 'classroom/pendingstudentattendance.html', params)


def discard(request, id):
    if request.user.is_anonymous:
        return render(request, "classroom/signup.html")
    try:
        pendingattendance.objects.filter(reg_id=id).delete()
    except:
        messages.error(request,"something went wrong the data given by attendee is faulty !")
    if request.user.is_teacher:
        return redirect('pendingstudentattendance')
    else:
        return redirect('pendingteacherattendance')


def approve(request, id):
    if request.user.is_anonymous:
        return render(request, "classroom/signup.html")
    if request.user.is_teacher:
        try:
            stud = Student.objects.get(enrol_no=id)
            stud.attendance = stud.attendance + 1
            stud.save()
        except:
            messages.error(request,"something went wrong the data given by attendee is faulty !")
    else:
        try:
            tchr = Teacher.objects.get(id=id)
            tchr.attendance = tchr.attendance + 1
            tchr.save()
        except:
            messages.error(request,"something went wrong the data given by attendee is faulty !")
    try:
        pendingattendance.objects.filter(reg_id=id).delete()
    except:
        messages.error(request,"something went wrong the data given by attendee is faulty !")

    if request.user.is_teacher:
        return redirect('pendingstudentattendance')
    else:
        return redirect('pendingteacherattendance')
