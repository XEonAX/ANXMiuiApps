package com.miui.gallery.assistant.jni.score;

public class QualityScore {
    private double iqaBala;
    private double iqaBlur;
    private double iqaBlurType;
    private double iqaComp;
    private double iqaExpo;
    private double iqaHaze;
    private double iqaNima;
    private double iqaNois;
    private double iqaSatu;

    public QualityScore(double[] iqaScore) {
        if (iqaScore != null && iqaScore.length >= 9) {
            this.iqaExpo = iqaScore[0];
            this.iqaSatu = iqaScore[1];
            this.iqaBala = iqaScore[2];
            this.iqaHaze = iqaScore[3];
            this.iqaNois = iqaScore[4];
            this.iqaBlur = iqaScore[5];
            this.iqaComp = iqaScore[6];
            this.iqaNima = iqaScore[7];
            this.iqaBlurType = iqaScore[8];
        }
    }

    public double getIqaExpo() {
        return this.iqaExpo;
    }

    public double getIqaSatu() {
        return this.iqaSatu;
    }

    public double getIqaBala() {
        return this.iqaBala;
    }

    public double getIqaHaze() {
        return this.iqaHaze;
    }

    public double getIqaNois() {
        return this.iqaNois;
    }

    public double getIqaBlur() {
        return this.iqaBlur;
    }

    public double getIqaComp() {
        return this.iqaComp;
    }

    public double getIqaNima() {
        return this.iqaNima;
    }

    public double getIqaBlurType() {
        return this.iqaBlurType;
    }
}
