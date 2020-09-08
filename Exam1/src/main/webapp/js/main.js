NoOfQuestions=20;
Questions=Array(NoOfQuestions);
Answers=new Array(NoOfQuestions);
Choosed=false;

for(var i=0; i<NoOfQuestions; i++) {
	Answers[i]=new Array(4);
}
CorrectAnswer= new Array(NoOfQuestions);
QuestionNo=0;
Marks=0;

OptionChoosed=0;
Answer=20;
function AnswerChoosed(Ans)
{
	Answer=Ans;
	Choosed=true;
}
function load()
{
	LoadQuestion();
}
function LoadQuestion() {
	document.getElementById("Question").innerHTML="("+(QuestionNo + 1)+"):" + Questions[QuestionNo];
	document.getElementById("Option0").innerHTML="(a)"+Answers[QuestionNo][0];
	document.getElementById("Option1").innerHTML="(b)"+Answers[QuestionNo][1];
	document.getElementById("Option2").innerHTML="(c)"+Answers[QuestionNo][2];
	document.getElementById("Option3").innerHTML="(d)"+Answers[QuestionNo][3];
	document.getElementByid("Opt1").checked=false;
	document.getElementByid("Opt2").checked=false;
	document.getElementByid("Opt3").checked=false;
	document.getElementByid("Opt4").checked=false;
	Answer=20;
}
function NextQuestion() {
	if (Answer==CorrectAnswer[QuestionNo])
	{
		Marks++;
	}
	if(Choosed)
	{
		if(QuestionNo < NoOfQuestions - 1)
		{
			QuestionNo++;
			LoadQuestion();
		} else {
			alert("End of Examination...Marks are:'"+Marks+"'");
		}
		Choosed=false;
	} else {
		alert("No option choosed yet...!");
	}
}
Questions[0]="Who is known as human Computer";
Answers[0][0]="AlbertEinstein";
Answers[0][1]="IsacNewton";
Answers[0][2]="ShakunthalaDevi";
Answers[0][3]="madamcurie";
CorrectAnswer[0]=2;

Questions[1]=" What would be the number of bytes, transferred at the rate of 1 Kilobit per second?";
Answers[1][0]="100";
Answers[1][1]="108";
Answers[1][2]="125";
Answers[1][3]="130";
CorrectAnswer[1]=2;

Questions[2]=" IC is made up of ";
Answers[2][0]="Transistors";
Answers[2][1]=" Microprocessors";
Answers[2][2]="Vaccum Tubes";
Answers[2][3]="Capacitaors";
CorrectAnswer[2]=0;

Questions[3]="Speed of the first generation computer was in";
Answers[3][0]="NanoSeconds";
Answers[3][1]=" Millseconds";
Answers[3][2]="NanoMilliSeconds";
Answers[3][3]="Fourth";
CorrectAnswer[3]=4;

Questions[4]=" WWW stands for ?";
Answers[4][0]="World Whole Web";
Answers[4][1]="Wide World Web";
Answers[4][2]="Web World Wide";
Answers[4][3]="World Wide Web";
CorrectAnswer[4]=4;

Questions[5]=" Which of the following are components of Central Processing Unit (CPU) ?";
Answers[5][0]="Arithmetic logic unit, Mouse";
Answers[5][1]="Arithmetic logic unit, Control unit";
Answers[5][2]="Arithmetic logic unit, Integrated Circuits";
Answers[5][3]="Control Unit, Monitor";
CorrectAnswer[5]=1;

Questions[6]="Which among following first generation of computers had ?";
Answers[6][0]="Vaccum Tubes and Magnetic Drum";
Answers[6][1]="Integrated Circuits";
Answers[6][2]="Magnetic Tape and Transistors";
Answers[6][3]="All of above";
CorrectAnswer[6]=0;

Questions[7]="Where is RAM located ?";
Answers[7][0]="Expansion Board";
Answers[7][1]="External Drive";
Answers[7][2]="Mother Board";
Answers[7][3]="All of above";
CorrectAnswer[7]=2;

Questions[8]=" If a computer has more than one processor then it is known as ?";
Answers[8][0]="Multiprocessor";
Answers[8][1]="Multithreaded";
Answers[8][2]="Multiprogramming";
Answers[8][3]="All of above";
CorrectAnswer[8]=0;

Questions[9]=" If a computer provides database services to other, then it will be known as ?";
Answers[9][0]="Web server";
Answers[9][1]="Application server";
Answers[9][2]="Database server";
Answers[9][3]="FTP server";
CorrectAnswer[9]=2;

Questions[10]=" Full form of URL is ?";
Answers[10][0]="Uniform Resource Locator";
Answers[10][1]="Uniform Resource Link";
Answers[10][2]="Uniform Resource Link";
Answers[10][3]="Uniform Registered Link";
CorrectAnswer[10]=0;

Questions[11]=" In which of the following form, data is stored in computer ?";
Answers[11][0]="Decimal";
Answers[11][1]="Binary";
Answers[11][2]="HexaDecimal";
Answers[11][3]="Octal";
CorrectAnswer[11]=1;

Questions[12]="Which level language is Assembly Language ?";
Answers[12][0]="high-level programming language";
Answers[12][1]="medium-level programming language";
Answers[12][2]="low-level programming language";
Answers[12][3]="machine language";
CorrectAnswer[12]=2;

Questions[13]="Documents, Movies, Images and Photographs etc are stored at a ?";
Answers[13][0]="Application Sever";
Answers[13][1]="Web Sever";
Answers[13][2]="Print Server";
Answers[13][3]="File Server";
CorrectAnswer[13]=4;

Questions[14]=" Which of following is used in RAM ?";
Answers[14][0]="Conductor";
Answers[14][1]="Semi Conductor";
Answers[14][2]="Vaccum Tubes";
Answers[14][3]="Transistor";
CorrectAnswer[14]=1;

Questions[15]=" What is full form of ALU ?";
Answers[15][0]="Arithmetic logic unit";
Answers[15][1]="Allowed logic unit";
Answers[15][2]="Ascii logic unit";
Answers[15][3]="Arithmetic least unit";
CorrectAnswer[15]=0;

Questions[16]="Who was the Founder of Bluetooth ?";
Answers[16][0]="Ericson";
Answers[16][1]="Martin Cooper";
Answers[16][2]="Steve Jobs";
Answers[16][3]="Apple";
CorrectAnswer[16]=0;

Questions[17]=" Who was the father of Internet ?";
Answers[17][0]="Chares Babbage";
Answers[17][1]="Martin Cooper";
Answers[17][2]="Vint Cerf";
Answers[17][3]="Martin Cooper";
CorrectAnswer[17]=2;

Questions[18]="What is LINUX ?";
Answers[18][0]="Malware";
Answers[18][1]="Operating System";
Answers[18][2]="Application Program";
Answers[18][3]="Firmware";
CorrectAnswer[18]=1;

Questions[19]=" Which is most common language used in web designing ?";
Answers[19][0]="C++";
Answers[19][1]="C";
Answers[19][2]="PHP";
Answers[19][3]="HTML";
CorrectAnswer[19]=4;
