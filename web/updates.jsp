<h1>Updates & Notifications</h1>

<main>
  
  <input id="tab1" type="radio" name="tabs" checked>
  <label for="tab1">Updates</label>
    
  <input id="tab2" type="radio" name="tabs">
  <label for="tab2">Notifications</label>
    
  
    
  <section id="content1">
      <p> <span><b> 22, oct 2017:</b></span> <a onclick="open()" href="new/313 Mech.pdf">Examination: AY 17-18 Sem1 MT2 Exam halls on 23_10_2017 at 3.15 to 4.00 pm</a><br/></p>
  
    <p> <span><b> 21, oct 2017:</b></span> <a onclick="open()" href="new/313 Mech.pdf">Examination: AY 17-18 Sem1 MT2 Exam halls on 23_10_2017 at 11.30 to 1.00 pm </a><br/></p>
  
    <p> <span><b> 21, oct 2017:</b></span> <a onclick="open()" href="new/313 Mech.pdf"> Examination: AY 17-18 Sem1 MT2 Exam halls on 23_10_2017 at 9_15 to 10_45. </a><br/></p>
  
   <p>  <span><b> 19, oct 2017:</b></span> <a onclick="open()" href="new/313 Mech.pdf">Reg: Instructions to the students </a><br/></p>
  
  <p>   <span><b> 22, Sep 2017:</b></span> <a onclick="open()" href="new/313 Mech.pdf">Examination: AY 17-18 Sem1 MT2 Exam halls.</a></p>
  
    
     </section>
  <section id="content2">
   <p><span><b>16,oct 2017</b></span> :Presenlty , you don't have any notifications. </p>
 
  </section>
    
 
    
</main>
<style>
    
*, *:before, *:after {
  margin-top:-15px;
  padding: 0;
  box-sizing: border-box;
}

html, body {
  height: 200vh;
  
}

body {
  font: 14px/1 'Open Sans', sans-serif;
  color: white;
  background: #333333;
  overflow:hidden;
}

h1 {
  padding: 50px 0;
  font-weight: 400;
  text-align: center;
  color:white;
}
span
{
color: #ff3300;
padding:20px;
font-size:13px;
}

p {
	list-style-type:circle;
        font-size:15px;
  margin: 0 0 20px;
  line-height: 1.5;
}



section {
  display: none;
  margin-top:1px;
  padding: 20px 0 0;
  border-top: 1px solid #ddd;
}

input {
  display: none;
}

label {
  display: inline-block;
  margin: -10 0 -1px;
  padding: 15px 25px;
  font-weight: 600;
  text-align: center;
  color: white;
  border: 1px solid transparent;
}

label:before {
  font-family: fontawesome;
  font-weight: normal;
  margin-right: 10px;
}

label:hover {
  color: #ffb3b3;
  cursor: pointer;
}

input:checked + label {
  color: #ffb3b3;
  border-top: 2px solid orange;
  border-bottom: 1px solid #fff;
}

#tab1:checked ~ #content1,
#tab2:checked ~ #content2{
  display: block;
}

a{
    text-decoration: none;
    color:white;
}

</style>