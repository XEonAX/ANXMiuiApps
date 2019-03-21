package com.miui.gallery.util.portJava;

public abstract class Rectangle2D extends RectangularShape {
    protected Rectangle2D() {
    }

    public boolean contains(double x, double y) {
        double x0 = getX();
        double y0 = getY();
        return x >= x0 && y >= y0 && x < getWidth() + x0 && y < getHeight() + y0;
    }

    public int hashCode() {
        long bits = ((Double.doubleToLongBits(getX()) + (Double.doubleToLongBits(getY()) * 37)) + (Double.doubleToLongBits(getWidth()) * 43)) + (Double.doubleToLongBits(getHeight()) * 47);
        return ((int) bits) ^ ((int) (bits >> 32));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Rectangle2D)) {
            return false;
        }
        Rectangle2D r2d = (Rectangle2D) obj;
        if (getX() == r2d.getX() && getY() == r2d.getY() && getWidth() == r2d.getWidth() && getHeight() == r2d.getHeight()) {
            return true;
        }
        return false;
    }
}
