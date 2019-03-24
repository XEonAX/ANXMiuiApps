package miui.imagefilters;

import miui.imagefilters.IImageFilter.AbstractImageFilter;

public class HslWrapFilter extends AbstractImageFilter {
    private HslFilter mHsl;
    private HslFilter mHsv;

    private void ensureHsl() {
        if (this.mHsl == null) {
            this.mHsl = new HslFilter();
            this.mHsl.useHsv = false;
        }
    }

    private void ensureHsv() {
        if (this.mHsv == null) {
            this.mHsv = new HslFilter();
            this.mHsv.useHsv = true;
        }
    }

    public void setHueModify(float hue) {
        ensureHsl();
        this.mHsl.setHueModify(hue);
    }

    public void setSaturationModify(float saturation) {
        ensureHsl();
        this.mHsl.setSaturationModify(saturation);
    }

    public void setLightnessModify(float lightness) {
        if (lightness > 0.0f) {
            ensureHsl();
            this.mHsl.setLightnessModify(lightness);
            return;
        }
        ensureHsv();
        this.mHsv.setLightnessModify(lightness);
    }

    public void setHueAdjust(float hue) {
        ensureHsl();
        this.mHsl.setHueAdjust(hue);
    }

    public void setSaturationAdjust(float saturation) {
        ensureHsl();
        this.mHsl.setSaturationAdjust(saturation);
    }

    public void setLightnessAdjust(float lightness) {
        if (lightness > 0.0f) {
            ensureHsl();
            this.mHsl.setLightnessAdjust(lightness);
            return;
        }
        ensureHsv();
        this.mHsv.setLightnessAdjust(lightness);
    }

    public void processData(ImageData imgData) {
        if (this.mHsl != null) {
            this.mHsl.process(imgData);
        }
        if (this.mHsv != null) {
            this.mHsv.process(imgData);
        }
    }
}
