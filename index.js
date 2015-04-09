/*
	
	To launch this, type 'node index.js portname' on the commandline, where
	portname is the name of your serial port.

*/

var serialport = require("serialport"),		// include the serialport library
	SerialPort  = serialport.SerialPort,	   // make a local instance of serial
	servi = require('servi'),		// include the servi library
	app = new servi(false),		// servi instance
	now,
	nowHour,
	nowMin,
	myVar0,
	myVar1,
	myVar2;

var namesDB = useDatabase("alarms"); 
var value = true;

// configure the server's behavior:
app.port(8080);						// port number to run the server on
app.serveFiles("public");			// serve all static HTML files from /public


// respond to web GET requests for the index.html page:
app.route('/', sendIndexPage);
app.route('/index*', sendIndexPage);
// take anything that begins with /output as an LED request:
app.route('/clock/time', sendToSerialTime);
app.route('/clock/hour', sendToSerialHour);
app.route('/clock/min', sendToSerialMin);
//app.route('/clock/alarm/hour/min', addAlarm);
app.route('/submitAlarm', handleAlarm);
app.route('/viewAlarms', showAll);
app.route('/clock/alarm/off', turnOffAlarm);
route('/view/:id',getById);

// now that everything is configured, start the server:
app.start();	
console.log("Listening for new clients on port 8080");

 
// the third word of the command line command is serial port name:
var portName = process.argv[2];				  
// print out the port you're listening on:
console.log("opening serial port: " + portName);	

// open the serial port. Uses the command line parameter:
var myPort = new SerialPort(portName, { 
	baudRate: 9600,
	// look for return and newline at the end of each data packet:
	parser: serialport.parsers.readline("\r\n") 
});

/* The rest of the functions are event-driven. 
   They only get called when the server gets incoming GET requests:
*/

// this function responds to a GET request with the index page:
function sendIndexPage(request) {
  request.serveFile('/index.html');
}





function sendToSerialTime(request) {
   myVar0 = setInterval(getTime0, 1000);
   request.serveFile('/public/clock/example.html');

function getTime0(){
	nowDate = new Date();
	var nowMin = parseInt(nowDate.getMinutes());
	var nowHour = parseInt(nowDate.getHours());
	 console.log(nowMin);
	 console.log(nowHour);

  // send it out the serial port:

  if(nowMin >= 54 || nowMin<=8){
  	
  	myPort.write('b');
  } else if (nowMin >= 9 && nowMin<=23) {

  	myPort.write('y');
  } else if (nowMin >= 24 && nowMin<=38) {
  	//caseone();
  	myPort.write('g');
  } else if (nowMin >= 39 && nowMin<=53) {

  	myPort.write('r');
  } 
 

  switch(nowHour) {
  	case 0:
        myPort.write('k');
        break;
    case 1:
        myPort.write('1');
        break;
    case 2:
        myPort.write('2');
        break;
    case 3:
        myPort.write('3');
        break;
    case 4:
        myPort.write('4');
        break;
    case 5:
        myPort.write('5');
        break;
    case 6:
        myPort.write('6');
        break;
   case 7:
        myPort.write('7');
        break;
    case 8:
        myPort.write('8');
        break;
    case 9:
        myPort.write('9');
        break;
    case 10:
        myPort.write('j');
        break;
    case 11:
        myPort.write('q');
        break;
    case 12:
        myPort.write('k');
        break;
    case 13:
        myPort.write('1');
        break;
    case 14:
        myPort.write('2');
        break;
    case 15:
        myPort.write('3');
        break;
    case 16:
        myPort.write('4');
        break;
    case 17:
        myPort.write('f');
        break;
    case 18:
        myPort.write('6');
        break;
    case 19:
        myPort.write('7');
        break;
    case 20:
        myPort.write('8');
        break;
    case 21:
        myPort.write('9');
        break;
    case 22:
        myPort.write('j');
        break;
    case 23:
        myPort.write('q');
        break;

}
	
 
} 
 
}

function sendToSerialHour(request) {
   myVar1 = setInterval(getTime1, 1000);
   request.serveFile('/public/hours.html');

function getTime1(){
	var nowDate = new Date();
	var nowHour = nowDate.getHours();
	console.log(nowHour);
} 
 
}


function sendToSerialMin(request) {
 	myVar2 = setInterval(getTime2, 1000);
	request.serveFile('/public/mins.html');

function getTime2(){
	var nowDate = new Date();
	var nowMin = nowDate.getMinutes();
	console.log(nowMin);
 
}
 
}

function addAlarm(request){
	//if the form has not been submitted, show the form
		request.serveFile('public/clock/addAlarm.html');
		
	}


function handleAlarm(request) {
	//getAlarm();
	console.log(request.fields);//check what came in
	myVar3 = setInterval(compareTime, 1000);

		function compareTime() {
		var nowDate = new Date();
		var nowHour = parseInt(nowDate.getHours());
		var nowMin = parseInt(nowDate.getMinutes());
		var nowSec =  parseInt(nowDate.getSeconds());

		var content1 = parseInt(request.fields.hour);
		var content2 = parseInt(request.fields.min);

			if (nowHour == content1){
				if (nowMin == content2) {
					if (nowSec == 1) {
			
				console.log('the alarm is on!!!');
				myPort.write('z');
			}
		}
	}
}
	
	namesDB.add(
	{
		name: request.fields.name,
		hour: request.fields.hour,
		min: request.fields.min,
		state: request.fields.state,
		

	}
	)
	request.respond(content);

}

function showAll(request){
	
	namesDB.getAll(gotNames);
	function gotNames(names){
		namesText = "";
		if (names.length > 0){
			for (i =0; i < names.length; i++) {
			    namesText += '<a href="/view/' + names[i]._id + '">' + names[i].name + "</a><br/>";
			}
		} else {
			namesText = "No alarms in the database yet.";
		}
		
		request.respond(namesText) ;
	}	
}

function getById(request){

	var id = request.params.id;
	// get via the built-in _id and send result to displayPerson function
	namesDB.getOne(id, displayPerson);

	function displayPerson(personObj){
		console.log(personObj); //the object returned
		var content = '<h1>Name: ' + personObj.name + '</h1>';
		content += '<h1>Hour: ' + personObj.hour + '</h1>';
		content += '<h1>Minute: ' + personObj.min + '</h1>';
		content += "<h1>State: " + personObj.state + "</h1>";
		request.respond(content);
		
	}
}

function turnOffAlarm(request) {
	myPort.write('p');
	console.log('p');


}
