package com.xiaomi.recognizer;

import java.util.Arrays;

public class RecognizeResult {
    public float[] quadrangleCorners;
    public boolean resultValid = false;

    public String toString() {
        return "RecognizeResult{quadrangleCorners=" + Arrays.toString(this.quadrangleCorners) + ", resultValid=" + this.resultValid + '}';
    }
}
