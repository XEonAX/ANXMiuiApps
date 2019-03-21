package com.nexstreaming.nexeditorsdk;

import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.RectF;
import android.util.Log;
import com.nexstreaming.nexeditorsdk.nexSaveDataFormat.nexCollageTitleInfoOf;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import org.keyczar.Keyczar;

class nexCollageTitleInfo implements nexCollageInfo, nexCollageInfoTitle {
    private static String b = "nexCollageTitleInfo";
    protected CollageInfoChangedListener a;
    private float c;
    private float d;
    private RectF e;
    private List<PointF> f = new ArrayList();
    private String g;
    private Type h;
    private String i;
    private int j = 20;
    private int k = 20;
    private int l = 1;
    private Map<String, String> m = new HashMap();
    private String n = null;
    private String o = "";
    private String p = "";
    private String q = "";
    private String r = "";

    enum Type {
        User,
        System
    }

    nexCollageTitleInfo() {
    }

    protected void a(CollageInfoChangedListener collageInfoChangedListener) {
        this.a = collageInfoChangedListener;
    }

    public String getId() {
        return this.g;
    }

    public RectF getRectangle() {
        return this.e;
    }

    public List<PointF> getPositions() {
        return this.f;
    }

    public String getTitle(String str) {
        if (this.n != null) {
            return this.n;
        }
        String str2 = "";
        if (str == null || !this.m.containsKey(str)) {
            String language = Locale.getDefault().getLanguage();
            if (this.m.containsKey(language)) {
                str2 = (String) this.m.get(language);
            } else if (this.m.containsKey("en")) {
                str2 = (String) this.m.get("en");
            }
        } else {
            str2 = (String) this.m.get(str);
        }
        if (str2.startsWith("@content=")) {
            if (this.a == null) {
                return str2;
            }
            return this.a.TitleInfoContentTime(this.i, str2.substring("@content=".length()));
        } else if (!str2.startsWith("@collage=") || this.a == null) {
            return str2;
        } else {
            return this.a.CollageTime(str2.substring("@collage=".length()));
        }
    }

    public boolean setTitle(String str) {
        this.n = str;
        if (this.a != null) {
            this.a.TitleInfoChanged();
        }
        return true;
    }

    public String getTitleFont() {
        return this.o;
    }

    public boolean setTitleFont(String str) {
        this.o = str;
        return true;
    }

    public int getTitleFillColor() {
        if (this.p == null || this.p.length() <= 0) {
            return 0;
        }
        int parseInt = Integer.parseInt(this.p.substring(1, this.p.length()));
        return Color.argb(Color.blue(parseInt), Color.alpha(parseInt), Color.red(parseInt), Color.green(parseInt));
    }

    public boolean setTitleFillColor(int i) {
        int alpha = Color.alpha(i);
        int red = Color.red(i);
        int green = Color.green(i);
        int blue = Color.blue(i);
        if (Color.alpha(i) == 0) {
            this.p = "";
        } else {
            this.p = String.format("#%8X", new Object[]{Integer.valueOf(Color.argb(red, green, blue, alpha))});
        }
        return true;
    }

    public int getTitleStrokeColor() {
        if (this.p == null || this.p.length() <= 0) {
            return 0;
        }
        int parseInt = Integer.parseInt(this.p.substring(1, this.p.length()));
        return Color.argb(Color.blue(parseInt), Color.alpha(parseInt), Color.red(parseInt), Color.green(parseInt));
    }

    public boolean setTitleStrokeColor(int i) {
        int alpha = Color.alpha(i);
        int red = Color.red(i);
        int green = Color.green(i);
        int blue = Color.blue(i);
        if (Color.alpha(i) == 0) {
            this.q = "";
        } else {
            this.q = String.format("#%8X", new Object[]{Integer.valueOf(Color.argb(red, green, blue, alpha))});
        }
        return true;
    }

    public int getTitleDropShadowColor() {
        if (this.p == null || this.p.length() <= 0) {
            return 0;
        }
        int parseInt = Integer.parseInt(this.p.substring(1, this.p.length()));
        return Color.argb(Color.blue(parseInt), Color.alpha(parseInt), Color.red(parseInt), Color.green(parseInt));
    }

    public boolean setTitleDropShadowColor(int i) {
        int alpha = Color.alpha(i);
        int red = Color.red(i);
        int green = Color.green(i);
        int blue = Color.blue(i);
        if (Color.alpha(i) == 0) {
            this.r = "";
        } else {
            this.r = String.format("#%8X", new Object[]{Integer.valueOf(Color.argb(red, green, blue, alpha))});
        }
        return true;
    }

    public int getTitleMaxLength() {
        return this.j;
    }

    public int getTitleRecommendLength() {
        return this.k;
    }

    public int getTitleMaxLines() {
        return this.l;
    }

    public boolean a() {
        return this.h == Type.User;
    }

    public String b() {
        StringBuilder stringBuilder = new StringBuilder();
        try {
            if (this.o.length() > 0) {
                stringBuilder.append(URLEncoder.encode(getId() + "_font", Keyczar.DEFAULT_ENCODING));
                stringBuilder.append("=");
                stringBuilder.append(URLEncoder.encode("fontid:" + this.o, Keyczar.DEFAULT_ENCODING));
                stringBuilder.append("&");
            }
            if (this.p.length() > 0) {
                stringBuilder.append(URLEncoder.encode(getId() + "_fill_color", Keyczar.DEFAULT_ENCODING));
                stringBuilder.append("=");
                stringBuilder.append(URLEncoder.encode(this.p, Keyczar.DEFAULT_ENCODING));
                stringBuilder.append("&");
            }
            if (this.q.length() > 0) {
                stringBuilder.append(URLEncoder.encode(getId() + "_stroke_color", Keyczar.DEFAULT_ENCODING));
                stringBuilder.append("=");
                stringBuilder.append(URLEncoder.encode(this.q, Keyczar.DEFAULT_ENCODING));
                stringBuilder.append("&");
            }
            if (this.r.length() > 0) {
                stringBuilder.append(URLEncoder.encode(getId() + "_dropshadow_color", Keyczar.DEFAULT_ENCODING));
                stringBuilder.append("=");
                stringBuilder.append(URLEncoder.encode(this.r, Keyczar.DEFAULT_ENCODING));
                stringBuilder.append("&");
            }
            stringBuilder.append(URLEncoder.encode(getId(), Keyczar.DEFAULT_ENCODING));
            stringBuilder.append("=");
            if (this.n == null) {
                String language = Locale.getDefault().getLanguage();
                if (this.m.containsKey(language)) {
                    language = (String) this.m.get(language);
                } else {
                    language = (String) this.m.get("en");
                }
                if (language.startsWith("@content=")) {
                    if (this.a != null) {
                        language = this.a.TitleInfoContentTime(this.i, language.substring("@content=".length()));
                    } else {
                        language = "";
                    }
                } else if (language.startsWith("@collage=")) {
                    if (this.a != null) {
                        language = this.a.CollageTime(language.substring("@collage=".length()));
                    } else {
                        language = "";
                    }
                }
                stringBuilder.append(URLEncoder.encode(language, Keyczar.DEFAULT_ENCODING));
                return stringBuilder.toString();
            }
            if (this.n.length() <= 0) {
                stringBuilder.append(URLEncoder.encode(" ", Keyczar.DEFAULT_ENCODING));
            } else {
                stringBuilder.append(URLEncoder.encode(this.n, Keyczar.DEFAULT_ENCODING));
            }
            return stringBuilder.toString();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    float a(PointF pointF, PointF pointF2, PointF pointF3) {
        return ((pointF2.x - pointF.x) * (pointF3.y - pointF.y)) - ((pointF3.x - pointF.x) * (pointF2.y - pointF.y));
    }

    int a(PointF pointF, List<PointF> list) {
        int i = 0;
        int i2 = 0;
        while (i < list.size() - 1) {
            if (((PointF) list.get(i)).y <= pointF.y) {
                if (((PointF) list.get(i + 1)).y > pointF.y && a((PointF) list.get(i), (PointF) list.get(i + 1), pointF) > 0.0f) {
                    i2++;
                }
            } else if (((PointF) list.get(i + 1)).y <= pointF.y && a((PointF) list.get(i), (PointF) list.get(i + 1), pointF) < 0.0f) {
                i2--;
            }
            i++;
            i2 = i2;
        }
        return i2;
    }

    public boolean a(float f, float f2) {
        if (this.f != null && this.f.size() > 0 && a(new PointF(f, f2), this.f) > 0) {
            return true;
        }
        if (this.e != null) {
            return this.e.contains(f, f2);
        }
        return false;
    }

    public String c() {
        return this.i;
    }

    String a(JSONObject jSONObject) {
        float f = Float.MAX_VALUE;
        try {
            this.c = Float.parseFloat(jSONObject.getString("start"));
            this.d = Float.parseFloat(jSONObject.getString("end"));
            if (jSONObject.has("position")) {
                String[] split = jSONObject.getString("position").replace(" ", "").split(",");
                if (split == null) {
                    return "Wrong position data of titleinfo";
                }
                this.f.clear();
                float parseFloat;
                float parseFloat2;
                float parseFloat3;
                if (split.length == 4) {
                    parseFloat = Float.parseFloat(split[0]);
                    parseFloat2 = Float.parseFloat(split[1]);
                    f = Float.parseFloat(split[2]);
                    parseFloat3 = Float.parseFloat(split[3]);
                    PointF pointF = new PointF(parseFloat, parseFloat2);
                    PointF pointF2 = new PointF(f, parseFloat2);
                    PointF pointF3 = new PointF(f, parseFloat3);
                    PointF pointF4 = new PointF(parseFloat, parseFloat3);
                    this.f.add(pointF);
                    this.f.add(pointF2);
                    this.f.add(pointF3);
                    this.f.add(pointF4);
                    this.f.add(pointF);
                    this.e = new RectF(parseFloat, parseFloat2, f, parseFloat3);
                } else {
                    parseFloat3 = Float.MIN_VALUE;
                    float f2 = Float.MAX_VALUE;
                    parseFloat = Float.MIN_VALUE;
                    for (int i = 0; i < split.length; i += 2) {
                        float parseFloat4 = Float.parseFloat(split[i]);
                        parseFloat2 = Float.parseFloat(split[i + 1]);
                        if (f2 > parseFloat4) {
                            f2 = parseFloat4;
                        }
                        if (parseFloat3 < parseFloat4) {
                            parseFloat3 = parseFloat4;
                        }
                        if (f > parseFloat2) {
                            f = parseFloat2;
                        }
                        if (parseFloat < parseFloat2) {
                            parseFloat = parseFloat2;
                        }
                        this.f.add(new PointF(parseFloat4, parseFloat2));
                    }
                    this.e = new RectF(f2, f, parseFloat3, parseFloat);
                }
            }
            this.g = jSONObject.getString("title_id");
            this.h = jSONObject.getString("title_type").compareTo("user") == 0 ? Type.User : Type.System;
            if (jSONObject.has("draw_id")) {
                this.i = jSONObject.getString("draw_id");
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("title_default");
            Iterator keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String str = (String) keys.next();
                this.m.put(str, jSONObject2.getString(str));
            }
            if (jSONObject.has("max_length")) {
                this.j = Integer.parseInt(jSONObject.getString("max_length"));
            }
            if (jSONObject.has("recommend_length")) {
                this.k = Integer.parseInt(jSONObject.getString("recommend_length"));
            }
            if (jSONObject.has("title_max_lines")) {
                this.l = Integer.parseInt(jSONObject.getString("title_max_lines"));
            }
            return null;
        } catch (JSONException e) {
            e.printStackTrace();
            Log.d(b, "parse Collage failed : " + e.getMessage());
            return e.getMessage();
        }
    }

    nexCollageTitleInfoOf d() {
        nexCollageTitleInfoOf nexcollagetitleinfoof = new nexCollageTitleInfoOf();
        nexcollagetitleinfoof.userDropShadowColor = this.r;
        nexcollagetitleinfoof.userFillColor = this.p;
        nexcollagetitleinfoof.userFont = this.o;
        nexcollagetitleinfoof.userStrokeColor = this.q;
        nexcollagetitleinfoof.userText = this.n;
        return nexcollagetitleinfoof;
    }

    void a(nexCollageTitleInfoOf nexcollagetitleinfoof) {
        this.r = nexcollagetitleinfoof.userDropShadowColor;
        this.p = nexcollagetitleinfoof.userFillColor;
        this.o = nexcollagetitleinfoof.userFont;
        this.q = nexcollagetitleinfoof.userStrokeColor;
        this.n = nexcollagetitleinfoof.userText;
    }
}
