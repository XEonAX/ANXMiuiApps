package com.miui.gallery.util.portJava;

import java.io.Serializable;

public class Polygon implements Serializable {
    private static final long serialVersionUID = -6460061437900069969L;
    protected Rectangle bounds;
    public int npoints;
    public int[] xpoints;
    public int[] ypoints;

    void calculateBounds(int[] xpoints, int[] ypoints, int npoints) {
        int boundsMinX = Integer.MAX_VALUE;
        int boundsMinY = Integer.MAX_VALUE;
        int boundsMaxX = Integer.MIN_VALUE;
        int boundsMaxY = Integer.MIN_VALUE;
        for (int i = 0; i < npoints; i++) {
            int x = xpoints[i];
            boundsMinX = Math.min(boundsMinX, x);
            boundsMaxX = Math.max(boundsMaxX, x);
            int y = ypoints[i];
            boundsMinY = Math.min(boundsMinY, y);
            boundsMaxY = Math.max(boundsMaxY, y);
        }
        this.bounds = new Rectangle(boundsMinX, boundsMinY, boundsMaxX - boundsMinX, boundsMaxY - boundsMinY);
    }

    @Deprecated
    public Rectangle getBoundingBox() {
        if (this.npoints == 0) {
            return new Rectangle();
        }
        if (this.bounds == null) {
            calculateBounds(this.xpoints, this.ypoints, this.npoints);
        }
        return this.bounds.getBounds();
    }

    public boolean contains(int x, int y) {
        return contains((double) x, (double) y);
    }

    public boolean contains(double x, double y) {
        if (this.npoints <= 2 || !getBoundingBox().contains(x, y)) {
            return false;
        }
        int hits = 0;
        int lastx = this.xpoints[this.npoints - 1];
        int lasty = this.ypoints[this.npoints - 1];
        for (int i = 0; i < this.npoints; i++) {
            int curx = this.xpoints[i];
            int cury = this.ypoints[i];
            if (cury != lasty) {
                int leftx;
                double test1;
                double test2;
                if (curx < lastx) {
                    if (x < ((double) lastx)) {
                        leftx = curx;
                    }
                } else if (x < ((double) curx)) {
                    leftx = lastx;
                }
                if (cury < lasty) {
                    if (y >= ((double) cury) && y < ((double) lasty)) {
                        if (x < ((double) leftx)) {
                            hits++;
                        } else {
                            test1 = x - ((double) curx);
                            test2 = y - ((double) cury);
                        }
                    }
                } else if (y >= ((double) lasty) && y < ((double) cury)) {
                    if (x < ((double) leftx)) {
                        hits++;
                    } else {
                        test1 = x - ((double) lastx);
                        test2 = y - ((double) lasty);
                    }
                }
                if (test1 < (test2 / ((double) (lasty - cury))) * ((double) (lastx - curx))) {
                    hits++;
                }
            }
            lastx = curx;
            lasty = cury;
        }
        return (hits & 1) != 0;
    }
}
