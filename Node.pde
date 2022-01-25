class Node {
    PVector pos = new PVector(0,0);
    PVector acc = new PVector(0,0);
    PVector vel = new PVector(0,0);
    
    boolean lock = false;

    Node(float x, float y)  {
        pos.x = x;
        pos.y = y;
    }
    
    void applyForce(PVector force) {
        this.acc = force;
    }
    
    void edges() {
        if(this.pos.y >= displayHeight) {
            this.pos.y = height;
            this.vel.y *= -1;
        } else if(this.pos.x >= displayWidth) {
            this.pos.x = displayWidth;
            this.vel.x *= -1;
        }
    //hello
        
    }
    void update() {
        this.vel.add(acc);
        this.pos.add(vel);
    }

    void show() {
        fill(200);
        rect(pos.x,pos.y,10,10);
    }
}