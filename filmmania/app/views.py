from selenium import webdriver
from django.shortcuts import render, HttpResponse, HttpResponseRedirect
from .models import *
from django.db.models import Q
from django.contrib import messages
from django.urls import reverse
import time
import pywhatkit
import pyautogui
from pynput.keyboard import Key, Controller
keyboard = Controller()


# Create your views here.


def index(request):
    return render(request, 'index.html')


def genre(request):
    return render(request, 'genre.html')


def about(request):
    return render(request, 'about.html')

######## HOME ########

def login(request):
    msg = ""
    msg = request.GET.get('msg')
    if request.POST:
        email = request.POST.get("Email")
        password = request.POST.get("Password")
        data = Login.objects.filter(email=email, password=password, status="approved")
        
        if data:
            data = Login.objects.get(email=email, password=password, status="approved")
            if data.userType == "admin" and data.status == "approved":
                msg = "Welcome to Admin Page"
                return HttpResponseRedirect("/admin_home?msg="+msg)

            elif data.userType == "user" and data.status == "approved":
                userdata = Userregister.objects.get(email=email)
                uid = userdata.id
                request.session['uid'] = uid
                msg = "Welcome"
                return HttpResponseRedirect("/user_home?msg="+msg)

            elif data.userType == "critics" and data.status == "approved":
                critidata = Criticsregister.objects.get(email=email)
                uid = critidata.id
                request.session['uid'] = uid
                msg = "Welcome"
                return HttpResponseRedirect("/critics_home?msg="+msg)

            elif data.userType == "aspirants" and data.status == "approved":
                aspdata = Aspirantsregister.objects.get(email=email)
                uid = aspdata.id
                request.session['uid'] = uid
                msg = "Welcome"
                return HttpResponseRedirect("/aspirants_home?msg="+msg)
        else:
            msg = "Invalid username or password provided"
    return render(request, 'login.html', {"msg": msg})


def userregister(request):
    msg = ""
    msg = request.GET.get('msg')
    if request.POST:
        name = request.POST.get("Name")
        email = request.POST.get("Email")
        phone = request.POST.get("Phone")
        password = request.POST.get("Password")
        address = request.POST.get("Address")
        if Userregister.objects.filter(email=email).exists() or Login.objects.filter(email=email).exists():
            msg = "Email Already Registered"
        else:
            abc = Login.objects.create(
                email=email, password=password, userType='user')
            abc.save()
            reg = Userregister.objects.create(name=name, email=email, address=address,
                                              phone=phone, password=password, userid=abc)

            reg.save()
            msg = "Registration Successful"
        # return HttpResponseRedirect("/login?msg=" + msg)

    return render(request, 'userregister.html', {"msg": msg})


def criticsregister(request):
    msg = ""
    msg = request.GET.get('msg')
    if request.POST:
        name = request.POST.get("Name")
        email = request.POST.get("Email")
        phone = request.POST.get("Phone")
        password = request.POST.get("Password")
        address = request.POST.get("Address")
        if Criticsregister.objects.filter(email=email).exists() or Login.objects.filter(email=email).exists():
            msg = "Email Already Registered"
        else:
            abc = Login.objects.create(
                email=email, password=password, userType='critics')
            abc.save()
            reg = Criticsregister.objects.create(name=name, email=email, address=address,
                                                 phone=phone, password=password, critid=abc)

            reg.save()
            msg = "Registration Successful"
        # return HttpResponseRedirect("/login?msg=" + msg)
    return render(request, 'criticsregister.html', {"msg": msg})

def aspirantsregister(request):
    msg = ""
    msg = request.GET.get('msg')
    if request.POST:
        name = request.POST.get("Name")
        email = request.POST.get("Email")
        phone = request.POST.get("Phone")
        password = request.POST.get("Password")
        address = request.POST.get("Address")
        if Aspirantsregister.objects.filter(email=email).exists() or Login.objects.filter(email=email).exists():
            msg = "Email Already Registered"
        else:
            abc = Login.objects.create(
                email=email, password=password, userType='aspirants')
            abc.save()
            reg = Aspirantsregister.objects.create(name=name, email=email, address=address,
                                                   phone=phone, password=password, aspid=abc)

            reg.save()
            msg = "Registration Successful"
        # return HttpResponseRedirect("/login?msg=" + msg)
    return render(request, 'aspirantsregister.html', {"msg": msg})


######## ADMIN  ########

def admin_home(request):
    msg = ""
    msg = request.GET.get('msg')
    return render(request, 'admin/admin_home.html', {"msg": msg})


def view_user(request):
    msg = ""
    msg = request.GET.get('msg')
    abc = Userregister.objects.filter(status="pending")
    efg = Userregister.objects.filter(status="approved")
    return render(request, 'admin/viewusers.html', {"abc": abc, "efg": efg, "msg": msg})

def approveuser(request):
    msg = ""
    id = request.GET.get("id")
    print(id)
    abc = Userregister.objects.filter(userid=id).update(status="approved")
    efg = Login.objects.filter(id=id).update(status="approved")
    msg = "Approved"
    return HttpResponseRedirect("/view_user?msg="+msg)


def deleteuser(request):
    msg = ""
    id = request.GET.get("id")
    # print(ab)
    aab = Login.objects.filter(id=id).delete()
    efg = Userregister.objects.filter(id=id).delete()
    msg = "Deleted"
    return HttpResponseRedirect("/view_user?msg="+msg)


def view_critics(request):
    msg = ""
    msg = request.GET.get('msg')
    abc = Criticsregister.objects.filter(status="pending")
    efg = Criticsregister.objects.filter(status="approved")
    return render(request, 'admin/viewcritics.html', {"abc": abc, "efg": efg, "msg": msg})


def approvecrit(request):
    msg = ""
    id = request.GET.get("id")
    print(id)
    abc = Criticsregister.objects.filter(critid=id).update(status="approved")
    efg = Login.objects.filter(id=id).update(status="approved")
    msg = "Approved"
    return HttpResponseRedirect("/view_critics?msg="+msg)


def rejectedcrit(request):
    msg = ""
    id = request.GET.get("ab")
    # print(ab)
    aab = Login.objects.filter(id=id).delete()
    efg = Criticsregister.objects.filter(id=id).delete()
    msg = "Rejected"
    return HttpResponseRedirect("/view_critics?msg="+msg)

def deletecrit(request):
    msg = ""
    id = request.GET.get("id")
    # print(ab)
    aab = Login.objects.filter(id=id).delete()
    efg = Criticsregister.objects.filter(id=id).delete()
    msg = "Deleted"
    return HttpResponseRedirect("/view_critics?msg="+msg)

def view_aspirants(request):
    abc = Aspirantsregister.objects.filter(status="pending")
    efg = Aspirantsregister.objects.filter(status="approved")
    return render(request, 'admin/viewaspirants.html', {"abc": abc, "efg": efg})

def approveasp(request):
    msg = ""
    id = request.GET.get("id")
    print(id)
    abc = Aspirantsregister.objects.filter(aspid=id).update(status="approved")
    efg = Login.objects.filter(id=id).update(status="approved")
    msg = "Approved"
    return HttpResponseRedirect("/view_aspirants?msg="+msg)

def rejectedasp(request):
    msg = ""
    id = request.GET.get("ab")
    # print(ab)
    aab = Login.objects.filter(id=id).delete()
    efg = Aspirantsregister.objects.filter(id=id).delete()
    msg = "Rejected"
    return HttpResponseRedirect("/view_aspirants?msg="+msg)

def deleteasp(request):
    msg = ""
    id = request.GET.get("id")
    # print(ab)
    aab = Login.objects.filter(id=id).delete()
    efg = Aspirantsregister.objects.filter(id=id).delete()
    msg = "Deleted"
    return HttpResponseRedirect("/view_aspirants?msg="+msg)

def add_movies(request):
    msg = ""
    msg = request.GET.get('msg')
    if request.POST:
        name = request.POST.get("Name")
        duration = request.POST.get("Duration")
        image = request.FILES["Image"]
        add = Addmovies.objects.create(
            name=name, duration=duration, image=image)
        add.save()
        msg = "Added Successfully"
    return render(request, 'admin/addmovies.html', {"msg": msg})

def view_movies(request):
    abc = Addmovies.objects.all()
    return render(request, 'admin/viewmovies.html', {"abc": abc})

def deletemovie(request):
    msg = ""
    id = request.GET.get("id")
    # print(ab)
    efg = Addmovies.objects.filter(id=id).delete()
    msg = "Deleted"
    return HttpResponseRedirect("/view_movies?msg="+msg)

######## //ADMIN  ########
######## USER  ########

def user_home(request):
    msg = ""
    msg = request.GET.get('msg')
    # id = request.GET.get("id")
    uid = request.session['uid']
    abc = Userregister.objects.filter(id=uid)
    name=abc[0].name
    return render(request, 'user/user_home.html', {"msg": msg, "name": name})

def userview_movies(request):
    msg = ""
    msg = request.GET.get('msg')
    abc = Addmovies.objects.all()
    result = ""
    if request.POST:
        keyword = request.POST.get('search')
        result = Addmovies.objects.filter(name__contains=keyword)
        print(result)
        print(keyword)
        if result == []:
            msg = "No Matching Result"
    return render(request, 'user/userviewmovies.html', {"abc": abc, "result": result, "msg": msg})

def userview_critics(request):
    msg = ""
    efg = Criticsregister.objects.filter(status="approved")
    result = ""
    if request.POST:
        keyword = request.POST.get('search')
        result = Criticsregister.objects.filter(name__contains=keyword)
        print(result)
        print(keyword)
        if result == []:
            msg = "No Matching Result"
    return render(request, 'user/viewcritics.html', {"efg": efg, "result": result, "msg": msg})

def userview_aspirants(request):
    msg = ""
    efg = Aspirantsregister.objects.filter(status="approved")
    result = ""
    if request.POST:
        keyword = request.POST.get('search')
        result = Aspirantsregister.objects.filter(name__contains=keyword)
        print(result)
        print(keyword)
        if result == []:
            msg = "No Matching Result"
    return render(request, 'user/viewaspirants.html', {"efg": efg, "result": result, "msg": msg})

def userviewcritics(request):
    efg = Criticsregister.objects.filter(status="approved")
    return render(request, 'user/userviewcritics.html', {"efg": efg})

def userviewaspirants(request):
    id = request.GET.get("id")
    uid = request.session['uid']
    efg = Aspirantsregister.objects.all()
    return render(request, 'user/userviewaspirants.html', {"efg": efg})

def userviewmoviedetails(request):
    id = request.GET.get("id")
    mname = request.GET.get("name")
    print(mname)
    uid = request.session['uid']
    cid = Userregister.objects.get(id=uid)
    abc = Addmovies.objects.filter(id=id)
    efg = Addmoviereview.objects.filter(moviename=mname)
    hdf = Useraddmoviereview.objects.filter(moviename=mname)
    print(efg)
    if request.POST:
        moviename = request.POST.get("Name")
        comment = request.POST.get("Comment")
        add = Useraddmoviereview.objects.create(
            moviename=moviename, comment=comment, userid=cid)
        add.save()
    return render(request, 'user/userviewmoviedetails.html', {"abc": abc, "efg": efg, "hdf" : hdf})

def usersview_videos(request):
    msg = request.GET.get('msg')
    abc = Addvideos.objects.all()
    return render(request, 'user/userviewvideos.html', {"abc": abc, "msg": msg})

def userviewvideodetails(request):
    id = request.GET.get("id")
    vname = request.GET.get("name")
    print(vname)
    uid = request.session['uid']
    aid = Userregister.objects.get(id=uid)
    abc = Addvideos.objects.filter(id=id)
    efg = Addvideoreview.objects.filter(videoname=vname)
    hdf = Useraddvideoreview.objects.filter(videoname=vname)
    print(efg)
    if request.POST:
        videoname = request.POST.get("Name")
        comment = request.POST.get("Comment")
        add = Useraddvideoreview.objects.create(
            videoname=videoname, comment=comment, userid=aid)
        add.save()
    return render(request, 'user/userviewvideodetails.html', {"abc": abc, "efg": efg, "hdf": hdf})

def messageasp(request):
    Num = ""
    msg = ""
    uid = request.session["uid"]
    id = request.GET.get("id")

    fetchnumberQuery = Aspirantsregister.objects.filter(
        id=id)
    Num = fetchnumberQuery[0].phone
    print(Num)
    if request.POST:
        query = request.POST.get("query")
        print(query)
    try:
        pywhatkit.sendwhatmsg_instantly(
            phone_no="+91"+Num,
            message="Message : "+query,
            # tab_close=True
        )
        time.sleep(2)
        pyautogui.click()
        time.sleep(2)
        keyboard.press(Key.enter)
        keyboard.release(Key.enter)
        print("Message sent!")
    except Exception as e:
        print(str(e))
    return render(request, "user/messageasp.html")


def messagecrit(request):
    Num = ""
    msg = ""
    uid = request.session["uid"]
    id = request.GET.get("id")

    fetchnumberQuery = Criticsregister.objects.filter(
        id=id)
    Num = fetchnumberQuery[0].phone
    print(Num)
    if request.POST:
        query = request.POST.get("query")
        print(query)
    try:
        pywhatkit.sendwhatmsg_instantly(
            phone_no="+91"+Num,
            message="Message : "+query,
            # tab_close=True
        )
        time.sleep(2)
        pyautogui.click()
        time.sleep(2)
        keyboard.press(Key.enter)
        keyboard.release(Key.enter)
        print("Message sent!")
    except Exception as e:
        print(str(e))
    return render(request, "user/messagecrit.html")

def usrlike(request):
    msg = ""
    id = request.GET.get("id")
    mid = request.GET.get("id")
    name = request.GET.get("name")
    uid = request.session['uid']
    aid = Userregister.objects.get(id=uid)
    efg = Addmovies.objects.get(id=id)
    if Usrlike.objects.filter(Q(userid=uid) & Q(mid=mid) & Q(type="like")).exists():
        msg = "You already liked"
        return HttpResponseRedirect("/userview_movies?msg=" + msg)
    else:
        fetch = Addmovies.objects.filter(id=mid)
        print(fetch)
        print(fetch[0].likes)
        fetchlike = fetch[0].likes
        print(fetchlike)
        sum = fetchlike+1
        print(sum)
        if Usrlike.objects.filter(Q(userid=uid) & Q(mid=mid)).exists():
            msg = "You already Responded"
            return HttpResponseRedirect("/userview_movies?msg=" + msg)
        else:
            final = Addmovies.objects.filter(id=mid).update(likes=sum)
            abc = Usrlike.objects.create(mid=efg, userid=aid, type="like")
            abc.save()
    return HttpResponseRedirect("/userview_movies")

def usrdislike(request):
    msg = ""
    id = request.GET.get("id")
    mid = request.GET.get("id")
    name = request.GET.get("name")
    uid = request.session['uid']
    aid = Userregister.objects.get(id=uid)
    efg = Addmovies.objects.get(id=id)
    if Usrlike.objects.filter(Q(userid=uid) & Q(mid=mid) & Q(type="dislike") or Q(userid=uid) & Q(mid=mid) & Q(type="like")).exists():
        msg = "You already disliked"
        return HttpResponseRedirect("/userview_movies?msg=" + msg)
    else:
        fetch = Addmovies.objects.filter(id=mid)
        print(fetch)
        print(fetch[0].dislikes)
        fetchdislike = fetch[0].dislikes
        print(fetchdislike)
        sum = fetchdislike+1
        print(sum)
        if Usrlike.objects.filter(Q(userid=uid) & Q(mid=mid)).exists():
            msg = "You already Responded"
            return HttpResponseRedirect("/userview_movies?msg=" + msg)
        else:
            final = Addmovies.objects.filter(id=mid).update(dislikes=sum)
            abc = Usrlike.objects.create(mid=efg, userid=aid, type="dislike")
            abc.save()
    return HttpResponseRedirect("/userview_movies")

def userlikevideo(request):
    msg = ""
    id = request.GET.get("id")
    vid = request.GET.get("id")
    name = request.GET.get("name")
    uid = request.session['uid']
    aid = Userregister.objects.get(id=uid)
    efg = Addvideos.objects.get(id=id)
    if Uservideolike.objects.filter(Q(userid=uid) & Q(vid=vid) & Q(type="like")).exists():
        msg = "You already liked"
        return HttpResponseRedirect("/usersview_videos?msg=" + msg)
    else:
        fetch = Addvideos.objects.filter(id=vid)
        print(fetch)
        print(fetch[0].likes)
        fetchlike = fetch[0].likes
        print(fetchlike)
        sum = fetchlike+1
        print(sum)
        if Uservideolike.objects.filter(Q(userid=uid) & Q(vid=vid)).exists():
            msg = "You already Responded"
            return HttpResponseRedirect("/usersview_videos?msg=" + msg)
        else:
            final = Addvideos.objects.filter(id=vid).update(likes=sum)
            abc = Uservideolike.objects.create(vid=efg, userid=aid, type="like")
            abc.save()
    return HttpResponseRedirect("/usersview_videos")

def userdislikevideo(request):
    msg = ""
    id = request.GET.get("id")
    vid = request.GET.get("id")
    name = request.GET.get("name")
    uid = request.session['uid']
    aid = Userregister.objects.get(id=uid)
    efg = Addvideos.objects.get(id=id)
    if Uservideolike.objects.filter(Q(userid=uid) & Q(vid=vid) & Q(type="dislike")).exists():
        msg = "You already disliked"
        return HttpResponseRedirect("/usersview_videos?msg=" + msg)
    else:
        fetch = Addvideos.objects.filter(id=vid)
        print(fetch)
        print(fetch[0].dislikes)
        fetchdislike = fetch[0].dislikes
        print(fetchdislike)
        sum = fetchdislike+1
        print(sum)
        if Uservideolike.objects.filter(Q(userid=uid) & Q(vid=vid)).exists():
            msg = "You already Responded"
            return HttpResponseRedirect("/usersview_videos?msg=" + msg)
        else:
            final = Addvideos.objects.filter(id=vid).update(dislikes=sum)
            abc = Uservideolike.objects.create(vid=efg, userid=aid, type="dislike")
            abc.save()
    return HttpResponseRedirect("/usersview_videos")


######## //USER  ########

######## ASPIRANTS  ########

def aspirants_home(request):
    msg = ""
    msg = request.GET.get('msg')
    uid = request.session['uid']
    abc = Aspirantsregister.objects.filter(id=uid)
    name=abc[0].name
    return render(request, 'aspirants/aspirants_home.html', {"msg": msg, "name": name})

def add_videos(request):
    msg = ""
    msg = request.GET.get('msg')
    uid = request.session['uid']
    if request.POST:
        name = request.POST.get("Name")
        video = request.FILES["Video"]
        add = Addvideos.objects.create(
            name=name, video=video, aspid_id=uid)
        add.save()
        msg = "Added Successfully"
    return render(request, 'aspirants/addvideos.html', {"msg": msg})

def view_videos(request):
    uid = request.session['uid']
    abc = Addvideos.objects.filter(aspid=uid)
    return render(request, 'aspirants/viewvideos.html', {"abc": abc})

def viewother_videos(request):
    uid = request.session['uid']
    abc = Addvideos.objects.all()
    return render(request, 'aspirants/viewvideos.html', {"abc": abc})

def aspirantsview_videodetails(request):
    id = request.GET.get("id")
    vname = request.GET.get("name")
    print(vname)
    uid = request.session['uid']
    aid = Aspirantsregister.objects.get(id=uid)
    abc = Addvideos.objects.filter(id=id)
    efg = Addvideoreview.objects.filter(videoname=vname)
    vbc = Useraddvideoreview.objects.filter(videoname=vname)
    print(efg)
    return render(request, 'aspirants/aspirantsviewvideodetails.html', {"abc": abc, "efg": efg, "vbc": vbc})

def asprepalyreviewvideo(request):
    id = request.GET.get("id")
    uid = request.session['uid']
    abc = Addvideoreview.objects.filter(id=uid)
    if request.POST:
        replay = request.POST.get("Replay")
        rep = Addvideoreview.objects.filter(id=id).update(replay=replay)
        return HttpResponseRedirect("/view_videos")
    return render(request, 'aspirants/asprepalyreviewvideo.html', {"abc": abc})

def asprepalyuserreviewvideo(request):
    id = request.GET.get("id")
    uid = request.session['uid']
    abc = Addvideoreview.objects.filter(id=uid)
    if request.POST:
        replay = request.POST.get("Replay")
        rep = Addvideoreview.objects.filter(id=id).update(replay=replay)
        return HttpResponseRedirect("/view_videos")
    return render(request, 'aspirants/asprepalyreviewvideo.html', {"abc": abc})

def aspviewuser(request):
    id = request.GET.get("id")
    uid = request.session['uid']
    print(uid)
    abc = Userregister.objects.all()
    # efg = Messageuser.objects.all()
    return render(request, 'aspirants/aspviewusers.html', {"abc": abc})


def aspviewcritics(request):
    id = request.GET.get("id")
    uid = request.session['uid']
    print(uid)
    abc = Criticsregister.objects.all()
    # efg = Messageuser.objects.all()
    return render(request, 'aspirants/aspviewcritics.html', {"abc": abc})

def messageuser(request):
    Num = ""
    msg = ""
    uid = request.session["uid"]
    id = request.GET.get("id")

    fetchnumberQuery = Userregister.objects.filter(
        id=id)
    Num = fetchnumberQuery[0].phone
    print(Num)
    if request.POST:
        query = request.POST.get("query")
        print(query)
    try:
        pywhatkit.sendwhatmsg_instantly(
            phone_no="+91"+Num,
            message="Message : "+query,
            # tab_close=True
        )
        time.sleep(2)
        pyautogui.click()
        time.sleep(2)
        keyboard.press(Key.enter)
        keyboard.release(Key.enter)
        print("Message sent!")
    except Exception as e:
        print(str(e))
    return render(request, "aspirants/messageuser.html")


def messagecritics(request):
    Num = ""
    msg = ""
    uid = request.session["uid"]
    id = request.GET.get("id")

    fetchnumberQuery = Criticsregister.objects.filter(
        id=id)
    Num = fetchnumberQuery[0].phone
    print(Num)
    if request.POST:
        query = request.POST.get("query")
        print(query)
    try:
        pywhatkit.sendwhatmsg_instantly(
            phone_no="+91"+Num,
            message="Message : "+query,
            # tab_close=True
        )
        time.sleep(2)
        pyautogui.click()
        time.sleep(2)
        keyboard.press(Key.enter)
        keyboard.release(Key.enter)
        print("Message sent!")
    except Exception as e:
        print(str(e))
    return render(request, "aspirants/messagecritics.html")


def send_whatsapp_message(msg: str):
    try:
        pywhatkit.sendwhatmsg_instantly(
            phone_no="<phone-number>",
            message=msg,
            # tab_close=True
        )
        time.sleep(2)
        pyautogui.click()
        time.sleep(2)
        keyboard.press(Key.enter)
        keyboard.release(Key.enter)
        print("Message sent!")
    except Exception as e:
        print(str(e))


if __name__ == "__main__":
    send_whatsapp_message(msg="Test message from a Python script!")


######## //ASPIRANTS  ########

######## CRITICS  ########

def critics_home(request):
    msg = ""
    msg = request.GET.get('msg')
    uid = request.session['uid']
    abc = Criticsregister.objects.filter(id=uid)
    name=abc[0].name
    return render(request, 'critics/critics_home.html', {"msg": msg, "name":name})

def criticsview_movies(request):
    msg = request.GET.get('msg')
    abc = Addmovies.objects.all()
    return render(request, 'critics/criticsviewmovies.html', {"abc": abc, "msg": msg})

def criticsview_moviesdetails(request):
    id = request.GET.get("id")
    mname = request.GET.get("name")
    print(mname)
    uid = request.session['uid']
    cid = Criticsregister.objects.get(id=uid)
    abc = Addmovies.objects.filter(id=id)
    efg = Addmoviereview.objects.filter(moviename=mname)
    hdf = Useraddmoviereview.objects.filter(moviename=mname)
    print(efg)
    if request.POST:
        moviename = request.POST.get("Name")
        pdf = request.FILES["pdf"]
        add = Addmoviereview.objects.create(
            moviename=moviename, pdf=pdf, critid=cid)
        add.save()
    return render(request, 'critics/criticsviewmoviesdetails.html', {"abc": abc, "efg": efg, "hdf": hdf})

def criticsview_videos(request):
    msg = request.GET.get('msg')
    abc = Addvideos.objects.all()
    return render(request, 'critics/criticsviewvideos.html', {"abc": abc, "msg": msg})

def criticsview_videodetails(request):
    id = request.GET.get("id")
    vname = request.GET.get("name")
    print(vname)
    uid = request.session['uid']
    aid = Criticsregister.objects.get(id=uid)
    abc = Addvideos.objects.filter(id=id)
    efg = Addvideoreview.objects.filter(videoname=vname)
    hdf = Useraddvideoreview.objects.filter(videoname=vname)
    print(efg)
    if request.POST:
        videoname = request.POST.get("Name")
        pdf = request.FILES["pdf"]
        add = Addvideoreview.objects.create(
            videoname=videoname, pdf=pdf, critid=aid)
        add.save()
    return render(request, 'critics/criticsviewvideodetails.html', {"abc": abc, "efg": efg, "hdf": hdf})

def asplike(request):
    msg = ""
    id = request.GET.get("id")
    vid = request.GET.get("id")
    name = request.GET.get("name")
    uid = request.session['uid']
    aid = Criticsregister.objects.get(id=uid)
    efg = Addvideos.objects.get(id=id)
    if videolike.objects.filter(Q(critid=uid) & Q(vid=vid) & Q(type="like")).exists():
        msg = "You already liked"
        return HttpResponseRedirect("/criticsview_videos?msg=" + msg)
    else:
        fetch = Addvideos.objects.filter(id=vid)
        print(fetch)
        print(fetch[0].likes)
        fetchlike = fetch[0].likes
        print(fetchlike)
        sum = fetchlike+1
        print(sum)
        if videolike.objects.filter(Q(critid=uid) & Q(vid=vid)).exists():
            msg = "You already Responded"
            return HttpResponseRedirect("/criticsview_videos?msg=" + msg)
        else:
            final = Addvideos.objects.filter(id=vid).update(likes=sum)
            abc = videolike.objects.create(vid=efg, critid=aid, type="like")
            abc.save()
    return HttpResponseRedirect("/criticsview_videos")


def aspdislike(request):
    msg = ""
    id = request.GET.get("id")
    vid = request.GET.get("id")
    name = request.GET.get("name")
    uid = request.session['uid']
    aid = Criticsregister.objects.get(id=uid)
    efg = Addvideos.objects.get(id=id)
    if videolike.objects.filter(Q(critid=uid) & Q(vid=vid) & Q(type="dislike")).exists():
        msg = "You already disliked"
        return HttpResponseRedirect("/criticsview_videos?msg=" + msg)
    else:
        fetch = Addvideos.objects.filter(id=vid)
        print(fetch)
        print(fetch[0].dislikes)
        fetchdislike = fetch[0].dislikes
        print(fetchdislike)
        sum = fetchdislike+1
        print(sum)
        if videolike.objects.filter(Q(critid=uid) & Q(vid=vid)).exists():
            msg = "You already Responded"
            return HttpResponseRedirect("/criticsview_videos?msg=" + msg)
        else:
            final = Addvideos.objects.filter(id=vid).update(dislikes=sum)
            abc = videolike.objects.create(vid=efg, critid=aid, type="dislike")
            abc.save()
    return HttpResponseRedirect("/criticsview_videos")


def like(request):
    msg = ""
    id = request.GET.get("id")
    mid = request.GET.get("id")
    name = request.GET.get("name")
    uid = request.session['uid']
    aid = Criticsregister.objects.get(id=uid)
    efg = Addmovies.objects.get(id=id)
    if Like.objects.filter(Q(critid=uid) & Q(mid=mid) & Q(type="like")).exists():
        msg = "You already liked"
        return HttpResponseRedirect("/criticsview_movies?msg=" + msg)
    else:
        fetch = Addmovies.objects.filter(id=mid)
        print(fetch)
        print(fetch[0].likes)
        fetchlike = fetch[0].likes
        print(fetchlike)
        sum = fetchlike+1
        print(sum)
        if Like.objects.filter(Q(critid=uid) & Q(mid=mid)).exists():
            msg = "You already Responded"
            return HttpResponseRedirect("/criticsview_movies?msg=" + msg)
        else:
            final = Addmovies.objects.filter(id=mid).update(likes=sum)
            abc = Like.objects.create(mid=efg, critid=aid, type="like")
            abc.save()
    return HttpResponseRedirect("/criticsview_movies")


def dislike(request):
    msg = ""
    id = request.GET.get("id")
    mid = request.GET.get("id")
    name = request.GET.get("name")
    uid = request.session['uid']
    aid = Criticsregister.objects.get(id=uid)
    efg = Addmovies.objects.get(id=id)
    if Like.objects.filter(Q(critid=uid) & Q(mid=mid) & Q(type="dislike") or Q(critid=uid) & Q(mid=mid) & Q(type="like")).exists():
        msg = "You already disliked"
        return HttpResponseRedirect("/criticsview_movies?msg=" + msg)
    else:
        fetch = Addmovies.objects.filter(id=mid)
        print(fetch)
        print(fetch[0].dislikes)
        fetchdislike = fetch[0].dislikes
        print(fetchdislike)
        sum = fetchdislike+1
        print(sum)
        if Like.objects.filter(Q(critid=uid) & Q(mid=mid)).exists():
            msg = "You already Responded"
            return HttpResponseRedirect("/criticsview_movies?msg=" + msg)
        else:
            final = Addmovies.objects.filter(id=mid).update(dislikes=sum)
            abc = Like.objects.create(mid=efg, critid=aid, type="dislike")
            abc.save()
    return HttpResponseRedirect("/criticsview_movies")


def criticsviewaspirants(request):
    id = request.GET.get("id")
    uid = request.session['uid']
    print(uid)
    abc = Aspirantsregister.objects.all()
    # efg = Messageuser.objects.all()
    return render(request, 'critics/criticsviewaspirants.html', {"abc": abc})


def criticsviewuser(request):
    id = request.GET.get("id")
    uid = request.session['uid']
    print(uid)
    abc = Userregister.objects.all()
    # efg = Messageuser.objects.all()
    return render(request, 'critics/criticsviewusers.html', {"abc": abc})


def messageaspirants(request):
    Num = ""
    msg = ""
    uid = request.session["uid"]
    id = request.GET.get("id")

    fetchnumberQuery = Aspirantsregister.objects.filter(
        id=id)
    Num = fetchnumberQuery[0].phone
    print(Num)
    if request.POST:
        query = request.POST.get("query")
        print(query)
    try:
        pywhatkit.sendwhatmsg_instantly(
            phone_no="+91"+Num,
            message="Message : "+query,
            # tab_close=True
        )
        time.sleep(2)
        pyautogui.click()
        time.sleep(2)
        keyboard.press(Key.enter)
        keyboard.release(Key.enter)
        print("Message sent!")
    except Exception as e:
        print(str(e))
    return render(request, "critics/messageaspirants.html")


def usermessage(request):
    Num = ""
    msg = ""
    uid = request.session["uid"]
    id = request.GET.get("id")

    fetchnumberQuery = Userregister.objects.filter(
        id=id)
    Num = fetchnumberQuery[0].phone
    print(Num)
    if request.POST:
        query = request.POST.get("query")
        print(query)
    try:
        pywhatkit.sendwhatmsg_instantly(
            phone_no="+91"+Num,
            message="Message : "+query,
            # tab_close=True
        )
        time.sleep(2)
        pyautogui.click()
        time.sleep(2)
        keyboard.press(Key.enter)
        keyboard.release(Key.enter)
        print("Message sent!")
    except Exception as e:
        print(str(e))
    return render(request, "critics/messageuser.html")

######## //CRITICS  ########
