package com.nexstreaming.app.common.nexasset.overlay;

import android.util.Xml;
import com.nexstreaming.app.common.util.b;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class OverlaySpec {
    public int duration;
    public int fps;
    public int height;
    public List<Layer> layers;
    public int minFps;
    public int width;

    public enum AnimDirection {
        NORMAL,
        REVERSE,
        ALTERNATE,
        ALTERNATE_REVERSE
    }

    public static class Frame {
        public boolean blank;
        public int hold;
        public String src;
    }

    public static class Layer {
        public AnimDirection direction;
        public int duration;
        public List<Frame> frames;
        public int iterationCount;
    }

    public static OverlaySpec fromInputStream(InputStream inputStream) throws XmlPullParserException, IOException {
        try {
            XmlPullParser newPullParser = Xml.newPullParser();
            newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
            newPullParser.setInput(inputStream, null);
            newPullParser.nextTag();
            OverlaySpec parseSpec = parseSpec(newPullParser);
            return parseSpec;
        } finally {
            b.a(inputStream);
        }
    }

    private static OverlaySpec parseSpec(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "overlay");
        OverlaySpec overlaySpec = new OverlaySpec();
        overlaySpec.width = parseInt(xmlPullParser.getAttributeValue(null, nexExportFormat.TAG_FORMAT_WIDTH), -1);
        overlaySpec.height = parseInt(xmlPullParser.getAttributeValue(null, nexExportFormat.TAG_FORMAT_HEIGHT), -1);
        overlaySpec.fps = parseInt(xmlPullParser.getAttributeValue(null, "fps"), 15);
        overlaySpec.minFps = parseInt(xmlPullParser.getAttributeValue(null, "min-fps"), overlaySpec.fps);
        overlaySpec.duration = parseInt(xmlPullParser.getAttributeValue(null, "duration"), -1);
        overlaySpec.layers = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equalsIgnoreCase("layer")) {
                    Layer parseLayer = parseLayer(xmlPullParser);
                    if (parseLayer != null) {
                        overlaySpec.layers.add(parseLayer);
                    }
                } else {
                    skip(xmlPullParser);
                }
            }
        }
        return overlaySpec;
    }

    private static Layer parseLayer(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "layer");
        Layer layer = new Layer();
        layer.iterationCount = parseInt(xmlPullParser.getAttributeValue(null, "iteration-count"), -1);
        String attributeValue = xmlPullParser.getAttributeValue(null, "direction");
        if (attributeValue != null) {
            if ("normal".equalsIgnoreCase(attributeValue)) {
                layer.direction = AnimDirection.NORMAL;
            } else if ("reverse".equalsIgnoreCase(attributeValue)) {
                layer.direction = AnimDirection.REVERSE;
            } else if ("alternate".equalsIgnoreCase(attributeValue)) {
                layer.direction = AnimDirection.ALTERNATE;
            } else if ("alternate-reverse".equalsIgnoreCase(attributeValue)) {
                layer.direction = AnimDirection.ALTERNATE_REVERSE;
            } else {
                throw new XmlPullParserException("Unrecognized direction: " + attributeValue, xmlPullParser, null);
            }
        }
        layer.frames = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equalsIgnoreCase("frame")) {
                    Frame parseFrame = parseFrame(xmlPullParser);
                    if (parseFrame != null) {
                        layer.frames.add(parseFrame);
                        layer.duration = parseFrame.hold + layer.duration;
                    }
                } else {
                    skip(xmlPullParser);
                }
            }
        }
        return layer;
    }

    private static Frame parseFrame(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "frame");
        Frame frame = new Frame();
        frame.src = xmlPullParser.getAttributeValue(null, "src");
        frame.blank = parseBoolean(xmlPullParser.getAttributeValue(null, "blank"), false);
        frame.hold = Math.max(1, parseInt(xmlPullParser.getAttributeValue(null, "hold"), 1));
        skip(xmlPullParser);
        return frame;
    }

    private static void skip(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        if (xmlPullParser.getEventType() != 2) {
            throw new IllegalStateException();
        }
        int i = 1;
        while (i != 0) {
            switch (xmlPullParser.next()) {
                case 2:
                    i++;
                    break;
                case 3:
                    i--;
                    break;
                default:
                    break;
            }
        }
    }

    private static int parseInt(String str, int i) {
        if (str == null) {
            return i;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            return i;
        }
    }

    private static boolean parseBoolean(String str, boolean z) {
        if (str == null) {
            return z;
        }
        if (str.equalsIgnoreCase("true")) {
            return true;
        }
        if (str.equalsIgnoreCase("false")) {
            return false;
        }
        return z;
    }
}
