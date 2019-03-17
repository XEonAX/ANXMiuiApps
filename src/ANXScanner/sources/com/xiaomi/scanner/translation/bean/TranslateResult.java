package com.xiaomi.scanner.translation.bean;

import android.graphics.Point;
import android.graphics.Rect;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.fastjson.asm.Opcodes;
import com.xiaomi.scanner.translation.TranslateModel;
import com.xiaomi.scanner.util.Util;
import java.util.ArrayList;
import java.util.List;

public class TranslateResult {
    public int resultCode;
    public int sequenceId;
    public TranslateResultInfo translationResult;

    public static class ColorInfo {
        List<Float> background;
        List<Float> font;
    }

    public static class LineInfo {
        public String boundingBox;
        public ColorInfo colorInfo;
        private float degree = -1.0f;
        private int height;
        private List<Point> position;
        private Rect rect;
        public String text;
        public String toText;

        public int getItemHeight() {
            return (int) (((float) this.height) * TranslateModel.getInstance().getScaleY());
        }

        public String getText() {
            return this.text;
        }

        public float degree(int oritation) {
            if (this.degree == -1.0f) {
                if (this.position != null && this.position.size() >= 2) {
                    Point p1;
                    Point p2;
                    if (oritation == 0 || oritation == Opcodes.GETFIELD) {
                        p1 = (Point) this.position.get(0);
                        p2 = (Point) this.position.get(1);
                        if (p1.y != p2.y) {
                            this.degree = ((float) (oritation == 0 ? 1 : -1)) * ((90.0f - ((float) ((Math.atan2((double) Math.abs(p2.x - p1.x), (double) Math.abs(p2.y - p1.y)) * 180.0d) / 3.141592653589793d))) * ((float) (p2.y > p1.y ? 1 : -1)));
                        }
                    } else if (oritation == 90 || oritation == 270) {
                        p1 = (Point) this.position.get(0);
                        p2 = (Point) this.position.get(1);
                        if (p1.x != p2.x) {
                            this.degree = ((float) (oritation == 90 ? 1 : -1)) * ((90.0f - ((float) ((Math.atan2((double) Math.abs(p2.y - p1.y), (double) Math.abs(p2.x - p1.x)) * 180.0d) / 3.141592653589793d))) * ((float) (p2.x > p1.x ? -1 : 1)));
                        }
                    }
                }
                if (this.degree == -1.0f) {
                    this.degree = 0.0f;
                }
            }
            return this.degree;
        }

        public List<Point> getPosition(int orientation) {
            if (this.position == null) {
                this.position = new ArrayList();
                if (this.boundingBox == null || this.boundingBox.length() <= 0) {
                    return this.position;
                }
                try {
                    String[] bounds = this.boundingBox.split(",");
                    if (bounds.length % 2 == 0 && bounds.length > 0) {
                        float scaleX = TranslateModel.getInstance().getScaleX();
                        float scaleY = TranslateModel.getInstance().getScaleY();
                        for (int i = 0; i < bounds.length; i += 2) {
                            int y;
                            int x;
                            if (orientation == 90) {
                                y = (int) (((float) Integer.parseInt(bounds[i])) * scaleY);
                                x = Util.screenWidth - ((int) (((float) Integer.parseInt(bounds[i + 1])) * scaleX));
                            } else if (orientation == 270) {
                                y = (int) (TranslateModel.getInstance().getTranslateImageRealHeight() - ((float) ((int) (((float) Integer.parseInt(bounds[i])) * scaleY))));
                                x = (int) (((float) Integer.parseInt(bounds[i + 1])) * scaleX);
                            } else if (orientation == Opcodes.GETFIELD) {
                                x = Util.screenWidth - ((int) (((float) Integer.parseInt(bounds[i])) * scaleX));
                                y = (int) (TranslateModel.getInstance().getTranslateImageRealHeight() - (((float) Integer.parseInt(bounds[i + 1])) * scaleY));
                            } else {
                                x = (int) (((float) Integer.parseInt(bounds[i])) * scaleX);
                                y = (int) (((float) Integer.parseInt(bounds[i + 1])) * scaleY);
                            }
                            this.position.add(new Point(x, y));
                        }
                    }
                } catch (Throwable e) {
                    Log.e("TranslateResult", "getPosition error = " + e);
                }
            }
            return this.position;
        }

        public int getBgColor() {
            if (this.colorInfo == null || this.colorInfo.background == null || this.colorInfo.background.size() < 3) {
                return -1;
            }
            List<Float> background = this.colorInfo.background;
            return ((int) ((((Float) background.get(2)).floatValue() * 255.0f) / 255.0f)) | ((ViewCompat.MEASURED_STATE_MASK | (((int) ((((Float) background.get(0)).floatValue() * 255.0f) / 255.0f)) << 16)) | (((int) ((((Float) background.get(1)).floatValue() * 255.0f) / 255.0f)) << 8));
        }

        public int getTextColor() {
            if (this.colorInfo == null || this.colorInfo.font == null || this.colorInfo.font.size() < 3) {
                return ViewCompat.MEASURED_STATE_MASK;
            }
            List<Float> font = this.colorInfo.font;
            return ((int) ((((Float) font.get(2)).floatValue() * 255.0f) / 255.0f)) | ((ViewCompat.MEASURED_STATE_MASK | (((int) ((((Float) font.get(0)).floatValue() * 255.0f) / 255.0f)) << 16)) | (((int) ((((Float) font.get(1)).floatValue() * 255.0f) / 255.0f)) << 8));
        }

        public Rect rect(int orientation) {
            if (this.rect == null) {
                List<Point> points = getPosition(orientation);
                if (orientation == 90) {
                    this.rect = getOrientation90(points);
                } else if (orientation == 270) {
                    this.rect = getOrientation270(points);
                } else if (orientation == Opcodes.GETFIELD) {
                    this.rect = getOrientation180(points);
                } else {
                    this.rect = getOrientationOther(points);
                }
            }
            return this.rect;
        }

        private Rect getOrientation180(List<Point> points) {
            Rect rect = new Rect();
            if (points.size() == 4) {
                rect.left = ((Point) points.get(0)).x;
                rect.top = ((Point) points.get(0)).y;
                rect.right = ((Point) points.get(0)).x;
                rect.bottom = ((Point) points.get(0)).y;
                for (Point point : points) {
                    rect.left = Math.min(point.x, rect.left);
                    rect.top = Math.min(point.y, rect.top);
                }
                Point info0 = (Point) points.get(0);
                Point info3 = (Point) points.get(3);
                if (info0.y != ((Point) points.get(1)).y) {
                    rect.top = rect.bottom - ((int) Math.sqrt(Math.pow((double) (info0.x - info3.x), 2.0d) + Math.pow((double) (info0.y - info3.y), 2.0d)));
                }
            }
            return rect;
        }

        private Rect getOrientationOther(List<Point> points) {
            Rect rect = new Rect();
            if (points.size() == 4) {
                rect.left = ((Point) points.get(0)).x;
                rect.top = ((Point) points.get(0)).y;
                rect.right = ((Point) points.get(0)).x;
                rect.bottom = ((Point) points.get(0)).y;
                for (Point point : points) {
                    rect.right = Math.max(point.x, rect.right);
                    rect.bottom = Math.max(point.y, rect.bottom);
                }
                Point info0 = (Point) points.get(0);
                Point info3 = (Point) points.get(3);
                if (info0.y != ((Point) points.get(1)).y) {
                    rect.bottom = rect.top + ((int) Math.sqrt(Math.pow((double) (info0.x - info3.x), 2.0d) + Math.pow((double) (info0.y - info3.y), 2.0d)));
                }
            }
            return rect;
        }

        private Rect getOrientation270(List<Point> points) {
            Rect rect = new Rect();
            if (points.size() == 4) {
                rect.left = ((Point) points.get(0)).x;
                rect.top = ((Point) points.get(0)).y;
                rect.right = ((Point) points.get(0)).x;
                rect.bottom = ((Point) points.get(0)).y;
                for (Point point : points) {
                    rect.right = Math.max(point.x, rect.right);
                    rect.top = Math.min(point.y, rect.top);
                }
                Point info0 = (Point) points.get(0);
                Point info3 = (Point) points.get(3);
                if (info0.x != ((Point) points.get(1)).x) {
                    rect.right = rect.left + ((int) Math.sqrt(Math.pow((double) (info0.x - info3.x), 2.0d) + Math.pow((double) (info0.y - info3.y), 2.0d)));
                }
            }
            return rect;
        }

        private Rect getOrientation90(List<Point> points) {
            Rect rect = new Rect();
            if (points.size() == 4) {
                rect.left = ((Point) points.get(0)).x;
                rect.top = ((Point) points.get(0)).y;
                rect.right = ((Point) points.get(0)).x;
                rect.bottom = ((Point) points.get(0)).y;
                for (Point point : points) {
                    rect.left = Math.min(point.x, rect.left);
                    rect.bottom = Math.max(point.y, rect.bottom);
                }
                Point info0 = (Point) points.get(0);
                Point info3 = (Point) points.get(3);
                if (info0.x != ((Point) points.get(1)).x) {
                    rect.left = rect.right - ((int) Math.sqrt(Math.pow((double) (info0.x - info3.x), 2.0d) + Math.pow((double) (info0.y - info3.y), 2.0d)));
                }
            }
            return rect;
        }
    }

    public static class TranslateResultInfo {
        public String backgroundImageUrl;
        public String language;
        public List<LineInfo> lines;
        public String orientation;
        public String to;
    }

    public int getDegree() {
        if (this.translationResult == null || TextUtils.isEmpty(this.translationResult.orientation)) {
            return 0;
        }
        String str = this.translationResult.orientation;
        int i = -1;
        switch (str.hashCode()) {
            case 2747:
                if (str.equals("Up")) {
                    i = 0;
                    break;
                }
                break;
            case 2136258:
                if (str.equals("Down")) {
                    i = 1;
                    break;
                }
                break;
            case 2364455:
                if (str.equals("Left")) {
                    i = 2;
                    break;
                }
                break;
            case 78959100:
                if (str.equals("Right")) {
                    i = 3;
                    break;
                }
                break;
        }
        switch (i) {
            case 0:
                return Opcodes.GETFIELD;
            case 2:
                return 90;
            case 3:
                return 270;
            default:
                return 0;
        }
    }

    public List<LineInfo> getLineInfos() {
        List<LineInfo> lines = null;
        if (this.translationResult != null) {
            lines = this.translationResult.lines;
        }
        if (lines == null) {
            return new ArrayList();
        }
        return lines;
    }

    public String getToLang() {
        if (this.translationResult != null) {
            return this.translationResult.to;
        }
        return "";
    }
}
