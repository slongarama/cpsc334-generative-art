PrintWriter output;
ArrayList<Rectangle> screenRegions = new ArrayList<Rectangle>();
ArrayList<Rectangle> bectonScreens = new ArrayList<Rectangle>();

String[] lines;

boolean state = false;
float[] rectUpperLeft = { 0, 0 };
float[] rectBottomRight = { 0, 0 };

void setup() {
    fullScreen();
    output = createWriter("screen-positions.txt");
    lines = loadStrings("screenPositions.txt");
}

class Rectangle {
    float x1, x2, y1, y2, w, h;
    float r, g, b;

    Rectangle(float[] upperLeft, float[] bottomRight) {
        x1 = upperLeft[0];
        y1 = upperLeft[1];
        x2 = bottomRight[0];
        y2 = bottomRight[1];

        w = x2 - x1;
        h = y2 - y1;

        r = (float) Math.random() * 255;
        g = (float) Math.random() * 255;
        b = (float) Math.random() * 255;
    }

    void draw() {
        fill(r, g, b);
        rect(x1, y1, x2 - x1, y2 - y1);

        fill(0);
        text(Math.abs(w) + " x " + Math.abs(h), x1 + w / 2 - 40, y1 + h / 2);
    }

    void print(int i) {
        int regionNumber = i + 1;
        println("Region " + regionNumber + ": " + Math.abs(w) + " x " + Math.abs(h));
    }
}


void draw() {
    background(100);
    fill(255);
    text(pmouseX + " : " + pmouseY, pmouseX - 10, pmouseY + 10);

    for (int i = 0; i < screenRegions.size(); i++) {
        screenRegions.get(i).draw();
    }
    
    for (int j = 0; j < bectonScreens.size(); j++) {
        bectonScreens.get(j).draw();
    }

    // if the user is currently drawing a new rectangle
    if (state) {
        fill(243);
        rect(rectUpperLeft[0], rectUpperLeft[1], pmouseX - rectUpperLeft[0], pmouseY - rectUpperLeft[1]);
    }
}

void keyPressed() {
    // clear the previous rectangle
    if (key == 'd') {
        screenRegions.remove(screenRegions.size() - 1);

    // clear all drawn rectangles
    } else if (key == 'c') {
        screenRegions = new ArrayList<Rectangle>();

    // print and save the screen layout
    } else if (key == 'p') {
        for (int i = 0; i < screenRegions.size(); i++) {
            Rectangle r = screenRegions.get(i);
            r.print(i);
            
            output.println(r.x1 + ", " + r.x2 + ", " + r.y1 + ", " + r.y2);
        }
        output.flush();
        output.close();
 
        saveFrame("screen-layout.png");
        
    // generate map for becton cafe screen layout
    } else if (key == 'g') {
      for (int j = 0; j < lines.length; j++) {
        String[] coords = lines[j].split(", ", 4);
        
        rectUpperLeft[0] = parseInt(coords[0]);
        rectUpperLeft[1] = parseInt(coords[2]);
        rectBottomRight[0] = parseInt(coords[1]);
        rectBottomRight[1] = parseInt(coords[3]);
        
        bectonScreens.add(new Rectangle(rectUpperLeft, rectBottomRight));
      }
    }
}

void mousePressed() {
    if (state) {
        rectBottomRight[0] = pmouseX;
        rectBottomRight[1] = pmouseY;

        // add the new rectangle and reset the state
        screenRegions.add(new Rectangle(rectUpperLeft, rectBottomRight));

        state = false;
    } else {
        rectUpperLeft[0] = pmouseX;
        rectUpperLeft[1] = pmouseY;

        state = true;
    }
}
