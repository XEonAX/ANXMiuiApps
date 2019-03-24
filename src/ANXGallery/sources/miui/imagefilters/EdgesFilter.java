package miui.imagefilters;

import java.lang.reflect.Array;
import miui.imagefilters.IImageFilter.AbstractImageFilter;

public class EdgesFilter extends AbstractImageFilter {
    public void processData(ImageData imgData) {
        int x;
        ImageData imageData = imgData;
        int width = imageData.width;
        int height = imageData.height;
        int[] pixels = imageData.pixels;
        float[] hsl = new float[3];
        int[][] luminance = (int[][]) Array.newInstance(int.class, new int[]{width, height});
        for (int y = 0; y < height; y++) {
            for (x = 0; x < width; x++) {
                luminance[x][y] = ImageFilterUtils.convertColorToGrayscale(pixels[(y * width) + x]);
            }
        }
        for (x = 1; x < height - 1; x++) {
            for (int x2 = 1; x2 < width - 1; x2++) {
                int colorIndex = (x * width) + x2;
                int magnitude = 255 - ImageFilterUtils.clamp(0, Math.abs((((((-luminance[x2 - 1][x - 1]) + luminance[x2 - 1][(x - 1) + 2]) - (luminance[(x2 - 1) + 1][x - 1] * 2)) + (luminance[(x2 - 1) + 1][(x - 1) + 2] * 2)) - luminance[(x2 - 1) + 2][x - 1]) + luminance[(x2 - 1) + 2][(x - 1) + 2]) + Math.abs(((((luminance[x2 - 1][x - 1] + (luminance[x2 - 1][(x - 1) + 1] * 2)) + luminance[x2 - 1][(x - 1) + 2]) - luminance[(x2 - 1) + 2][x - 1]) - (luminance[(x2 - 1) + 2][(x - 1) + 1] * 2)) - luminance[(x2 - 1) + 2][(x - 1) + 2]), 255);
                ImageFilterUtils.RgbToHsl(pixels[colorIndex], hsl);
                hsl[2] = ((float) magnitude) / 255.0f;
                pixels[colorIndex] = (16777215 & ImageFilterUtils.HslToRgb(hsl)) | (pixels[colorIndex] & -16777216);
            }
        }
    }
}
