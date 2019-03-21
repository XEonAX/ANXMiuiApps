package com.miui.gallery.util.portJava;

import java.io.Serializable;

public class Rectangle extends Rectangle2D implements Serializable {
    private static final long serialVersionUID = -4345857070255674764L;
    public int height;
    public int width;
    public int x;
    public int y;

    public Rectangle() {
        this(0, 0, 0, 0);
    }

    public Rectangle(int x, int y, int width, int height) {
        this.x = x;
        this.y = y;
        this.width = width;
        this.height = height;
    }

    public double getX() {
        return (double) this.x;
    }

    public double getY() {
        return (double) this.y;
    }

    public double getWidth() {
        return (double) this.width;
    }

    public double getHeight() {
        return (double) this.height;
    }

    public Rectangle getBounds() {
        return new Rectangle(this.x, this.y, this.width, this.height);
    }

    public boolean contains(int x, int y) {
        return inside(x, y);
    }

    @Deprecated
    public boolean inside(int X, int Y) {
        int w = this.width;
        int h = this.height;
        if ((w | h) < 0) {
            return false;
        }
        int x = this.x;
        int y = this.y;
        if (X < x || Y < y) {
            return false;
        }
        w += x;
        h += y;
        if (w >= x && w <= X) {
            return false;
        }
        if (h < y || h > Y) {
            return true;
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Rectangle)) {
            return super.equals(obj);
        }
        Rectangle r = (Rectangle) obj;
        return this.x == r.x && this.y == r.y && this.width == r.width && this.height == r.height;
    }

    public String toString() {
        return getClass().getName() + "[x=" + this.x + ",y=" + this.y + ",width=" + this.width + ",height=" + this.height + "]";
    }
}
