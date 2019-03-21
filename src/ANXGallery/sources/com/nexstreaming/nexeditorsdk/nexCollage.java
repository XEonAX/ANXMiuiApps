package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Log;
import com.nexstreaming.kminternal.kinemaster.utils.facedetect.a;
import com.nexstreaming.nexeditorsdk.nexCollageManager.CollageType;
import com.nexstreaming.nexeditorsdk.nexSaveDataFormat.nexCollageOf;
import com.nexstreaming.nexeditorsdk.nexSaveDataFormat.nexCollageTitleInfoOf;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class nexCollage {
    private static String a = "nexCollage";
    private String b;
    private String c;
    private String d;
    private String e;
    private float f = 1.0f;
    private CollageType g;
    private int h;
    private float i;
    private String j;
    private int k;
    private String l;
    private float m;
    private String n;
    private boolean o;
    private List<a> p = new ArrayList();
    private List<nexCollageTitleInfo> q = new ArrayList();
    private float r;
    private float s;
    private int t = 200;
    private int u = 1000;
    private nexProject v;
    private nexEngine w;
    private Context x;
    private Date y;
    private boolean z = false;

    protected interface CollageInfoChangedListener {
        String CollageTime(String str);

        void DrawInfoChanged(nexDrawInfo nexdrawinfo);

        RectF FaceRect(String str);

        void SourceChanged(nexClip nexclip, nexClip nexclip2);

        void TitleInfoChanged();

        String TitleInfoContentTime(String str, String str2);
    }

    nexCollage() {
    }

    public float a() {
        return this.i;
    }

    public int b() {
        return this.k;
    }

    public int c() {
        return this.h;
    }

    public CollageType d() {
        return this.g;
    }

    public float e() {
        return this.r / this.s;
    }

    public List<a> f() {
        return this.p;
    }

    public List<nexCollageTitleInfo> g() {
        return this.q;
    }

    public static void a(Rect rect, int i, int i2) {
        rect.left = (rect.left * i) / nexCrop.ABSTRACT_DIMENSION;
        rect.top = (rect.top * i2) / nexCrop.ABSTRACT_DIMENSION;
        rect.right = (rect.right * i) / nexCrop.ABSTRACT_DIMENSION;
        rect.bottom = (rect.bottom * i2) / nexCrop.ABSTRACT_DIMENSION;
    }

    public static void b(Rect rect, int i, int i2) {
        rect.left = (rect.left * nexCrop.ABSTRACT_DIMENSION) / i;
        rect.top = (rect.top * nexCrop.ABSTRACT_DIMENSION) / i2;
        rect.right = (rect.right * nexCrop.ABSTRACT_DIMENSION) / i;
        rect.bottom = (rect.bottom * nexCrop.ABSTRACT_DIMENSION) / i2;
    }

    public static void a(Rect rect, float f) {
        float width = ((float) rect.width()) / ((float) rect.height());
        Log.d(a, String.format("shrinkToAspect(%f %f)", new Object[]{Float.valueOf(width), Float.valueOf(f)}));
        int width2;
        if (width < f) {
            width2 = (int) (((float) rect.width()) / f);
            rect.top = rect.centerY() - (width2 / 2);
            rect.bottom = width2 + rect.top;
        } else {
            width2 = (int) (((float) rect.height()) * f);
            rect.left = rect.centerX() - (width2 / 2);
            rect.right = width2 + rect.left;
        }
        Log.d(a, String.format("shrinkToAspect: ", new Object[0]) + rect.toString());
    }

    private String a(int i) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(0);
        stringBuilder.append(',');
        stringBuilder.append(i);
        stringBuilder.append('?');
        stringBuilder.append('?');
        Iterator it = this.q.iterator();
        while (it.hasNext()) {
            stringBuilder.append(((nexCollageTitleInfo) it.next()).b());
            if (it.hasNext()) {
                stringBuilder.append('&');
            }
        }
        return stringBuilder.toString();
    }

    private RectF b(String str) {
        RectF rectF = new RectF();
        a a = a.a(str);
        if (a == null) {
            a = new a(new File(str), true, this.x);
            a.a(str, a);
        }
        a.a(rectF);
        return rectF;
    }

    protected String a(nexProject nexproject, nexEngine nexengine, int i, Context context, boolean z) {
        int i2;
        nexClip clip;
        Log.d(a, String.format("apply2Project sources(%d %d %d)", new Object[]{Integer.valueOf(this.k), Integer.valueOf(nexproject.getTotalClipCount(true)), Integer.valueOf(i)}));
        this.x = context;
        if (i == 0) {
            i = this.h;
        }
        for (i2 = 0; i2 < nexproject.getTotalClipCount(true); i2++) {
            clip = nexproject.getClip(i2, true);
            if (clip.isMotionTrackedVideo() || clip.isAssetResource()) {
                nexproject.remove(clip);
            }
        }
        for (i2 = 0; i2 < nexproject.getTotalClipCount(false); i2++) {
            clip = nexproject.getClip(i2, false);
            if (clip.isAssetResource()) {
                nexproject.remove(clip);
            }
        }
        i2 = 0;
        List arrayList = new ArrayList();
        while (nexproject.getTotalClipCount(true) > 0) {
            clip = nexproject.getClip(0, true);
            if (clip.getClipType() == 4) {
                clip.setAudioOnOff(false);
            }
            arrayList.add(clip);
            if (i2 <= clip.getProjectDuration()) {
                i2 = clip.getProjectDuration();
            }
            nexproject.remove(clip);
        }
        if (i == 0) {
            i = i2;
        }
        nexproject.getTopDrawInfo().clear();
        nexproject.setTemplateApplyMode(3);
        nexDrawInfo nexdrawinfo = new nexDrawInfo();
        nexdrawinfo.setID(1);
        nexdrawinfo.setSubEffectID(65537);
        nexdrawinfo.setEffectID(this.n);
        nexdrawinfo.setStartTime(0);
        nexdrawinfo.setEndTime(i);
        nexproject.getTopDrawInfo().add(nexdrawinfo);
        this.y = new Date();
        int i3 = 1;
        clip = null;
        for (a aVar : this.p) {
            nexClip nexclip;
            if (aVar.a()) {
                clip = nexClip.getSupportedClip(aVar.a(context));
                clip.setAssetResource(true);
                if (aVar.b()) {
                    clip.setMotionTrackedVideo(true);
                }
                nexclip = clip;
            } else {
                if (clip == null && arrayList.size() > 0) {
                    clip = (nexClip) arrayList.get(0);
                    arrayList.remove(clip);
                }
                nexclip = clip;
            }
            if (nexclip == null) {
                clip = nexclip;
            } else {
                nexDrawInfo nexdrawinfo2;
                nexColorEffect lutColorEffect;
                nexproject.add(nexclip);
                if (nexclip.getDrawInfos().size() > 0) {
                    nexdrawinfo2 = (nexDrawInfo) nexclip.getDrawInfos().get(0);
                } else {
                    nexdrawinfo2 = null;
                }
                nexclip.clearDrawInfos();
                if (nexclip.getClipType() == 1) {
                    nexclip.setImageClipDuration(i);
                } else {
                    nexclip.getVideoClipEdit().clearTrim();
                    if (nexclip.getTotalTime() > i) {
                        nexclip.getVideoClipEdit().setTrim(0, i);
                    }
                }
                nexclip.mStartTime = 0;
                nexclip.mEndTime = i;
                nexDrawInfo nexdrawinfo3 = new nexDrawInfo();
                nexdrawinfo3.setTopEffectID(nexdrawinfo.getID());
                nexdrawinfo3.setID(65536 | i3);
                nexdrawinfo3.setSubEffectID(65536 | i3);
                int i4 = i3 + 1;
                int c = (int) (((float) i) * aVar.c());
                int d = (int) (((float) i) * aVar.d());
                Log.d(a, String.format("Collage setDrawInfo2Clip(dur:%d %d %d)", new Object[]{Integer.valueOf(i), Integer.valueOf(c), Integer.valueOf(d)}));
                if (nexclip.getClipType() == 1) {
                    nexclip.mStartTime = c < nexclip.mStartTime ? c : nexclip.mStartTime;
                    nexclip.mEndTime = d > nexclip.mEndTime ? d : nexclip.mEndTime;
                    nexclip.setImageClipDuration(nexclip.mEndTime - nexclip.mStartTime);
                } else {
                    if (c < nexclip.getProjectStartTime()) {
                        c = nexclip.getProjectStartTime();
                    }
                    if (d > nexclip.getProjectEndTime()) {
                        d = nexclip.getProjectEndTime();
                    }
                }
                nexdrawinfo3.setStartTime(c);
                nexdrawinfo3.setEndTime(d);
                if (!(aVar.e() == null || aVar.e().compareTo("none") == 0)) {
                    lutColorEffect = nexColorEffect.getLutColorEffect(aVar.e());
                    if (lutColorEffect != null) {
                        nexdrawinfo3.setLUT(lutColorEffect.getLUTId());
                    }
                }
                c = nexclip.getWidth();
                i3 = nexclip.getHeight();
                if (nexclip.getRotateInMeta() == 90 || nexclip.getRotateInMeta() == nexClip.kClip_Rotate_270) {
                    c = nexclip.getHeight();
                    i3 = nexclip.getWidth();
                    if (nexclip.getClipType() == 4) {
                        nexdrawinfo3.setRotateState(nexclip.getRotateInMeta());
                    }
                }
                Rect rect = new Rect(0, 0, c, i3);
                Rect rect2 = new Rect(0, 0, 1, 1);
                if (nexclip.getClipType() == 1) {
                    RectF b = b(nexclip.getPath());
                    rect.set((int) (b.left * ((float) c)), (int) (b.top * ((float) i3)), (int) (b.right * ((float) c)), (int) (b.bottom * ((float) i3)));
                    if (rect.isEmpty()) {
                        rect = new Rect(0, 0, c, i3);
                    } else {
                        rect2.set((int) (b.left * ((float) c)), (int) (b.top * ((float) i3)), (int) (b.right * ((float) c)), (int) (b.bottom * ((float) i3)));
                        int i5 = (rect.right - rect.left) / 2;
                        rect.left -= i5;
                        rect.right = i5 + rect.right;
                        if (rect.left < 0) {
                            rect.left = 0;
                        }
                        if (rect.right > c) {
                            rect.right = c;
                        }
                        i5 = (rect.bottom - rect.top) / 2;
                        rect.top -= i5;
                        rect.bottom = i5 + rect.bottom;
                        if (rect.top < 0) {
                            rect.top = 0;
                        }
                        if (rect.bottom > i3) {
                            rect.bottom = i3;
                        }
                    }
                }
                Log.d(a, String.format("Collage setDrawInfo2Clip", new Object[0]) + aVar.getRectangle().toString());
                float width = (aVar.getRectangle().width() * this.r) / (aVar.getRectangle().height() * this.s);
                float f = (float) aVar.f();
                float g = (float) aVar.g();
                if (!(f == 0.0f || g == 0.0f)) {
                    width = f / g;
                }
                a(rect, width);
                Log.d(a, String.format("Collage setDrawInfo2Clip sr : ", new Object[0]) + rect.toString());
                b(rect, c, i3);
                b(rect2, c, i3);
                Log.d(a, String.format("Collage setDrawInfo2Clip1 sr : ", new Object[0]) + rect.toString());
                Log.d(a, String.format("Collage setDrawInfo2Clip clip size(%d %d)", new Object[]{Integer.valueOf(c), Integer.valueOf(i3)}));
                nexdrawinfo3.setStartRect(rect);
                nexdrawinfo3.setEndRect(rect);
                nexdrawinfo3.setFaceRect(rect2);
                nexclip.addDrawInfo(nexdrawinfo3);
                aVar.a(nexclip);
                aVar.b(width);
                aVar.a(nexproject, i);
                boolean z2 = false;
                if (nexdrawinfo2 != null) {
                    nexdrawinfo3.setRotateState(nexdrawinfo2.getRotateState());
                    nexdrawinfo3.setUserTranslate(nexdrawinfo2.getUserTranslateX(), nexdrawinfo2.getUserTranslateY());
                    nexdrawinfo3.setUserRotateState(nexdrawinfo2.getUserRotateState());
                    nexdrawinfo3.setRealScale(nexdrawinfo2.getRealScale());
                    nexdrawinfo3.setBrightness(nexdrawinfo2.getBrightness());
                    nexdrawinfo3.setUserLUT(nexdrawinfo2.getUserLUT());
                    if (z) {
                        String userLUT = nexdrawinfo2.getUserLUT();
                        if (!(userLUT == null || userLUT.compareTo("none") == 0 || userLUT.compareTo("null") == 0)) {
                            lutColorEffect = nexColorEffect.getLutColorEffect(userLUT);
                            if (lutColorEffect != null && lutColorEffect.getLUTId() == nexdrawinfo2.getLUT()) {
                                nexdrawinfo3.setLUT(nexdrawinfo2.getLUT());
                            }
                        }
                        nexdrawinfo3.setStartRect(nexdrawinfo2.getStartRect());
                        nexdrawinfo3.setEndRect(nexdrawinfo2.getEndRect());
                        nexdrawinfo3.setFaceRect(nexdrawinfo2.getFaceRect());
                    }
                } else {
                    z2 = true;
                }
                aVar.a(null);
                aVar.a(z2);
                Log.d(a, String.format("Collage apply rect(%s) %f", new Object[]{nexdrawinfo3.getStartRect().toString(), Float.valueOf(nexdrawinfo3.getRealScale())}));
                i3 = i4;
                clip = null;
            }
        }
        nexdrawinfo.setTitle(a(i));
        if (this.e == null || this.e.length() <= 0 || this.e.compareTo("none") == 0) {
            nexproject.setBackgroundMusicPath(null);
            nexproject.setBGMMasterVolumeScale(0.0f);
        } else {
            nexproject.setBackgroundMusicPath(this.e);
            nexproject.setBGMMasterVolumeScale(this.f);
        }
        nexproject.setProjectAudioFadeInTime(this.t);
        nexproject.setProjectAudioFadeOutTime(this.u);
        nexengine.setProperty("PreviewFPS", "30");
        nexengine.setProject(nexproject);
        nexengine.updateProject();
        this.v = nexproject;
        this.w = nexengine;
        return null;
    }

    protected boolean a(String str) {
        if (this.v == null || this.w == null) {
            return false;
        }
        if (str != null) {
            this.v.setBackgroundMusicPath(str);
        } else if (this.e != null) {
            this.v.setBackgroundMusicPath(this.e);
            this.v.setBGMMasterVolumeScale(this.f);
            return true;
        } else {
            this.v.setBackgroundMusicPath(null);
        }
        this.w.updateProject();
        return true;
    }

    protected boolean h() {
        return this.o;
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x0146  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(a aVar, a aVar2) {
        if (aVar == null || aVar2 == null) {
            return false;
        }
        nexClip bindSource = aVar.getBindSource();
        nexClip bindSource2 = aVar2.getBindSource();
        if (bindSource == null || bindSource2 == null) {
            return false;
        }
        int i;
        int i2;
        nexClip dup = nexClip.dup(bindSource);
        nexClip dup2 = nexClip.dup(bindSource2);
        if (dup.getClipType() == 4) {
            dup.setAudioOnOff(false);
        }
        if (dup2.getClipType() == 4) {
            dup2.setAudioOnOff(false);
        }
        nexDrawInfo nexdrawinfo = (nexDrawInfo) bindSource.getDrawInfos().get(0);
        nexDrawInfo nexdrawinfo2 = (nexDrawInfo) bindSource2.getDrawInfos().get(0);
        int rotateState = nexdrawinfo.getRotateState();
        int userTranslateX = nexdrawinfo.getUserTranslateX();
        int userTranslateY = nexdrawinfo.getUserTranslateY();
        int userRotateState = nexdrawinfo.getUserRotateState();
        float realScale = nexdrawinfo.getRealScale();
        int lut = nexdrawinfo.getLUT();
        int customLUTA = nexdrawinfo.getCustomLUTA();
        int customLUTB = nexdrawinfo.getCustomLUTB();
        int customLUTPower = nexdrawinfo.getCustomLUTPower();
        String userLUT = nexdrawinfo.getUserLUT();
        int brightness = nexdrawinfo.getBrightness();
        nexdrawinfo.setRotateState(nexdrawinfo2.getRotateState());
        nexdrawinfo.setUserTranslate(nexdrawinfo2.getUserTranslateX(), nexdrawinfo2.getUserTranslateY());
        nexdrawinfo.setUserRotateState(nexdrawinfo2.getUserRotateState());
        nexdrawinfo.setRealScale(nexdrawinfo2.getRealScale());
        nexdrawinfo.setLUT(0);
        String userLUT2 = nexdrawinfo2.getUserLUT();
        if (userLUT2 != null && userLUT2.compareTo("none") != 0 && userLUT2.compareTo("null") != 0) {
            nexdrawinfo.setLUT(nexdrawinfo2.getLUT());
        } else if (!(aVar.e() == null || aVar.e().compareTo("none") == 0 || aVar.e().compareTo("null") == 0)) {
            nexColorEffect lutColorEffect = nexColorEffect.getLutColorEffect(aVar.e());
            if (lutColorEffect != null) {
                nexdrawinfo.setLUT(lutColorEffect.getLUTId());
            }
        }
        nexdrawinfo.setCustomLUTA(nexdrawinfo2.getCustomLUTA());
        nexdrawinfo.setCustomLUTB(nexdrawinfo2.getCustomLUTB());
        nexdrawinfo.setCustomLUTPower(nexdrawinfo2.getCustomLUTPower());
        nexdrawinfo.setUserLUT(nexdrawinfo2.getUserLUT());
        nexdrawinfo.setBrightness(nexdrawinfo2.getBrightness());
        aVar.a(dup2, nexdrawinfo);
        nexdrawinfo2.setRotateState(rotateState);
        nexdrawinfo2.setUserTranslate(userTranslateX, userTranslateY);
        nexdrawinfo2.setUserRotateState(userRotateState);
        nexdrawinfo2.setRealScale(realScale);
        nexdrawinfo2.setLUT(0);
        if (userLUT != null) {
            if (userLUT.compareTo("none") != 0) {
                if (userLUT.compareTo("null") != 0) {
                    nexdrawinfo2.setLUT(lut);
                    nexdrawinfo2.setCustomLUTA(customLUTA);
                    nexdrawinfo2.setCustomLUTB(customLUTB);
                    nexdrawinfo2.setCustomLUTPower(customLUTPower);
                    nexdrawinfo2.setUserLUT(userLUT);
                    nexdrawinfo2.setBrightness(brightness);
                    aVar2.a(dup, nexdrawinfo2);
                    i = 1;
                    for (i2 = 0; i2 < this.v.getTotalClipCount(true); i2++) {
                        if (this.v.getClip(i2, true).equals(bindSource)) {
                            this.v.add(i - 1, true, dup2);
                            this.v.remove(bindSource);
                            this.w.removeClip(i);
                        }
                        if (this.v.getClip(i2, true).equals(bindSource2)) {
                            this.v.add(i - 1, true, dup);
                            this.v.remove(bindSource2);
                            this.w.removeClip(i);
                        }
                        i++;
                    }
                    this.w.updateProject();
                    this.w.setThumbnailRoutine(2);
                    this.w.seek((int) (((float) this.h) * this.i));
                    return true;
                }
            }
        }
        if (!(aVar2.e() == null || aVar2.e().compareTo("none") == 0 || aVar2.e().compareTo("null") == 0)) {
            nexColorEffect lutColorEffect2 = nexColorEffect.getLutColorEffect(aVar2.e());
            if (lutColorEffect2 != null) {
                nexdrawinfo2.setLUT(lutColorEffect2.getLUTId());
            }
        }
        nexdrawinfo2.setCustomLUTA(customLUTA);
        nexdrawinfo2.setCustomLUTB(customLUTB);
        nexdrawinfo2.setCustomLUTPower(customLUTPower);
        nexdrawinfo2.setUserLUT(userLUT);
        nexdrawinfo2.setBrightness(brightness);
        aVar2.a(dup, nexdrawinfo2);
        i = 1;
        while (i2 < this.v.getTotalClipCount(true)) {
        }
        this.w.updateProject();
        this.w.setThumbnailRoutine(2);
        this.w.seek((int) (((float) this.h) * this.i));
        return true;
    }

    protected boolean i() {
        return this.z;
    }

    public String a(JSONObject jSONObject) {
        int i = 0;
        if (jSONObject == null) {
            return "Collage parsing error with invalid handle";
        }
        try {
            this.b = jSONObject.getString("collage_name");
            this.c = jSONObject.getString("collage_version");
            this.d = jSONObject.getString("collage_desc");
            this.e = jSONObject.getString("collage_bgm");
            this.f = Float.parseFloat(jSONObject.getString("collage_bgm_volume"));
            if (jSONObject.getString("collage_type").compareTo("static") == 0) {
                this.g = CollageType.StaticCollage;
            } else if (jSONObject.getString("collage_type").compareTo("dynamic") == 0) {
                this.g = CollageType.DynamicCollage;
            }
            this.h = Integer.parseInt(jSONObject.getString("collage_duration"));
            this.i = Float.parseFloat(jSONObject.getString("collage_edit_time"));
            this.j = jSONObject.getString("collage_ratio");
            String[] split = this.j.toLowerCase().split("v");
            if (split == null) {
                return "Wrong ratio info was included";
            }
            this.r = Float.parseFloat(split[0]);
            this.s = Float.parseFloat(split[1]);
            this.k = Integer.parseInt(jSONObject.getString("collage_source_count"));
            this.l = jSONObject.getString("audio_res");
            this.m = Float.parseFloat(jSONObject.getString("audio_res_pos"));
            if (jSONObject.has("collage_project_vol_fade_in_time")) {
                this.t = Integer.parseInt(jSONObject.getString("collage_project_vol_fade_in_time"));
            }
            if (jSONObject.has("collage_project_vol_fade_out_time")) {
                this.u = Integer.parseInt(jSONObject.getString("collage_project_vol_fade_out_time"));
            }
            this.o = false;
            if (jSONObject.has("frame_collage")) {
                this.o = jSONObject.getString("frame_collage").compareTo("1") == 0;
            }
            this.n = jSONObject.getString("effect");
            if (jSONObject.has("draw_infos")) {
                JSONArray jSONArray = jSONObject.getJSONArray("draw_infos");
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    a aVar = new a();
                    if (aVar.a(jSONArray.getJSONObject(i2)) != null) {
                        this.p.clear();
                        this.q.clear();
                        return "Collage drawinfo parse error";
                    }
                    aVar.a(new CollageInfoChangedListener() {
                        public void SourceChanged(nexClip nexclip, nexClip nexclip2) {
                            if (nexCollage.this.w != null) {
                                int i = 0;
                                int i2 = 1;
                                while (i < nexCollage.this.v.getTotalClipCount(true) && !nexCollage.this.v.getClip(i, true).equals(nexclip)) {
                                    i2++;
                                    i++;
                                }
                                nexCollage.this.v.add(i2 - 1, true, nexclip2);
                                nexCollage.this.v.remove(nexclip);
                                nexCollage.this.w.removeClip(i2);
                                nexCollage.this.w.updateProject();
                            }
                        }

                        public void DrawInfoChanged(nexDrawInfo nexdrawinfo) {
                            if (nexCollage.this.w != null) {
                                nexCollage.this.w.updateDrawInfo(nexdrawinfo);
                            }
                        }

                        public String CollageTime(String str) {
                            return "";
                        }

                        public String TitleInfoContentTime(String str, String str2) {
                            return "";
                        }

                        public void TitleInfoChanged() {
                        }

                        public RectF FaceRect(String str) {
                            return nexCollage.this.b(str);
                        }
                    });
                    this.p.add(aVar);
                }
            }
            if (jSONObject.has("title_infos")) {
                JSONArray jSONArray2 = jSONObject.getJSONArray("title_infos");
                while (i < jSONArray2.length()) {
                    nexCollageTitleInfo nexcollagetitleinfo = new nexCollageTitleInfo();
                    if (nexcollagetitleinfo.a(jSONArray2.getJSONObject(i)) != null) {
                        this.p.clear();
                        this.q.clear();
                        return "Collage title info parse error";
                    }
                    nexcollagetitleinfo.a(new CollageInfoChangedListener() {
                        public void SourceChanged(nexClip nexclip, nexClip nexclip2) {
                        }

                        public void DrawInfoChanged(nexDrawInfo nexdrawinfo) {
                        }

                        public String CollageTime(String str) {
                            if (nexCollage.this.y == null) {
                                nexCollage.this.y = new Date();
                            }
                            return new SimpleDateFormat(str).format(nexCollage.this.y);
                        }

                        public String TitleInfoContentTime(String str, String str2) {
                            for (a aVar : nexCollage.this.p) {
                                if (aVar.getId().compareTo(str) == 0) {
                                    return aVar.a(str2);
                                }
                            }
                            return "";
                        }

                        public void TitleInfoChanged() {
                            if (nexCollage.this.v != null) {
                                ((nexDrawInfo) nexCollage.this.v.getTopDrawInfo().get(0)).setTitle(nexCollage.this.a(nexCollage.this.v.getTotalTime()));
                                if (nexCollage.this.w != null) {
                                    nexCollage.this.w.updateDrawInfo((nexDrawInfo) nexCollage.this.v.getTopDrawInfo().get(0));
                                }
                            }
                        }

                        public RectF FaceRect(String str) {
                            return nexCollage.this.b(str);
                        }
                    });
                    if (nexcollagetitleinfo.c() != null) {
                    }
                    this.q.add(nexcollagetitleinfo);
                    i++;
                }
            }
            this.z = true;
            return null;
        } catch (JSONException e) {
            e.printStackTrace();
            Log.d(a, "parse Collage header failed : " + e.getMessage());
            return e.getMessage();
        }
    }

    nexSaveDataFormat j() {
        if (this.v == null) {
            return null;
        }
        nexSaveDataFormat nexsavedataformat = new nexSaveDataFormat();
        nexsavedataformat.project = this.v.getSaveData();
        nexsavedataformat.collage = new nexCollageOf();
        if (this.q.size() == 0) {
            nexsavedataformat.collage.titleInfos = null;
        } else {
            nexsavedataformat.collage.titleInfos = new ArrayList();
            for (nexCollageTitleInfo d : this.q) {
                nexsavedataformat.collage.titleInfos.add(d.d());
            }
        }
        return nexsavedataformat;
    }

    void a(nexCollageOf nexcollageof) {
        if (nexcollageof.titleInfos != null) {
            int i = 0;
            Iterator it = this.q.iterator();
            while (true) {
                int i2 = i;
                if (it.hasNext()) {
                    nexCollageTitleInfo nexcollagetitleinfo = (nexCollageTitleInfo) it.next();
                    if (i2 < nexcollageof.titleInfos.size()) {
                        nexcollagetitleinfo.a((nexCollageTitleInfoOf) nexcollageof.titleInfos.get(i2));
                        i = i2 + 1;
                    } else {
                        return;
                    }
                }
                return;
            }
        }
    }
}
