package com.miui.gallery.util;

public class Gauss {
    private final double mCoefficient;
    private final double mExpDiv;
    private final double mMean;
    private final double mVariance;

    public Gauss(double mean, double variance) {
        if (variance < 0.0d) {
            throw new IllegalArgumentException("variance can't be negative");
        }
        this.mMean = mean;
        this.mVariance = variance;
        this.mCoefficient = 1.0d / Math.sqrt((2.0d * variance) * 3.141592653589793d);
        this.mExpDiv = 2.0d * variance;
    }

    double value(double x) {
        return this.mCoefficient * Math.exp((-Math.pow(x - this.mMean, 2.0d)) / this.mExpDiv);
    }
}
