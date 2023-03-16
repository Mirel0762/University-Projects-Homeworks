<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
  /* CSS */
.button-17 {
  align-items: center;
  appearance: none;
  background-color: #fff;
  border-radius: 24px;
  border-style: none;
  box-shadow: rgba(0, 0, 0, .2) 0 3px 5px -1px,rgba(0, 0, 0, .14) 0 6px 10px 0,rgba(0, 0, 0, .12) 0 1px 18px 0;
  box-sizing: border-box;
  color: #3c4043;
  cursor: pointer;
  display: inline-flex;
  fill: currentcolor;
  font-family: "Google Sans",Roboto,Arial,sans-serif;
  font-size: 14px;
  font-weight: 500;
  height: 48px;
  justify-content: center;
  letter-spacing: .25px;
  line-height: normal;
  max-width: 100%;
  overflow: visible;
  padding: 2px 24px;
  position: relative;
  text-align: center;
  text-transform: none;
  transition: box-shadow 280ms cubic-bezier(.4, 0, .2, 1),opacity 15ms linear 30ms,transform 270ms cubic-bezier(0, 0, .2, 1) 0ms;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  width: auto;
  will-change: transform,opacity;
  z-index: 0;
}

.button-17:hover {
  background: #F6F9FE;
  color: #174ea6;
}

.button-17:active {
  box-shadow: 0 4px 4px 0 rgb(60 64 67 / 30%), 0 8px 12px 6px rgb(60 64 67 / 15%);
  outline: none;
}

.button-17:focus {
  outline: none;
  border: 2px solid #4285f4;
}

.button-17:not(:disabled) {
  box-shadow: rgba(60, 64, 67, .3) 0 1px 3px 0, rgba(60, 64, 67, .15) 0 4px 8px 3px;
}

.button-17:not(:disabled):hover {
  box-shadow: rgba(60, 64, 67, .3) 0 2px 3px 0, rgba(60, 64, 67, .15) 0 6px 10px 4px;
}

.button-17:not(:disabled):focus {
  box-shadow: rgba(60, 64, 67, .3) 0 1px 3px 0, rgba(60, 64, 67, .15) 0 4px 8px 3px;
}

.button-17:not(:disabled):active {
  box-shadow: rgba(60, 64, 67, .3) 0 4px 4px 0, rgba(60, 64, 67, .15) 0 8px 12px 6px;
}

.button-17:disabled {
  box-shadow: rgba(60, 64, 67, .3) 0 1px 3px 0, rgba(60, 64, 67, .15) 0 4px 8px 3px;
}
  body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  float:right;
  background-color:rgb(76, 135, 202);
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: blue;
}

.container1 {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  margin: auto;
  width: 1000px;
  height: 560px;
  margin-bottom: 20px;
}
}
.right {
  width: 50%;
  display: inline-block;
  }
  .center {
  display:flex;
  align-items: flex-end;
  margin: auto;
  width: 95%;
  padding: 10px;
  background-color: lightgrey;
  height: 13%;
  margin-bottom: 20px;
}
.container2
{
  margin-top: 20px;
  margin: auto;
  width: 20%;
  padding: 10px;

}

p{
  text-indent: 15px;
  font-size: 22px;
  color: gray;
}
p1
{
  
  font-size: 20px;
}
p2
{
  font-size: 15px;
}

h1{
  text-indent: 200px;
}
</style>
</head>
<body>

<div class="center">
  <h1>Contact us</h1>
  <p>Feel free to contact us</p>
</div>
<div class="container1">
    <label for="fname"><b>Name</b></label>
    <input type="text" id="fname" placeholder="Enter name">

    <label for="lname"><b>Email</b></label>
    <input type="text" id="lname"  placeholder="Enter email">

    <label for="ssubject"><b>Subject</b></label>
    <input type="text" id="ssubject"  placeholder="Enter subject">

    <label for="half right subject"><b>Message</b></label>
    <textarea id="subject" name="subject" placeholder="Message" style="height:200px"></textarea>

    <input type="submit" value="Send Message">
  </form>
  <form>
    <input type="button" button class="button-17" value="Go back!" onclick="history.back()">
  </form>
</div>


<center class="container2">
  <p1><center>Or find us on social media</p></center></p>
  <hr>
  <p2><a href=https://www.facebook.com/>Facebook</a></p2> &nbsp;&nbsp;&nbsp;&nbsp;
  <p2><a href=https://twitter.com//>Twitter</a></p2> &nbsp;&nbsp;&nbsp;&nbsp;
  <p2><a href=https://instagram.com//>Instagram</a></p2>
</div>

</body>
</html>