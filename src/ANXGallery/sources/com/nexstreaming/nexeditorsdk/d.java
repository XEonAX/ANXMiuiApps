package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.graphics.Rect;
import android.media.ExifInterface;
import android.util.Log;
import com.nexstreaming.kminternal.kinemaster.config.a;
import com.nexstreaming.nexeditorsdk.nexCrop.CropMode;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: nexTemplateDrawInfo */
final class d {
    private static String r = "nexTemplateDrawInfo";
    int a = 0;
    String b = "";
    String c = "";
    float d;
    float e;
    nexColorEffect f = null;
    Map<String, String> g = new HashMap();
    String h = "default";
    String i = "";
    String j = "";
    float k;
    float l;
    int m = 0;
    int n = 0;
    int o = 0;
    String p = "none";
    float q;

    d() {
    }

    static String a(JSONObject jSONObject, String str) {
        try {
            return jSONObject.getString(str);
        } catch (JSONException e) {
            if (str.equals("source_type")) {
                return "ALL";
            }
            if (str.equals("source_path")) {
                return "default";
            }
            if (str.equals("start")) {
                return "0";
            }
            if (str.equals("end")) {
                return "1";
            }
            if (str.equals("crop_mode") || str.equals("video_crop_mode")) {
                return "default";
            }
            if (str.equals("image_crop_speed")) {
                return "default";
            }
            if (str.equals("lut")) {
                return "null";
            }
            if (str.equals("draw_width") || str.equals("draw_height")) {
                return "0";
            }
            if (str.equals("volume")) {
                return "0";
            }
            if (str.equals("system_source_width") || str.equals("system_source_height")) {
                return "0";
            }
            if (str.equals("audio_res")) {
                return "none";
            }
            if (str.equals("audio_res_pos")) {
                return "0";
            }
            return "default";
        }
    }

    public static d a(JSONObject jSONObject, int i) {
        d dVar = new d();
        dVar.a = i;
        dVar.b = a(jSONObject, "source_type");
        if (!dVar.b.equals("user")) {
            dVar.c = a(jSONObject, "source_path");
            if (jSONObject.has("system_source_width")) {
                dVar.m = Integer.parseInt(a(jSONObject, "system_source_width"));
            }
            if (jSONObject.has("system_source_height")) {
                dVar.n = Integer.parseInt(a(jSONObject, "system_source_height"));
            }
        }
        dVar.d = Float.parseFloat(a(jSONObject, "start"));
        dVar.e = Float.parseFloat(a(jSONObject, "end"));
        String a = a(jSONObject, "lut");
        if (!(a == null || a.compareTo("null") == 0 || a.compareTo("none") == 0)) {
            dVar.f = nexColorEffect.getLutColorEffect(a);
        }
        if (jSONObject.has("alternative_lut")) {
            try {
                dVar.g.clear();
                JSONObject jSONObject2 = jSONObject.getJSONObject("alternative_lut");
                Iterator keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    a = (String) keys.next();
                    dVar.g.put(a, jSONObject2.getString(a));
                }
            } catch (JSONException e) {
                e.printStackTrace();
                dVar.g.clear();
            }
        }
        dVar.h = a(jSONObject, "crop_mode");
        dVar.i = a(jSONObject, "video_crop_mode");
        dVar.j = a(jSONObject, "image_crop_speed");
        dVar.k = Float.parseFloat(a(jSONObject, "draw_width"));
        dVar.l = Float.parseFloat(a(jSONObject, "draw_height"));
        dVar.o = Integer.parseInt(a(jSONObject, "volume"));
        if (jSONObject.has("audio_res")) {
            a = a(jSONObject, "audio_res");
            if (!a.equals("none")) {
                String a2 = a(jSONObject, "audio_res_pos");
                dVar.p = a;
                dVar.q = Float.parseFloat(a2);
            }
        }
        return dVar;
    }

    public boolean a(nexProject nexproject, Context context, e eVar, int i, float f) {
        if ((this.b.compareTo("system") != 0 && this.b.compareTo("system_mt") != 0) || this.c == null || this.c.length() <= 0) {
            return false;
        }
        nexClip supportedClip;
        String assetPackageMediaPath = nexAssetPackageManager.getAssetPackageMediaPath(context, this.c);
        if (assetPackageMediaPath != null) {
            supportedClip = nexClip.getSupportedClip(assetPackageMediaPath);
        } else {
            supportedClip = null;
        }
        if (supportedClip != null) {
            supportedClip.setAssetResource(true);
            if (this.b.compareTo("system_mt") == 0) {
                supportedClip.setMotionTrackedVideo(true);
            }
            nexproject.add(supportedClip);
            supportedClip.clearDrawInfos();
            supportedClip.mStartTime = i;
            supportedClip.mEndTime = supportedClip.getTotalTime() + i;
            a(supportedClip, eVar.a, eVar.i(), i, f, null, false);
        }
        return true;
    }

    public void a(nexClip nexclip, int i, int i2, int i3, float f, String str, boolean z) {
        if (nexclip != null) {
            nexDrawInfo nexdrawinfo = new nexDrawInfo();
            nexdrawinfo.setTopEffectID(i);
            nexdrawinfo.setID(this.a);
            nexdrawinfo.setSubEffectID(this.a);
            int i4 = i3 + ((int) (((float) i2) * this.d));
            int i5 = i3 + ((int) (((float) i2) * this.e));
            Log.d(r, String.format("Template setDrawInfo2Clip(dur:%d start:%d %d %d)", new Object[]{Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5)}));
            if (nexclip.getClipType() == 1) {
                nexclip.mStartTime = i4 < nexclip.mStartTime ? i4 : nexclip.mStartTime;
                nexclip.mEndTime = i5 > nexclip.mEndTime ? i5 : nexclip.mEndTime;
                nexclip.setImageClipDuration(nexclip.mEndTime - nexclip.mStartTime);
            } else {
                nexclip.mStartTime = i4 < nexclip.mStartTime ? i4 : nexclip.mStartTime;
                nexclip.mEndTime = i5 > nexclip.mEndTime ? i5 : nexclip.mEndTime;
                if (z) {
                    int i6 = (int) (((float) i2) * (this.e - this.d));
                    if (i6 >= nexclip.getVideoDuration()) {
                        i6 = nexclip.getVideoDuration();
                    }
                    nexclip.getVideoClipEdit().setTrim(0, i6);
                }
                nexclip.setClipVolume(this.o);
            }
            nexdrawinfo.setStartTime(i4);
            nexdrawinfo.setEndTime(i5);
            if (str == null || !this.g.containsKey(str)) {
                nexdrawinfo.setLUT(this.f == null ? 0 : this.f.getLUTId());
            } else {
                nexColorEffect lutColorEffect = nexColorEffect.getLutColorEffect((String) this.g.get(str));
                nexdrawinfo.setLUT(lutColorEffect == null ? 0 : lutColorEffect.getLUTId());
            }
            if (!(this.k == 0.0f || this.l == 0.0f)) {
                f = this.k / this.l;
            }
            nexdrawinfo.setRatio(f);
            a(nexclip, f);
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            nexclip.getCrop().getStartPositionRaw(rect);
            nexclip.getCrop().getEndPositionRaw(rect2);
            nexdrawinfo.setRotateState(nexclip.getRotateDegree());
            nexdrawinfo.setStartRect(rect);
            nexdrawinfo.setEndRect(rect2);
            nexclip.addDrawInfo(nexdrawinfo);
        }
    }

    /* Code decompiled incorrectly, please refer to instructions dump. */
    String a(nexClip nexclip, float f) {
        boolean z;
        String str = this.h;
        if (nexclip.getClipType() == 4 && this.i.length() > 0) {
            str = this.i;
        }
        switch (str.hashCode()) {
            case 101393:
                if (str.equals("fit")) {
                    z = true;
                    break;
                }
            case 3143043:
                if (str.equals("fill")) {
                    z = false;
                    break;
                }
            case 1054849215:
                if (str.equals("pan_face")) {
                    z = true;
                    break;
                }
            case 1055207047:
                if (str.equals("pan_rand")) {
                    z = true;
                    break;
                }
            default:
                z = true;
                break;
        }
        switch (z) {
            case false:
                nexclip.getCrop().randomizeStartEndPosition(false, CropMode.FILL, f);
                break;
            case true:
                nexclip.getCrop().randomizeStartEndPosition(false, CropMode.PAN_RAND, f);
                break;
            case true:
                nexclip.getCrop().randomizeStartEndPosition(false, CropMode.PAN_FACE, f);
                break;
            case true:
                nexclip.getCrop().randomizeStartEndPosition(false, CropMode.FIT, f);
                break;
            default:
                if (f == 0.0f) {
                    nexclip.getCrop().randomizeStartEndPosition(false, CropMode.FIT, f);
                    break;
                }
                float width = ((float) nexclip.getWidth()) / (((float) nexclip.getHeight()) * 1.0f);
                int rotateDegree = nexclip.getRotateDegree();
                if (nexclip.getClipType() == 4) {
                    if (rotateDegree == 90 || rotateDegree == nexClip.kClip_Rotate_270) {
                        width = ((float) nexclip.getHeight()) / (((float) nexclip.getWidth()) * 1.0f);
                    }
                } else if (nexclip.getClipType() == 1) {
                    ExifInterface exifInterface;
                    try {
                        exifInterface = new ExifInterface(nexclip.getRealPath());
                    } catch (IOException e) {
                        e.printStackTrace();
                        exifInterface = null;
                    }
                    if (exifInterface != null) {
                        int parseInt;
                        String attribute = exifInterface.getAttribute("Orientation");
                        if (attribute != null) {
                            parseInt = Integer.parseInt(attribute);
                        } else {
                            parseInt = 1;
                        }
                        if (parseInt == 6 || parseInt == 8) {
                            if (parseInt == 6) {
                                rotateDegree = 90;
                            }
                            if (parseInt == 8) {
                                rotateDegree = nexClip.kClip_Rotate_270;
                            }
                            width = ((float) nexclip.getHeight()) / (((float) nexclip.getWidth()) * 1.0f);
                        }
                    }
                }
                if (((double) Math.abs(f - width)) > 0.05d) {
                    nexclip.getCrop().randomizeStartEndPosition(false, CropMode.PAN_RAND, f);
                } else {
                    nexclip.getCrop().randomizeStartEndPosition(false, CropMode.FIT, f);
                }
                Log.d(r, String.format("Apply default crop mode(%f %f) (%d)", new Object[]{Float.valueOf(f), Float.valueOf(width), Integer.valueOf(rotateDegree)}));
                break;
        }
        return null;
    }

    protected String a(nexProject nexproject, int i, int i2) {
        if (!(this.p == null || this.p.length() <= 0 || this.p.equals("none"))) {
            nexproject.updateProject();
            nexClip supportedClip = nexClip.getSupportedClip(nexAssetPackageManager.getAssetPackageMediaPath(a.a().b(), this.p));
            if (supportedClip != null) {
                int totalTime = supportedClip.getTotalTime();
                int i3 = (int) (((float) i2) * this.q);
                supportedClip.setAssetResource(true);
                nexproject.addAudio(supportedClip, i + i3, totalTime + (i3 + i));
            }
        }
        return null;
    }

    void a() {
        Log.d(r, String.format("subId : %d", new Object[]{Integer.valueOf(this.a)}));
        Log.d(r, String.format("start : %f", new Object[]{Float.valueOf(this.d)}));
        Log.d(r, String.format("end : %f", new Object[]{Float.valueOf(this.e)}));
        String str = r;
        String str2 = "lut : %d";
        Object[] objArr = new Object[1];
        objArr[0] = Integer.valueOf(this.f == null ? 0 : this.f.getLUTId());
        Log.d(str, String.format(str2, objArr));
        Log.d(r, String.format("cropMode : %s", new Object[]{this.h}));
        Log.d(r, String.format("videoCropMode : %s", new Object[]{this.i}));
        Log.d(r, String.format("draw size : %f %f", new Object[]{Float.valueOf(this.k), Float.valueOf(this.l)}));
        Log.d(r, String.format("volume : %d", new Object[]{Integer.valueOf(this.o)}));
        Log.d(r, "---------------------------------------------------");
    }
}
