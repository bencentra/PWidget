## PWidgets

"Widget" classes for Processing. Currently only useful for creating images/shapes that rotate around their center.

Use the `SVGWidget` class to draw the widget with an SVG file. Use the `ImageWidget` class to draw the widget with an image (.jpg, .png, etc) file. Extend the `Widget` class and follow the draw routines in the other subclasses to create your own!

### How to Rotate a PShape/PImage Around Its Center

If you don't want to use a Widget class and just want to rotate an image around its center point, do the following:

1) Use `pushMatrix()` to create a new transformation matrix    
2) `translate()` to the center of the image/shape to be rotated    
3) `rotate()` the transformation matrix, not just the image/shape    
4) Draw the image/shape such that the center is at (0, 0)    
5) Use `popMatrix()` to reset the transformation matrix    

Take the ImageWidget's `draw()` method as an example:

```java
// Push matrix to avoid conflicts
pushMatrix();
// Set draw mode
shapeMode(CENTER);
// Calculate the center
int centerX = xPos + widgetWidth/2;
int centerY = yPos + widgetHeight/2;
// Translate to the center point
translate(centerX, centerY);
// Rotate the widget
rotate(rotation);
// Draw the widget
shape(shape, 0, 0, widgetWidth, widgetHeight);
// Pop matrix to reset
popMatrix();
```