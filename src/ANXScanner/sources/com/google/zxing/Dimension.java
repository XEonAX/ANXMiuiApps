package com.google.zxing;

public final class Dimension {
    private final int height;
    private final int width;

    public Dimension(int width, int height) {
        if (width < 0 || height < 0) {
            throw new IllegalArgumentException();
        }
        this.width = width;
        this.height = height;
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public boolean equals(Object other) {
        if (!(other instanceof Dimension)) {
            return false;
        }
        Dimension d = (Dimension) other;
        if (this.width == d.width && this.height == d.height) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.width * 32713) + this.height;
    }

    public String toString() {
        return this.width + "x" + this.height;
    }
}
