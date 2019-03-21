package com.miui.gallery.util.portJava;

public abstract class RectangularShape implements Cloneable {
    public abstract double getHeight();

    public abstract double getWidth();

    public abstract double getX();

    public abstract double getY();

    protected RectangularShape() {
    }

    public Rectangle getBounds() {
        double width = getWidth();
        double height = getHeight();
        if (width < 0.0d || height < 0.0d) {
            return new Rectangle();
        }
        double x = getX();
        double y = getY();
        double x1 = Math.floor(x);
        double y1 = Math.floor(y);
        return new Rectangle((int) x1, (int) y1, (int) (Math.ceil(x + width) - x1), (int) (Math.ceil(y + height) - y1));
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            throw new InternalError();
        }
    }
}
