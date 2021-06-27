class HomeScreen extends StatefulWidget {
@override
_HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


@override
Widget build(BuildContext context) {
	return Scaffold();

@override
Widget build(BuildContext context) {
	return Scaffold();

@override
Widget build(BuildContext context) {
   return Scaffold();


	// Column created
	body: Column(
		children: [
		Expanded(
			
			// PageView Builder
			child: PageView.builder(
				scrollDirection: Axis.horizontal,
				onPageChanged: (value){
				setState(() {
					currentIndex = value;
				});
				},
				itemCount: slides.length,
				itemBuilder: (context, index){
				
				// Contents of Slider that we
				// created in Modal Class
				return Slider(
					image: slides[index].getImage(),
					title: slides[index].getTitle(),
					description: slides[index].getDescription(),
				);
				}
			),
		),
		
		// Container created for dots
		Container(
			child: Row(
			mainAxisAlignment: MainAxisAlignment.center,
			children: List.generate(slides.length, (index) => buildDot(index, context),
			),
			),
		),
Container buildDot(int index, BuildContext context){

// Another Container returned
	return Container(
	height: 10,
	width: currentIndex == index ? 25 : 10,
	margin: EdgeInsets.only(right: 5),
	decoration: BoxDecoration(
		borderRadius: BorderRadius.circular(20),
		color: Colors.purple,
	),
	);
}
}
Container(
		height: 60,
		margin: EdgeInsets.all(40),
		width: double.infinity,
		color: Colors.purple,

		// Button
		child: FlatButton(
			child: Text(
				currentIndex == slides.length - 1 ? "Continue": "Next"),
			onPressed: (){
			if(currentIndex == slides.length - 1){
				
				// Navigate to next screen
				Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Screen1()),
				);
			}
			_controller.nextPage(duration: Duration(milliseconds: 100), curve: Curves.bounceIn);
			},
			textColor: Colors.black,

			// Border radius to button
			shape: RoundedRectangleBorder(
			borderRadius: BorderRadius.circular(25),
			),
		),

		),
Container(
		height: 60,
		margin: EdgeInsets.all(40),
		width: double.infinity,
		color: Colors.purple,

		// Button
		child: FlatButton(
			child: Text(
				currentIndex == slides.length - 1 ? "Continue": "Next"),
			onPressed: (){
			if(currentIndex == slides.length - 1){
				
				// Navigate to next screen
				Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Screen1()),
				);
			}
			_controller.nextPage(duration: Duration(milliseconds: 100), curve: Curves.bounceIn);
			},
			textColor: Colors.black,

			// Border radius to button
			shape: RoundedRectangleBorder(
			borderRadius: BorderRadius.circular(25),
			),
		),

		),
class SliderModel{
String image;
String title;
String description;


// Constructor for variables
SliderModel({this.title, this.description, this.image});

void setImage(String getImage){
	image = getImage;
}

void setTitle(String getTitle){
	title = getTitle;
}
void setDescription(String getDescription){
	description = getDescription;
}

String getImage(){
	return image;
}

String getTitle(){
	return title;
}
String getDescription(){
	return description;
}
}

// List created
List<SliderModel> getSlides(){
List<SliderModel> slides = new List<SliderModel>();
SliderModel sliderModel = new SliderModel();

// Item 1
sliderModel.setImage("images/slider2.png");
sliderModel.setTitle("Beta Weddin");
sliderModel.setDescription("Keep your friends and family updated about your big day!");
slides.add(sliderModel);

sliderModel = new SliderModel();

// Item 2
sliderModel.setImage("images/slider2.png");
sliderModel.setTitle("Help Invitees easily locate the venue");
sliderModel.setDescription("With an inbuilt map, your invitees can easily locate the venue of your wedding");
slides.add(sliderModel);

sliderModel = new SliderModel();

// Item 3
sliderModel.setImage("images/slider2.png");
sliderModel.setTitle("Send Invites to Friends and Family");
sliderModel.setDescription("Easiest way to send wedding invites to your loved ones from the comfort of your home");
slides.add(sliderModel);

sliderModel = new SliderModel();

// Item 4
slideModel.setImage(images/slider2.png);
sliderModel.setTitle("Receive Gifts and Donations from Friends and Families;
sliderModel.setDescription("You don't have to wait until your wedding day before you receive gifts from loved ones");
slides.add(sliderModel);


sliderModel = new SliderModel();
return slides;
}
class SliderModel{
String image;

// images given
SliderModel({this.image});

// setter for image
void setImage(String getImage){
	image = getImage;
}

// getter for image
String getImage(){
	return image;
}
}
	List<SliderModel> getSlides(){
List<SliderModel> slides = new List<SliderModel>();
SliderModel sliderModel = new SliderModel();

// 1
	sliderModel.setImage("images/slider2.png");
	slides.add(sliderModel);

	sliderModel = new SliderModel();

// 2
sliderModel.setImage("images/slider2.png");
slides.add(sliderModel);

sliderModel = new SliderModel();

// 3
sliderModel.setImage("images/slider2.png");
slides.add(sliderModel);

sliderModel = new SliderModel();

//4
sliderModel.setImage(images/slider2.png);
slides.add(sliderModel);

sliderModel = new SliderModel();
return slides;
}
import 'package:flutter/material.dart';
import 'package:kc0035a_flutter_customer_app/Screen1.dart';
import 'package:kc0035a_flutter_customer_app/data/SliderModel.dart';

class HomeScreen extends StatefulWidget {
@override
_HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

List<SliderModel> slides = new List<SliderModel>();
int currentIndex = 0;
PageController _controller;

@override
void initState() {

	// TODO: implement initState
	super.initState();
	_controller = PageController(initialPage: 0);
	slides = getSlides();
}
@override
void dispose(){
	_controller.dispose();
	super.dispose();

}@override
void dispose(){
	_controller.dispose();
	super.dispose();
}

@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(
		title: Text("Beta Wedding"),
	),
	body: Column(
		children: [
		Expanded(
			child: PageView.builder(
				scrollDirection: Axis.horizontal,
				onPageChanged: (value){
				setState(() {
					currentIndex = value;
				});
				},
				itemCount: slides.length,
				itemBuilder: (context, index){

				// contents of slider
				return Slider(
					image: slides[index].getImage(),
				
				);
				}
			),
		),
		Container(
			child: Row(
			mainAxisAlignment: MainAxisAlignment.center,
			children: List.generate(slides.length, (index) => buildDot(index, context),
			),
			),
		),
		Container(
			height: 60,
			margin: EdgeInsets.all(40),
			width: double.infinity,
			color: Colors.purple,
			child: FlatButton(
			child: Text(
				currentIndex == slides.length - 1 ? "Continue": "Next"),
			onPressed: (){
				if(currentIndex == slides.length - 1){
				Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Screen1()),
				);
				}
				_controller.nextPage(duration: Duration(milliseconds: 100), curve: Curves.bounceIn);
			},
			textColor: Colors.black,
			shape: RoundedRectangleBorder(
				borderRadius: BorderRadius.circular(25),
			),
			),

		),
		],
	),
	backgroundColor: Colors.white,
	);
}

// container created for dots
Container buildDot(int index, BuildContext context){
	return Container(
	height: 10,
	width: currentIndex == index ? 25 : 10,
	margin: EdgeInsets.only(right: 5),
	decoration: BoxDecoration(
		borderRadius: BorderRadius.circular(20),
		color: Colors.purple,
	),
	);
}
}

// ignore: must_be_immutable
// slider declared
class Slider extends StatelessWidget {
String image;

Slider({this.image});

@override
Widget build(BuildContext context) {
	return Expanded(

	// contains container
	child: Container(
		child: Column(
		mainAxisAlignment: MainAxisAlignment.center,
		children: [

			// image given in slider
			Image(image: AssetImage(image)),
			SizedBox(height: 25),
		],
		),
	),
	);
}
}
