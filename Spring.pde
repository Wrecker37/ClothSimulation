class Spring {
    Node startNode = new Node(0,0);
    Node endNode = new Node(0,0);
    PVector start = new PVector(0,0);
    PVector end = new PVector(0,0);

    float restlength = dist(start.x,start.y,end.x,end.y);
    float deltaLength = dist(start.x,start.y,end.x,end.y) - restlength;
    float k = .25;

    float springForce = -k*(deltaLength);

    //Node A,B;
    Spring(Node A, Node B) {
        startNode = A;
        endNode = B;

        start.x = startNode.pos.x;
        start.y = startNode.pos.y;
        end.x = endNode.pos.x;
        end.y = endNode.pos.y;
    }

    Spring(float x1, float y1, float x2, float y2) {
        start.x = x1;
        start.y = y1;
        end.x = x2;
        end.y = y2;
    }

    void update() {
        // this.vel.add(acc);
        // this.start.add(vel);
        // this.end.add(vel);
        //hello

        start.x = startNode.pos.x;
        start.y = startNode.pos.y;
        end.x = endNode.pos.x;
        end.y = endNode.pos.y;
    }

    void show() {
        stroke(255);
        strokeWeight(3);
        line(start.x,start.y,end.x,end.y);
    }
}