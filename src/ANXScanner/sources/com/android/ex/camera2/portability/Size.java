package com.android.ex.camera2.portability;

import android.graphics.Point;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

public class Size {
    public static final String DELIMITER = ",";
    private final Point val;

    public static List<Size> buildListFromCameraSizes(List<android.hardware.Camera.Size> cameraSizes) {
        ArrayList<Size> list = new ArrayList(cameraSizes.size());
        for (android.hardware.Camera.Size cameraSize : cameraSizes) {
            list.add(new Size(cameraSize));
        }
        return list;
    }

    public static String listToString(List<Size> sizes) {
        ArrayList<Integer> flatSizes = new ArrayList();
        for (Size s : sizes) {
            flatSizes.add(Integer.valueOf(s.width()));
            flatSizes.add(Integer.valueOf(s.height()));
        }
        return TextUtils.join(",", flatSizes);
    }

    public static List<Size> stringToList(String encodedSizes) {
        String[] flatSizes = TextUtils.split(encodedSizes, ",");
        ArrayList<Size> list = new ArrayList();
        for (int i = 0; i < flatSizes.length; i += 2) {
            list.add(new Size(Integer.parseInt(flatSizes[i]), Integer.parseInt(flatSizes[i + 1])));
        }
        return list;
    }

    public Size(int width, int height) {
        this.val = new Point(width, height);
    }

    public Size(Size other) {
        if (other == null) {
            this.val = new Point(0, 0);
        } else {
            this.val = new Point(other.width(), other.height());
        }
    }

    public Size(android.hardware.Camera.Size other) {
        if (other == null) {
            this.val = new Point(0, 0);
        } else {
            this.val = new Point(other.width, other.height);
        }
    }

    public Size(Point p) {
        if (p == null) {
            this.val = new Point(0, 0);
        } else {
            this.val = new Point(p);
        }
    }

    public int width() {
        return this.val.x;
    }

    public int height() {
        return this.val.y;
    }

    public boolean equals(Object o) {
        if (!(o instanceof Size)) {
            return false;
        }
        return this.val.equals(((Size) o).val);
    }

    public int hashCode() {
        return this.val.hashCode();
    }

    public String toString() {
        return "Size: (" + width() + " x " + height() + ")";
    }
}
