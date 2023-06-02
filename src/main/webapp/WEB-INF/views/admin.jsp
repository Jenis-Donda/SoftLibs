<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored = "false" %>    
  
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="resources/img/softlib2.png" rel="icon">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
<!-- Google Fonts -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<!-- Bootstrap core CSS -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Material Design Bootstrap -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css"
	rel="stylesheet">
<body>

<style>
body{
    background: #eaeaea;
    margin-top:20px;
}
.profile-info-list {
    padding: 0;
    margin: 0;
    list-style-type: none;
}
.friend-list,
.img-grid-list {
    margin: -1px;
    list-style-type: none;
}
.profile-info-list > li.title {
    font-size: 0.625rem;
    font-weight: 700;
    color: #8a8a8f;
    padding: 0 0 0.3125rem;
}
.profile-info-list > li + li.title {
    padding-top: 1.5625rem;
}
.profile-info-list > li {
    padding: 0.625rem 0;
}
.profile-info-list > li .field {
    font-weight: 700;
}
.profile-info-list > li .value {
    color: #666;
}
.profile-info-list > li.img-list a {
    display: inline-block;
}
.profile-info-list > li.img-list a img {
    max-width: 2.25rem;
    -webkit-border-radius: 2.5rem;
    -moz-border-radius: 2.5rem;
    border-radius: 2.5rem;
}
.coming-soon-cover img,
.email-detail-attachment .email-attachment .document-file img,
.email-sender-img img,
.friend-list .friend-img img,
.profile-header-img img {
    max-width: 100%;
}
.table.table-profile th {
    border: none;
    color: #000;
    padding-bottom: 0.3125rem;
    padding-top: 0;
}
.table.table-profile td {
    border-color: #c8c7cc;
}
.table.table-profile tbody + thead > tr > th {
    padding-top: 1.5625rem;
}
.table.table-profile .field {
    color: #666;
    font-weight: 600;
    width: 25%;
    text-align: right;
}
.table.table-profile .value {
    font-weight: 500;
}
.profile-header {
    position: relative;
    overflow: hidden;
}
.profile-header .profile-header-cover {
    background: url(https://wallpaperaccess.com/full/3304483.jpg) center no-repeat;
    background-size: 100% auto;
    position: absolute;
    left: 0;
    right: 0;
    top: 0;
    bottom: 0;
}
.profile-header .profile-header-cover:before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: linear-gradient(to bottom, rgba(0, 0, 0, 0.25) 0, rgba(0, 0, 0, 0.85) 100%);
}
.profile-header .profile-header-content,
.profile-header .profile-header-tab,
.profile-header-img,
body .fc-icon {
    position: relative;
}
.profile-header .profile-header-tab {
    background: #fff;
    list-style-type: none;
    margin: -1.25rem 0 0;
    padding: 0 0 0 8.75rem;
    border-bottom: 1px solid #c8c7cc;
    white-space: nowrap;
}
.profile-header .profile-header-tab > li {
    display: inline-block;
    margin: 0;
}
.profile-header .profile-header-tab > li > a {
    display: block;
    color: #000;
    line-height: 1.25rem;
    padding: 0.625rem 1.25rem;
    text-decoration: none;
    font-weight: 700;
    font-size: 0.75rem;
    border: none;
}
.profile-header .profile-header-tab > li.active > a,
.profile-header .profile-header-tab > li > a.active {
    color: #007aff;
}
.profile-header .profile-header-content:after,
.profile-header .profile-header-content:before {
    content: "";
    display: table;
    clear: both;
}
.profile-header .profile-header-content {
    color: #fff;
    padding: 1.25rem;
}
body .fc th a,
body .fc-ltr .fc-basic-view .fc-day-top .fc-day-number,
body .fc-widget-header a {
    color: #000;
}
.profile-header-img {
    float: left;
    width: 7.5rem;
    height: 7.5rem;
    overflow: hidden;
    z-index: 10;
    margin: 0 1.25rem -1.25rem 0;
    padding: 0.1875rem;
    -webkit-border-radius: 0.25rem;
    -moz-border-radius: 0.25rem;
    border-radius: 0.25rem;
    background: #fff;
}
.profile-header-info h4 {
    font-weight: 500;
    margin-bottom: 0.3125rem;
}
.profile-container {
    padding: 1.5625rem;
}
@media (max-width: 967px) {
    .profile-header-img {
        width: 5.625rem;
        height: 5.625rem;
        margin: 0;
    }
    .profile-header-info {
        margin-left: 6.5625rem;
        padding-bottom: 0.9375rem;
    }
    .profile-header .profile-header-tab {
        padding-left: 0;
    }
}
@media (max-width: 767px) {
    .profile-header .profile-header-cover {
        background-position: top;
    }
    .profile-header-img {
        width: 3.75rem;
        height: 3.75rem;
        margin: 0;
    }
    .profile-header-info {
        margin-left: 4.6875rem;
        padding-bottom: 0.9375rem;
    }
    .profile-header-info h4 {
        margin: 0 0 0.3125rem;
    }
    .profile-header .profile-header-tab {
        white-space: nowrap;
        overflow: scroll;
        padding: 0;
    }
    .profile-container {
        padding: 0.9375rem 0.9375rem 3.6875rem;
    }
    .friend-list > li {
        float: none;
        width: auto;
    }
}
.profile-info-list {
    padding: 0;
    margin: 0;
    list-style-type: none;
}
.friend-list,
.img-grid-list {
    margin: -1px;
    list-style-type: none;
}
.profile-info-list > li.title {
    font-size: 0.625rem;
    font-weight: 700;
    color: #8a8a8f;
    padding: 0 0 0.3125rem;
}
.profile-info-list > li + li.title {
    padding-top: 1.5625rem;
}
.profile-info-list > li {
    padding: 0.625rem 0;
}
.profile-info-list > li .field {
    font-weight: 700;
}
.profile-info-list > li .value {
    color: #666;
}
.profile-info-list > li.img-list a {
    display: inline-block;
}
.profile-info-list > li.img-list a img {
    max-width: 2.25rem;
    -webkit-border-radius: 2.5rem;
    -moz-border-radius: 2.5rem;
    border-radius: 2.5rem;
}
.coming-soon-cover img,
.email-detail-attachment .email-attachment .document-file img,
.email-sender-img img,
.friend-list .friend-img img,
.profile-header-img img {
    max-width: 100%;
}
.table.table-profile th {
    border: none;
    color: #000;
    padding-bottom: 0.3125rem;
    padding-top: 0;
}
.table.table-profile td {
    border-color: #c8c7cc;
}
.table.table-profile tbody + thead > tr > th {
    padding-top: 1.5625rem;
}
.table.table-profile .field {
    color: #666;
    font-weight: 600;
    width: 25%;
    text-align: right;
}
.table.table-profile .value {
    font-weight: 500;
}



.timeline {
    list-style-type: none;
    position: relative
}

.timeline:before {
    background: #dee2e6;
    left: 9px;
    width: 2px;
    height: 100%
}

.timeline-item:before,
.timeline:before {
    content: " ";
    display: inline-block;
    position: absolute;
    z-index: 1
}

.timeline-item:before {
    background: #fff;
    border-radius: 50%;
    border: 3px solid #3b7ddd;
    left: 0;
    width: 20px;
    height: 20px
}
.card {
    margin-bottom: 24px;
    box-shadow: 0 0 0.875rem 0 rgba(33,37,41,.05);
}
.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: initial;
    border: 0 solid transparent;
    border-radius: .25rem;
}
.card-body {
    flex: 1 1 auto;
    padding: 1.25rem;
}
.card-header:first-child {
    border-radius: .25rem .25rem 0 0;
}
.card-header {
    border-bottom-width: 1px;
}
.pb-0 {
    padding-bottom: 0!important;
}
.card-header {
    padding: 1rem 1.25rem;
    margin-bottom: 0;
    background-color: #fff;
    border-bottom: 0 solid transparent;
}

.custom {
    width: 100px !important;
    height: 10px;
    text-align: center;
}

#confirm-dialog {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.6);
  z-index: 999;
}

.confirm-content {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  background-color: #fff;
  border-radius: 5px;
  padding: 20px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}

.btn-container {
  display: flex;
  justify-content: center;
  margin-top: 20px;
}

#confirm-btn {
  background-color: red;
  color: #fff;
  padding: 10px 20px;
  border-radius: 5px;
  border: none;
  cursor: pointer;
  margin: 0 20px;
}

#cancel-btn {
  background-color: blue;
  color: #fff;
  padding: 10px 20px;
  border-radius: 5px;
  border: none;
  cursor: pointer;
  margin: 0 10px;
}

button:hover {
  background-color: #3e8e41;
}

.hidden {
  display: none;
}



</style>

<div id="confirm-dialog" class="hidden">
  <div class="confirm-content">
    <p>Are you sure want to remove this user?</p>
    <div class="btn-container">
      <button id="confirm-btn">Yes</button>
      <button id="cancel-btn">No</button>
    </div>
  </div>
</div>
   
   <div class="container">
<div id="content" class="content p-0">
    <div class="profile-header">
        <div class="profile-header-cover"></div>
        <div class="profile-header-content">
            <div class="profile-header-img mb-4">
                <img src="https://bootdey.com/img/Content/avatar/avatar7.png" class="mb-4" alt="" />
            </div>

            <div class="profile-header-info">
                <h4 class="m-t-sm">${name }</h4>
                <p class="m-b-sm">${email }</p>
                <p class="m-b-sm">Admin</p>
                <a href="edit/${id }" class="btn btn-sm btn-primary mb-3 ml-0"><i class='fas fa-user-edit' style='font-size:15px'></i>
                Edit Profile</a>
                <a href="logout" class="btn btn-sm btn-primary mb-3 ml-0"><i class='fa fa-sign-out' style='font-size:15px'></i>
                Logout</a>
            </div>
        </div>

        <ul class="profile-header-tab nav nav-tabs">
            <li class="nav-item"><a href="/Software/admin" class="nav-link active show" data-toggle="tab">USERS</a></li>
            <li class="nav-item"><a href="/Software/admin-invest" class="nav-link" data-toggle="tab">INVESTMENT</a></li>
            <li class="nav-item"><a href="/Software/admin-acc" class="nav-link" data-toggle="tab">ACCOUNTING</a></li>
            <li class="nav-item"><a href="/Software/admin-budget" class="nav-link" data-toggle="tab">BUDGET</a></li>
            
        </ul>
    </div>

    
    <div class="container-fluid p-0">
		<br>
		<div class="row">
			<div class="col-xl-12">
				<div class="card center">
					<div class="card-header pb-0">
						
						<br>
						<h5 class="card-title mb-0"><i class="fas fa-users"></i> Users</h5>
					</div>
					<div class="card-body ">
						<div class="table-responsive">
                            <table class="table m-0">
                                <thead>
                                    <tr>
                                        <th scope="col">Id</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">Contact</th>
                                        <th scope="col"> Remove</th>
                                        <th scope="col"></th>
                                    </tr>
                                </thead>
                                <tbody>
             
	
                                
                                
                                <c:forEach var="s" items="${list}">
                                <c:set var = "email" value="${email }"/>
                                  <c:if test="${s.email ne email}">
                                    <tr>
                                        <th scope="row">${s.id }</th>
                                        <td>${s.name }</td>
                                        <td>${s.email }</td>
                                        
                                        <td>${s.number }</td>
                                        
                                        <td>
                                            <!-- Call to action buttons -->
                                            <ul class="list-inline m-0">
                                                
                                                <li class="list-inline-item">
                                                  <a href="delete/${s.id }" id="logout-link">  <button class="btn btn-danger btn-sm rounded-0 mt-0 mb-0" type="button" data-toggle="tooltip" data-placement="top" title="Delete" id="logout-btn"><i class="fa fa-trash"></i></button></a>
                                                </li>
                                            </ul>
                                        </td>
                                    </tr>
                                    </c:if>
                                    </c:forEach>
                                   
                                </tbody>
                            </table>
					</div>
				</div>
			</div>

	

            
</div>
</div>
<script>
var logoutLink = document.getElementById("logout-link");
var logoutBtn = document.getElementById("logout-btn");
var confirmDialog = document.getElementById("confirm-dialog");
var confirmBtn = document.getElementById("confirm-btn");
var cancelBtn = document.getElementById("cancel-btn");

logoutBtn.addEventListener("click", function(event) {
  event.preventDefault();
  confirmDialog.classList.remove("hidden");
});

confirmBtn.addEventListener("click", function() {
  // The user clicked "Yes", so log them out
  // Replace this with your own logout code
  logoutLink.click();
  confirmDialog.classList.add("hidden");
});

cancelBtn.addEventListener("click", function() {
  // The user clicked "No", so do nothing
  console.log("Logout cancelled.");
  confirmDialog.classList.add("hidden");
});

</script>
</body>
</html>