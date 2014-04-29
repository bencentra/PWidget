/*

Drawing widgets!

For SVG files, use the SVGWidget class. 

For PNGs or other image files, use the ImageWidget class.

Widgets x and y position are measured from the top left corner.

Rotation will automatically occur around the widget's center

*/

PShape testShape;
PImage testImage;
Widget svgTest, imageTest;
int rotation = 0;

void setup() {
	// Sketch setup
	size(800,400);
	frameRate(60);
	background(0);
	// SVGWidget
	testShape = loadShape("knob_blue.svg");
	svgTest = new SVGWidget(100, 100, 200, 200, testShape);
	// ImageWidget
	testImage = loadImage("knob_blue.png");
	imageTest = new ImageWidget(405, (400-336)/2, 295, 336, testImage);
}

void draw() {
	background(0);
	rotation = (int) map(mouseX, 0, 800, -90, 90);
	//rotation = (int) map(mouseX, 0, 800, (float) -(Math.PI/2), (float) Math.PI/2);
	println(rotation);
	svgTest.rotation(rotation);
	imageTest.rotation(rotation);
	svgTest.draw();
	imageTest.draw();
}

/*
void keyPressed() {
	if (key == '1') {
		rotation = -45;
	}
	else if (key == '2') {
		rotation = 0;
	}
	else if (key == '3') {
		rotation = 45;
	}
	// Set the rotation for the widgets
	svgTest.rotation(rotation);
	imageTest.rotation(rotation);
}
*/