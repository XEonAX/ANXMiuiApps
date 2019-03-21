package com.nexstreaming.nexeditorsdk;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Paint.Align;
import android.util.Log;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.AnticipateOvershootInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.CycleInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import com.nexstreaming.app.common.nexasset.assetpackage.ItemCategory;
import com.nexstreaming.app.common.nexasset.assetpackage.ItemType;
import com.nexstreaming.app.common.nexasset.assetpackage.c;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.app.common.util.q;
import com.nexstreaming.nexeditorsdk.nexAnimate.MoveTrackingPath;
import com.nexstreaming.nexeditorsdk.nexOverlayImage.runTimeMakeBitMap;
import com.nexstreaming.nexeditorsdk.nexOverlayManager.nexTitleInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class nexOverlayTitle {
    private static String a = "nexOverlayTitle";
    private String b;
    private String c;
    private String d;
    private String e;
    private Priority f = Priority.NONE;
    private ArrayList<HashMap<String, String>> g = new ArrayList();
    private int h = 0;

    public interface TitleInfoListener {
        void OnTitleInfoListener(int i, String str, int i2, String str2, int i3, String str3, String str4, int i4, int i5);
    }

    private enum Priority {
        NONE,
        START,
        END,
        START_END
    }

    private boolean a(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        try {
            this.b = jSONObject.getString("overlay_name");
            this.c = jSONObject.getString("overlay_version");
            this.d = jSONObject.getString("overlay_desc");
            this.e = jSONObject.getString("overlay_priority");
            return true;
        } catch (JSONException e) {
            e.printStackTrace();
            Log.d(a, "pasrse Overlay info failed : " + e.getMessage());
            return false;
        }
    }

    private String b(JSONObject jSONObject, TitleInfoListener titleInfoListener) {
        int i = 0;
        try {
            HashMap hashMap = new HashMap();
            Log.d(a, "pasrse Overlay : " + jSONObject.toString());
            hashMap.put("id", "" + this.h);
            hashMap.put(nexExportFormat.TAG_FORMAT_TYPE, jSONObject.getString(nexExportFormat.TAG_FORMAT_TYPE));
            if (jSONObject.has("text")) {
                hashMap.put("text", jSONObject.getString("text"));
            }
            if (jSONObject.has("text_desc")) {
                hashMap.put("text_desc", jSONObject.getString("text_desc"));
            }
            if (jSONObject.has("text_max_len")) {
                hashMap.put("text_max_len", jSONObject.getString("text_max_len"));
            }
            if (jSONObject.has("position")) {
                hashMap.put("position", jSONObject.getString("position"));
            }
            if (jSONObject.has("start_time")) {
                hashMap.put("start_time", jSONObject.getString("start_time"));
            }
            if (jSONObject.has("duration")) {
                hashMap.put("duration", jSONObject.getString("duration"));
            }
            if (jSONObject.has("font")) {
                hashMap.put("font", jSONObject.getString("font"));
            }
            if (jSONObject.has("font_size")) {
                hashMap.put("font_size", jSONObject.getString("font_size"));
            }
            if (jSONObject.has("text_color")) {
                hashMap.put("text_color", jSONObject.getString("text_color"));
            }
            if (jSONObject.has("shadow_color")) {
                hashMap.put("shadow_color", jSONObject.getString("shadow_color"));
            }
            if (jSONObject.has("shadow_visible")) {
                hashMap.put("shadow_visible", jSONObject.getString("shadow_visible"));
            }
            if (jSONObject.has("glow_color")) {
                hashMap.put("glow_color", jSONObject.getString("glow_color"));
            }
            if (jSONObject.has("glow_visible")) {
                hashMap.put("glow_visible", jSONObject.getString("glow_visible"));
            }
            if (jSONObject.has("outline_color")) {
                hashMap.put("outline_color", jSONObject.getString("outline_color"));
            }
            if (jSONObject.has("outline_visible")) {
                hashMap.put("outline_visible", jSONObject.getString("outline_visible"));
            }
            if (jSONObject.has("align")) {
                hashMap.put("align", jSONObject.getString("align"));
            }
            if (jSONObject.has("animation")) {
                hashMap.put("animation", jSONObject.getString("animation"));
            }
            if (jSONObject.has("adjust_animation_non_sub")) {
                hashMap.put("adjust_animation_non_sub", jSONObject.getString("adjust_animation_non_sub"));
            }
            if (jSONObject.has("rotate")) {
                hashMap.put("rotate", jSONObject.getString("rotate"));
            }
            if (jSONObject.has("scale")) {
                hashMap.put("scale", jSONObject.getString("scale"));
            }
            if (jSONObject.has("group")) {
                hashMap.put("group", jSONObject.getString("group"));
            }
            if (jSONObject.has("adjust_pos_non_sub")) {
                hashMap.put("adjust_pos_non_sub", jSONObject.getString("adjust_pos_non_sub"));
            }
            if (jSONObject.has("adjust_align_non_sub")) {
                hashMap.put("adjust_align_non_sub", jSONObject.getString("adjust_align_non_sub"));
            }
            if (jSONObject.has("image_res")) {
                hashMap.put("image_res", jSONObject.getString("image_res"));
            }
            if (jSONObject.getString("start_time").equals("0")) {
                if (this.f != Priority.START_END) {
                    if (this.f == Priority.END) {
                        this.f = Priority.START_END;
                    } else {
                        this.f = Priority.START;
                    }
                }
            } else if (jSONObject.getString("start_time").equals("-1") && this.f != Priority.START_END) {
                if (this.f == Priority.START) {
                    this.f = Priority.START_END;
                } else {
                    this.f = Priority.END;
                }
            }
            if (titleInfoListener != null && hashMap.containsKey("text")) {
                int parseInt;
                String string = jSONObject.getString("font");
                String string2 = jSONObject.getString("text");
                String string3 = jSONObject.getString("text_desc");
                String string4 = jSONObject.has("group") ? jSONObject.getString("group") : "";
                int parseInt2 = Integer.parseInt(jSONObject.getString("text_max_len"));
                int parseInt3 = Integer.parseInt(jSONObject.getString("font_size"));
                if (jSONObject.has("position")) {
                    String[] split = ((String) hashMap.get("position")).replace(" ", "").split(",");
                    if (split != null) {
                        int parseInt4 = Integer.parseInt(split[0]);
                        i = Integer.parseInt(split[2]) - parseInt4;
                        parseInt = Integer.parseInt(split[3]) - Integer.parseInt(split[1]);
                        titleInfoListener.OnTitleInfoListener(this.h, string, parseInt3, string2, parseInt2, string3, string4, i, parseInt);
                    }
                }
                parseInt = parseInt3;
                titleInfoListener.OnTitleInfoListener(this.h, string, parseInt3, string2, parseInt2, string3, string4, i, parseInt);
            }
            this.h++;
            this.g.add(hashMap);
            return null;
        } catch (JSONException e) {
            e.printStackTrace();
            return e.getMessage();
        }
    }

    public String a(JSONObject jSONObject, TitleInfoListener titleInfoListener) {
        if (!a(jSONObject)) {
            return "parseOverlayAssetInfo parse error";
        }
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("overlay");
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < jSONArray.length()) {
                    String b = b(jSONArray.getJSONObject(i2), titleInfoListener);
                    if (b != null) {
                        this.g.clear();
                        Log.d(a, "Overlay parse error : " + b);
                        return b;
                    }
                    i = i2 + 1;
                } else {
                    Log.d(a, "parseOverlayAsset end");
                    return null;
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
            this.g.clear();
            Log.d(a, "parseOverlayAsset failed" + e.getMessage());
            return e.getMessage();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:37:0x012c  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0121  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0117  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0136  */
    /* JADX WARNING: Removed duplicated region for block: B:102:0x0391  */
    /* JADX WARNING: Removed duplicated region for block: B:118:0x0458  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x011b  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x009d  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x012c  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0121  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0117  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0136  */
    /* JADX WARNING: Removed duplicated region for block: B:102:0x0391  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x011b  */
    /* JADX WARNING: Removed duplicated region for block: B:118:0x0458  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x009d  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x012c  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0121  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0117  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0136  */
    /* JADX WARNING: Removed duplicated region for block: B:102:0x0391  */
    /* JADX WARNING: Removed duplicated region for block: B:118:0x0458  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x011b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public String a(Context context, nexProject nexproject, List<nexTitleInfo> list) {
        a(nexproject);
        Priority b = b(nexproject);
        boolean z = false;
        Iterator it = this.g.iterator();
        int i = 0;
        String str = null;
        int i2 = 0;
        while (it.hasNext()) {
            boolean a;
            int parseInt;
            int i3;
            String str2;
            Object obj;
            nexOverlayItem nexoverlayitem;
            HashMap hashMap = (HashMap) it.next();
            String str3 = (String) hashMap.get(nexExportFormat.TAG_FORMAT_TYPE);
            if (str3.equals("title") && hashMap.containsKey("group") && ((String) hashMap.get("group")).endsWith("_1")) {
                String str4;
                String[] split;
                if (str == null) {
                    str4 = (String) hashMap.get("group");
                    a = a((List) list, str4);
                    if (a && hashMap.containsKey("adjust_pos_non_sub")) {
                        split = ((String) hashMap.get("adjust_pos_non_sub")).replace(" ", "").split(",");
                        i = Integer.parseInt(split[0]);
                        parseInt = Integer.parseInt(split[1]);
                        i3 = i;
                        str2 = str4;
                        if (!a && hashMap.containsKey("group") && ((String) hashMap.get("group")).endsWith("_2")) {
                            i2 = parseInt;
                            i = i3;
                            z = a;
                            str = str2;
                        } else {
                            String str5;
                            int parseInt2;
                            int parseInt3;
                            int i4;
                            int parseInt4;
                            obj = -1;
                            switch (str3.hashCode()) {
                                case 100313435:
                                    if (str3.equals("image")) {
                                        obj = 1;
                                        break;
                                    }
                                    break;
                                case 110371416:
                                    if (str3.equals("title")) {
                                        obj = null;
                                        break;
                                    }
                                    break;
                            }
                            int parseInt5;
                            int i5;
                            switch (obj) {
                                case null:
                                    int parseInt6 = Integer.parseInt((String) hashMap.get("id"));
                                    str5 = (String) hashMap.get("text");
                                    Integer.parseInt((String) hashMap.get("text_max_len"));
                                    String[] split2 = ((String) hashMap.get("position")).replace(" ", "").split(",");
                                    if (split2 == null) {
                                        return "Wrong position data of title";
                                    }
                                    parseInt5 = Integer.parseInt(split2[0]);
                                    i = Integer.parseInt(split2[1]);
                                    i2 = Integer.parseInt(split2[2]);
                                    parseInt2 = Integer.parseInt(split2[3]);
                                    int i6 = (parseInt5 + i2) / 2;
                                    int i7 = (i + parseInt2) / 2;
                                    i2 -= parseInt5;
                                    i = parseInt2 - i;
                                    int parseInt7 = Integer.parseInt((String) hashMap.get("start_time"));
                                    parseInt3 = Integer.parseInt((String) hashMap.get("duration"));
                                    if ((b != Priority.START || parseInt7 >= 0) && (b != Priority.END || parseInt7 < 0)) {
                                        Object obj2;
                                        Align align;
                                        int i8;
                                        String a2 = a(parseInt6, (List) list, (String) hashMap.get("font"));
                                        parseInt5 = a(parseInt6, (List) list, Integer.parseInt((String) hashMap.get("font_size")));
                                        int parseColor = Color.parseColor((String) hashMap.get("text_color"));
                                        if (parseInt5 > i) {
                                            parseInt5 = i - 4;
                                        }
                                        Object obj3 = Integer.parseInt((String) hashMap.get("shadow_visible")) == 1 ? 1 : null;
                                        int parseColor2 = Color.parseColor((String) hashMap.get("shadow_color"));
                                        Object obj4 = Integer.parseInt((String) hashMap.get("glow_visible")) == 1 ? 1 : null;
                                        int parseColor3 = Color.parseColor((String) hashMap.get("glow_color"));
                                        if (Integer.parseInt((String) hashMap.get("outline_visible")) == 1) {
                                            obj2 = 1;
                                        } else {
                                            obj2 = null;
                                        }
                                        int parseColor4 = Color.parseColor((String) hashMap.get("outline_color"));
                                        str3 = (String) hashMap.get("align");
                                        if (a && hashMap.containsKey("adjust_align_non_sub")) {
                                            str3 = (String) hashMap.get("adjust_align_non_sub");
                                        }
                                        Align align2 = Align.CENTER;
                                        if (str3.contains("LEFT")) {
                                            align = Align.LEFT;
                                        } else if (str3.contains("RIGHT")) {
                                            align = Align.RIGHT;
                                        } else {
                                            align = align2;
                                        }
                                        i4 = 1;
                                        if (str3.contains("MIDDLE")) {
                                            i4 = 2;
                                        } else if (str3.contains("BOTTOM")) {
                                            i4 = 3;
                                        }
                                        if (a) {
                                            str5 = a(str2, (List) list);
                                            i5 = i6 + i3;
                                            parseInt2 = i7 + parseInt;
                                            i7 = a(str2, (List) list, parseInt5);
                                            i6 = parseInt2;
                                            i8 = i5;
                                            str4 = str5;
                                        } else {
                                            i8 = i6;
                                            i6 = i7;
                                            i7 = parseInt5;
                                            str4 = b(parseInt6, list, str5);
                                        }
                                        if (str4 == null) {
                                            i2 = parseInt;
                                            i = i3;
                                            z = a;
                                            str = str2;
                                            break;
                                        } else if (str4.length() <= 0) {
                                            i2 = parseInt;
                                            i = i3;
                                            z = a;
                                            str = str2;
                                            break;
                                        } else {
                                            if (parseInt7 < 0) {
                                                if (nexproject.getTotalTime() < parseInt3) {
                                                    parseInt3 = nexproject.getTotalTime();
                                                    parseInt7 = 0;
                                                } else {
                                                    parseInt7 = nexproject.getTotalTime() - parseInt3;
                                                }
                                            }
                                            runTimeMakeBitMap qVar = new q(context, str4, i2, i, 1.0f);
                                            nexOverlayItem nexoverlayitem2 = new nexOverlayItem(new nexOverlayImage("" + parseInt6, qVar), i8, i6, parseInt7, parseInt3 + parseInt7);
                                            qVar.a((float) i7, parseColor, align, a2, i4);
                                            if (obj3 != null) {
                                                qVar.a(true, parseColor2, 5.0f, 3.0f, 3.0f);
                                            }
                                            if (obj4 != null) {
                                                qVar.b(true, parseColor3, 8.0f);
                                            }
                                            if (obj2 != null) {
                                                qVar.a(true, parseColor4, 1.0f);
                                            }
                                            qVar.a(nexoverlayitem2.getId());
                                            nexoverlayitem = nexoverlayitem2;
                                        }
                                    } else {
                                        Log.d(a, String.format("Apply title skip(%s %d)", new Object[]{b.name(), Integer.valueOf(parseInt7)}));
                                        i2 = parseInt;
                                        i = i3;
                                        z = a;
                                        str = str2;
                                        continue;
                                        continue;
                                        continue;
                                        continue;
                                    }
                                    break;
                                case 1:
                                    Integer.parseInt((String) hashMap.get("id"));
                                    split = ((String) hashMap.get("position")).replace(" ", "").split(",");
                                    if (split == null) {
                                        return "Wrong position data of title";
                                    }
                                    parseInt2 = Integer.parseInt(split[0]);
                                    i = Integer.parseInt(split[1]);
                                    i5 = Integer.parseInt(split[2]);
                                    parseInt4 = Integer.parseInt(split[3]);
                                    parseInt5 = (parseInt2 + i5) / 2;
                                    i2 = (i + parseInt4) / 2;
                                    parseInt2 = i5 - parseInt2;
                                    parseInt4 -= i;
                                    i = Integer.parseInt((String) hashMap.get("start_time"));
                                    parseInt4 = Integer.parseInt((String) hashMap.get("duration"));
                                    if ((b != Priority.START || i >= 0) && (b != Priority.END || i < 0)) {
                                        if (i >= 0) {
                                            i5 = parseInt4;
                                        } else if (nexproject.getTotalTime() < parseInt4) {
                                            i = 0;
                                            i5 = nexproject.getTotalTime();
                                        } else {
                                            i = nexproject.getTotalTime() - parseInt4;
                                            i5 = parseInt4;
                                        }
                                        nexoverlayitem = new nexOverlayItem(b((String) hashMap.get("image_res")), parseInt5, i2, i, i5 + i);
                                    } else {
                                        Log.d(a, String.format("Apply image res skip(%s %d)", new Object[]{b.name(), Integer.valueOf(i)}));
                                        i2 = parseInt;
                                        i = i3;
                                        z = a;
                                        str = str2;
                                        continue;
                                        continue;
                                        continue;
                                        continue;
                                    }
                                    break;
                                default:
                                    nexoverlayitem = null;
                            }
                            if (nexoverlayitem != null) {
                                i2 = parseInt;
                                i = i3;
                                z = a;
                                str = str2;
                            } else {
                                if (hashMap.containsKey("rotate")) {
                                    nexoverlayitem.setRotate(Float.parseFloat((String) hashMap.get("rotate")));
                                }
                                if (hashMap.containsKey("scale")) {
                                    split = ((String) hashMap.get("scale")).replace(" ", "").split(",");
                                    if (split != null) {
                                        nexoverlayitem.setScale(Float.parseFloat(split[0]), Float.parseFloat(split[1]), Float.parseFloat(split[2]));
                                    }
                                }
                                nexoverlayitem.clearAnimate();
                                str5 = (String) hashMap.get("animation");
                                if (a && hashMap.containsKey("adjust_animation_non_sub")) {
                                    str5 = (String) hashMap.get("adjust_animation_non_sub");
                                }
                                try {
                                    JSONArray jSONArray = new JSONArray(str5);
                                    parseInt4 = 0;
                                    while (true) {
                                        i4 = parseInt4;
                                        if (i4 < jSONArray.length()) {
                                            JSONObject jSONObject = jSONArray.getJSONObject(i4);
                                            str3 = jSONObject.getString(nexExportFormat.TAG_FORMAT_TYPE);
                                            JSONArray jSONArray2 = jSONObject.getJSONArray("values");
                                            obj = -1;
                                            switch (str3.hashCode()) {
                                                case -925180581:
                                                    if (str3.equals("rotate")) {
                                                        obj = 3;
                                                        break;
                                                    }
                                                    break;
                                                case 3357649:
                                                    if (str3.equals("move")) {
                                                        obj = null;
                                                        break;
                                                    }
                                                    break;
                                                case 92909918:
                                                    if (str3.equals("alpha")) {
                                                        obj = 1;
                                                        break;
                                                    }
                                                    break;
                                                case 109250890:
                                                    if (str3.equals("scale")) {
                                                        obj = 2;
                                                        break;
                                                    }
                                                    break;
                                            }
                                            TimeInterpolator a3;
                                            JSONObject jSONObject2;
                                            switch (obj) {
                                                case null:
                                                    parseInt4 = 0;
                                                    while (true) {
                                                        parseInt3 = parseInt4;
                                                        if (parseInt3 >= jSONArray2.length()) {
                                                            break;
                                                        }
                                                        jSONObject = jSONArray2.getJSONObject(parseInt3);
                                                        a3 = a(jSONObject.getString("motion_type"));
                                                        int parseInt8 = Integer.parseInt(jSONObject.getString("start_time"));
                                                        parseInt2 = Integer.parseInt(jSONObject.getString("end_time"));
                                                        final float parseFloat = Float.parseFloat(jSONObject.getString("start_x"));
                                                        final float parseFloat2 = Float.parseFloat(jSONObject.getString("end_x"));
                                                        final float parseFloat3 = Float.parseFloat(jSONObject.getString("start_y"));
                                                        final float parseFloat4 = Float.parseFloat(jSONObject.getString("end_y"));
                                                        nexoverlayitem.addAnimate(nexAnimate.getMove(parseInt8, parseInt2 - parseInt8, new MoveTrackingPath() {
                                                            public float getTranslatePosition(int i, float f) {
                                                                float abs;
                                                                if (i == 1) {
                                                                    abs = Math.abs(parseFloat - parseFloat2) * f;
                                                                    if (parseFloat >= parseFloat2) {
                                                                        abs = -abs;
                                                                    }
                                                                    return abs + parseFloat;
                                                                } else if (i != 2) {
                                                                    return 0.0f;
                                                                } else {
                                                                    abs = Math.abs(parseFloat3 - parseFloat4) * f;
                                                                    if (parseFloat3 >= parseFloat4) {
                                                                        abs = -abs;
                                                                    }
                                                                    return abs + parseFloat3;
                                                                }
                                                            }
                                                        }).setInterpolator(a3));
                                                        parseInt4 = parseInt3 + 1;
                                                    }
                                                case 1:
                                                    for (parseInt4 = 0; parseInt4 < jSONArray2.length(); parseInt4++) {
                                                        jSONObject2 = jSONArray2.getJSONObject(parseInt4);
                                                        TimeInterpolator a4 = a(jSONObject2.getString("motion_type"));
                                                        i2 = Integer.parseInt(jSONObject2.getString("start_time"));
                                                        nexoverlayitem.addAnimate(nexAnimate.getAlpha(i2, Integer.parseInt(jSONObject2.getString("end_time")) - i2, Float.parseFloat(jSONObject2.getString("start")), Float.parseFloat(jSONObject2.getString("end"))).setInterpolator(a4));
                                                    }
                                                    break;
                                                case 2:
                                                    parseInt4 = 0;
                                                    while (true) {
                                                        parseInt3 = parseInt4;
                                                        if (parseInt3 >= jSONArray2.length()) {
                                                            break;
                                                        }
                                                        jSONObject2 = jSONArray2.getJSONObject(parseInt3);
                                                        a3 = a(jSONObject2.getString("motion_type"));
                                                        parseInt4 = Integer.parseInt(jSONObject2.getString("start_time"));
                                                        nexoverlayitem.addAnimate(nexAnimate.getScale(parseInt4, Integer.parseInt(jSONObject2.getString("end_time")) - parseInt4, Float.parseFloat(jSONObject2.getString("start_x")), Float.parseFloat(jSONObject2.getString("start_y")), Float.parseFloat(jSONObject2.getString("end_x")), Float.parseFloat(jSONObject2.getString("end_y"))).setInterpolator(a3));
                                                        parseInt4 = parseInt3 + 1;
                                                    }
                                                case 3:
                                                    parseInt4 = 0;
                                                    while (true) {
                                                        parseInt2 = parseInt4;
                                                        if (parseInt2 >= jSONArray2.length()) {
                                                            break;
                                                        }
                                                        JSONObject jSONObject3 = jSONArray2.getJSONObject(parseInt2);
                                                        TimeInterpolator a5 = a(jSONObject3.getString("motion_type"));
                                                        i = Integer.parseInt(jSONObject3.getString("start_time"));
                                                        nexoverlayitem.addAnimate(nexAnimate.getRotate(i, Integer.parseInt(jSONObject3.getString("end_time")) - i, Integer.parseInt(jSONObject3.getString("clockwise")) == 1, Float.parseFloat(jSONObject3.getString("rotatedegree")), null).setInterpolator(a5));
                                                        parseInt4 = parseInt2 + 1;
                                                    }
                                                default:
                                                    break;
                                            }
                                            parseInt4 = i4 + 1;
                                        } else {
                                            nexoverlayitem.setOverlayTitle(true);
                                            nexproject.addOverlay(nexoverlayitem);
                                            i2 = parseInt;
                                            i = i3;
                                            z = a;
                                            str = str2;
                                        }
                                    }
                                } catch (JSONException e) {
                                    e.printStackTrace();
                                    Log.d(a, "applyOverlayAsset failed" + e.getMessage());
                                    return e.getMessage();
                                }
                            }
                        }
                    }
                } else if (!str.equals(hashMap.get("group"))) {
                    str4 = (String) hashMap.get("group");
                    i = 0;
                    i2 = 0;
                    a = a((List) list, str4);
                    if (a && hashMap.containsKey("adjust_pos_non_sub")) {
                        split = ((String) hashMap.get("adjust_pos_non_sub")).replace(" ", "").split(",");
                        i = Integer.parseInt(split[0]);
                        parseInt = Integer.parseInt(split[1]);
                        i3 = i;
                        str2 = str4;
                        if (!a) {
                        }
                        obj = -1;
                        switch (str3.hashCode()) {
                            case 100313435:
                                break;
                            case 110371416:
                                break;
                        }
                        switch (obj) {
                            case null:
                                break;
                            case 1:
                                break;
                            default:
                                break;
                        }
                        if (nexoverlayitem != null) {
                        }
                    }
                }
                parseInt = i2;
                i3 = i;
                str2 = str4;
                if (!a) {
                }
                obj = -1;
                switch (str3.hashCode()) {
                    case 100313435:
                        break;
                    case 110371416:
                        break;
                }
                switch (obj) {
                    case null:
                        break;
                    case 1:
                        break;
                    default:
                        break;
                }
                if (nexoverlayitem != null) {
                }
            }
            parseInt = i2;
            i3 = i;
            a = z;
            str2 = str;
            if (!a) {
            }
            obj = -1;
            switch (str3.hashCode()) {
                case 100313435:
                    break;
                case 110371416:
                    break;
            }
            switch (obj) {
                case null:
                    break;
                case 1:
                    break;
                default:
                    break;
            }
            if (nexoverlayitem != null) {
            }
        }
        return null;
    }

    public String a(nexProject nexproject) {
        if (nexproject == null) {
            return "Null project";
        }
        List<Integer> arrayList = new ArrayList();
        for (nexOverlayItem nexoverlayitem : nexproject.getOverlayItems()) {
            if (nexoverlayitem.getOverlayTitle()) {
                arrayList.add(Integer.valueOf(nexoverlayitem.getId()));
            }
        }
        for (Integer intValue : arrayList) {
            nexproject.removeOverlay(intValue.intValue());
        }
        return null;
    }

    int a(int i, List<nexTitleInfo> list, int i2) {
        for (nexTitleInfo nextitleinfo : list) {
            if (nextitleinfo.getId() == i) {
                int fontSize = nextitleinfo.getFontSize();
                Log.d(a, "getFontSize() id=" + i + ", FontSize=" + fontSize);
                return fontSize <= 0 ? i2 : fontSize;
            }
        }
        Log.d(a, "getFontSize() id=" + i + ", defaultFontSize=" + i2);
        return i2;
    }

    String a(int i, List<nexTitleInfo> list, String str) {
        for (nexTitleInfo nextitleinfo : list) {
            if (nextitleinfo.getId() == i) {
                return nextitleinfo.getFontID();
            }
        }
        return str;
    }

    String b(int i, List<nexTitleInfo> list, String str) {
        for (nexTitleInfo nextitleinfo : list) {
            if (nextitleinfo.getId() == i) {
                return nextitleinfo.getText();
            }
        }
        return str;
    }

    String a(String str, List<nexTitleInfo> list) {
        for (nexTitleInfo nextitleinfo : list) {
            if (nextitleinfo.getGroup().startsWith(str.substring(0, 1)) && nextitleinfo.getText() != null && nextitleinfo.getText().length() > 0) {
                return nextitleinfo.getText();
            }
        }
        return null;
    }

    int a(String str, List<nexTitleInfo> list, int i) {
        for (nexTitleInfo nextitleinfo : list) {
            if (nextitleinfo.getGroup().startsWith(str.substring(0, 1)) && nextitleinfo.getText() != null && nextitleinfo.getText().length() > 0) {
                return nextitleinfo.getFontSize();
            }
        }
        return i;
    }

    boolean a(List<nexTitleInfo> list, String str) {
        boolean z = false;
        for (nexTitleInfo nextitleinfo : list) {
            boolean z2;
            if (!nextitleinfo.getGroup().startsWith(str.substring(0, 1)) || (nextitleinfo.getText() != null && nextitleinfo.getText().length() > 0)) {
                z2 = z;
            } else {
                z2 = true;
            }
            z = z2;
        }
        return z;
    }

    int a(boolean z) {
        Iterator it = this.g.iterator();
        int i = 0;
        while (it.hasNext()) {
            HashMap hashMap = (HashMap) it.next();
            int parseInt = Integer.parseInt((String) hashMap.get("start_time"));
            int parseInt2 = Integer.parseInt((String) hashMap.get("duration"));
            if (z) {
                if (parseInt >= 0) {
                    if (i >= parseInt2) {
                        parseInt2 = i;
                    }
                    i = parseInt2;
                }
            } else if (parseInt < 0) {
                if (i >= parseInt2) {
                    parseInt2 = i;
                }
                i = parseInt2;
            }
        }
        return i;
    }

    Priority b(nexProject nexproject) {
        if (nexproject.getTotalTime() >= a(true) + a(false)) {
            return Priority.START_END;
        }
        if (this.e.equals("start")) {
            return Priority.START;
        }
        return Priority.END;
    }

    TimeInterpolator a(String str) {
        Object obj = -1;
        switch (str.hashCode()) {
            case -1539081405:
                if (str.equals("DecelerateInterpolator")) {
                    obj = 5;
                    break;
                }
                break;
            case -1327597199:
                if (str.equals("AnticipateInterpolator")) {
                    obj = 1;
                    break;
                }
                break;
            case -1275674606:
                if (str.equals("OvershootInterpolator")) {
                    obj = 7;
                    break;
                }
                break;
            case -1163632952:
                if (str.equals("AnticipateOvershootInterpolator")) {
                    obj = 2;
                    break;
                }
                break;
            case -142581660:
                if (str.equals("AccelerateInterpolator")) {
                    obj = null;
                    break;
                }
                break;
            case 593057964:
                if (str.equals("LinearInterpolator")) {
                    obj = 6;
                    break;
                }
                break;
            case 1416217487:
                if (str.equals("BounceInterpolator")) {
                    obj = 3;
                    break;
                }
                break;
            case 1682001069:
                if (str.equals("CycleInterpolator")) {
                    obj = 4;
                    break;
                }
                break;
        }
        switch (obj) {
            case null:
                return new AccelerateInterpolator();
            case 1:
                return new AnticipateInterpolator();
            case 2:
                return new AnticipateOvershootInterpolator();
            case 3:
                return new BounceInterpolator();
            case 4:
                return new CycleInterpolator(1.0f);
            case 5:
                return new DecelerateInterpolator();
            case 6:
                return new LinearInterpolator();
            case 7:
                return new OvershootInterpolator();
            default:
                return new AccelerateDecelerateInterpolator();
        }
    }

    private nexOverlayImage b(String str) {
        f c = c.a().c(str);
        if (c != null && c.getCategory() == ItemCategory.overlay && c.getType() == ItemType.overlay) {
            return new nexOverlayImage(str, true);
        }
        return null;
    }
}
