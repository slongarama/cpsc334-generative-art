void setup() {
    fullScreen();
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

ArrayList<Rectangle> screenRegions = new ArrayList<Rectangle>();

boolean state = false;
float[] rectUpperLeft = {0, 0};
float[] rectBottomRight = {0, 0};

void draw() {
    background(100);
    fill(255);
    text(pmouseX + " : " + pmouseY, pmouseX - 10, pmouseY + 10);
    for (int i = 0; i < screenRegions.size(); i++) {
        screenRegions.get(i).draw();
    }

    if (state) {
        fill(243);
        rect(rectUpperLeft[0], rectUpperLeft[1], pmouseX - rectUpperLeft[0], pmouseY - rectUpperLeft[1]);
    }
}

void keyPressed() {
    if (key == 'd') {
        screenRegions.remove(screenRegions.size() - 1);
    } else if (key == 'c') {
        screenRegions = new ArrayList<Rectangle>();
    } else if (key == 'p') {
        for (int i = 0; i < screenRegions.size(); i++) {
            screenRegions.get(i).print(i);
        }
    }
}

void mousePressed() {
    if (state) {
        rectBottomRight[0] = pmouseX;
        rectBottomRight[1] = pmouseY;

        screenRegions.add(new Rectangle(rectUpperLeft, rectBottomRight));

        state = false;
    } else {
        rectUpperLeft[0] = pmouseX;
        rectUpperLeft[1] = pmouseY;

        state = true;
    }
}