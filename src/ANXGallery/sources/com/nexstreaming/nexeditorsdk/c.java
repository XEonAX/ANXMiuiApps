package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: nexTemplate */
final class c {
    private static String w = "nexTemplate";
    private ArrayList<e> A = new ArrayList();
    private ArrayList<e> B = new ArrayList();
    private Map<String, ArrayList<e>> C = new HashMap();
    private boolean D = true;
    private int E = 10368000;
    private boolean F = false;
    String a;
    String b;
    String c;
    String d;
    String e;
    String f;
    float g = 1.0f;
    int h = 2500;
    int i = -1;
    int j = -1;
    int k = -1;
    int l = -1;
    int m = 0;
    int n;
    String o;
    boolean p = true;
    float q;
    boolean r = false;
    String s = "";
    boolean t = true;
    g u = null;
    boolean v = false;
    private int x = 1;
    private ArrayList<e> y = new ArrayList();
    private ArrayList<e> z = new ArrayList();

    public void a() {
        this.F = false;
        if (this.y != null) {
            this.y.clear();
        }
        if (this.z != null) {
            this.z.clear();
        }
        if (this.A != null) {
            this.A.clear();
        }
        if (this.B != null) {
            this.B.clear();
        }
    }

    String a(JSONObject jSONObject) {
        try {
            this.a = jSONObject.getString("template_name");
            this.b = jSONObject.getString("template_version");
            this.c = jSONObject.getString("template_desc");
            this.d = jSONObject.getString("template_mode");
            this.q = 1.7777778f;
            if (this.d.equals("16v9")) {
                this.q = 1.7777778f;
            } else if (this.d.equals("9v16")) {
                this.q = 0.5625f;
            } else if (this.d.equals("1v1")) {
                this.q = 1.0f;
            } else if (this.d.equals("2v1")) {
                this.q = 2.0f;
            } else if (this.d.equals("1v2")) {
                this.q = 0.5f;
            }
            this.e = jSONObject.getString("template_bgm");
            if (jSONObject.has("template_single_bgm")) {
                this.f = jSONObject.getString("template_single_bgm");
            }
            if (jSONObject.has("template_bgm_volume")) {
                this.g = Float.parseFloat(jSONObject.getString("template_bgm_volume"));
            }
            if (jSONObject.has("template_min_duration")) {
                this.n = Integer.parseInt(jSONObject.getString("template_min_duration"));
            }
            if (jSONObject.has("template_default_effect")) {
                this.o = jSONObject.getString("template_default_effect");
            }
            if (jSONObject.has("template_default_effect_scale")) {
                this.p = !jSONObject.getString("template_default_effect_scale").equals("0");
            }
            if (jSONObject.has("template_default_image_duration") && !jSONObject.getString("template_default_image_duration").equals("default")) {
                this.h = Integer.parseInt(jSONObject.getString("template_default_image_duration"));
            }
            if (jSONObject.has("template_project_vol_fade_in_time") && !jSONObject.getString("template_project_vol_fade_in_time").equals("default")) {
                this.i = Integer.parseInt(jSONObject.getString("template_project_vol_fade_in_time"));
            }
            if (jSONObject.has("template_project_vol_fade_out_time") && !jSONObject.getString("template_project_vol_fade_out_time").equals("default")) {
                this.j = Integer.parseInt(jSONObject.getString("template_project_vol_fade_out_time"));
            }
            if (jSONObject.has("template_single_project_vol_fade_in_time") && !jSONObject.getString("template_single_project_vol_fade_in_time").equals("default")) {
                this.k = Integer.parseInt(jSONObject.getString("template_single_project_vol_fade_in_time"));
            }
            if (jSONObject.has("template_single_project_vol_fade_out_time") && !jSONObject.getString("template_single_project_vol_fade_out_time").equals("default")) {
                this.l = Integer.parseInt(jSONObject.getString("template_single_project_vol_fade_out_time"));
            }
            if (jSONObject.has("template_single_video")) {
                this.m = Integer.parseInt(jSONObject.getString("template_single_video"));
            }
            return null;
        } catch (JSONException e) {
            e.printStackTrace();
            Log.d(w, "parse Template failed : " + e.getMessage());
            Log.d(w, "case1 1");
            return e.getMessage();
        }
    }

    String a(String str, JSONObject jSONObject) {
        int i = 0;
        this.F = false;
        if (str != null) {
            File file = new File(str);
            if (file != null) {
                Log.d(w, String.format("Template templateFile path(%s)", new Object[]{file.getAbsolutePath()}));
                if (file.getAbsolutePath().endsWith("txt")) {
                }
            }
        }
        this.x = 1;
        String a = a(jSONObject);
        if (a != null) {
            return "Template header parse error : " + a;
        }
        try {
            int i2;
            JSONObject jSONObject2;
            int i3;
            e a2;
            JSONArray jSONArray = jSONObject.getJSONArray("template_intro");
            for (i2 = 0; i2 < jSONArray.length(); i2++) {
                jSONObject2 = jSONArray.getJSONObject(i2);
                i3 = this.x;
                this.x = i3 + 1;
                a2 = e.a(jSONObject2, i3);
                if (a2 == null) {
                    return "Template intro parse error";
                }
                this.y.add(a2);
            }
            jSONArray = jSONObject.getJSONArray("template_loop");
            for (i2 = 0; i2 < jSONArray.length(); i2++) {
                jSONObject2 = jSONArray.getJSONObject(i2);
                i3 = this.x;
                this.x = i3 + 1;
                a2 = e.a(jSONObject2, i3);
                if (a2 == null) {
                    return "Template Loop parse error";
                }
                this.z.add(a2);
            }
            JSONArray jSONArray2 = jSONObject.getJSONArray("template_outro");
            for (int i4 = 0; i4 < jSONArray2.length(); i4++) {
                JSONObject jSONObject3 = jSONArray2.getJSONObject(i4);
                if (jSONObject3 != null) {
                    if (jSONObject3.has("alternative_id") && jSONObject3.has("alternative_outro")) {
                        String string = jSONObject3.getString("alternative_id");
                        JSONArray jSONArray3 = jSONObject3.getJSONArray("alternative_outro");
                        ArrayList arrayList = new ArrayList();
                        for (i2 = 0; i2 < jSONArray3.length(); i2++) {
                            JSONObject jSONObject4 = jSONArray3.getJSONObject(i2);
                            int i5 = this.x;
                            this.x = i5 + 1;
                            e a3 = e.a(jSONObject4, i5);
                            if (a3 == null) {
                                return "Template Outro parse error(alternative outro)";
                            }
                            arrayList.add(a3);
                        }
                        this.C.put(string, arrayList);
                    } else {
                        jSONObject3 = jSONArray2.getJSONObject(i4);
                        i3 = this.x;
                        this.x = i3 + 1;
                        e a4 = e.a(jSONObject3, i3);
                        if (a4 == null) {
                            return "Template Outro parse error";
                        }
                        this.A.add(a4);
                    }
                }
            }
            if (jSONObject.has("template_single")) {
                JSONArray jSONArray4 = jSONObject.getJSONArray("template_single");
                while (i < jSONArray4.length()) {
                    JSONObject jSONObject5 = jSONArray4.getJSONObject(i);
                    int i6 = this.x;
                    this.x = i6 + 1;
                    e a5 = e.a(jSONObject5, i6);
                    if (a5 == null) {
                        return "Template Single parse error";
                    }
                    this.B.add(a5);
                    i++;
                }
            }
            Log.d(w, "parseTemplate end");
            return null;
        } catch (JSONException e) {
            e.printStackTrace();
            this.y.clear();
            this.z.clear();
            this.A.clear();
            this.B.clear();
            Log.d(w, "parseTemplate failed : " + e.getMessage());
            return "parseTemplate failed : " + e.getMessage();
        }
    }

    int b() {
        return this.n;
    }

    int c() {
        Iterator it;
        e eVar;
        int i = 0;
        if (this.C != null && this.C.size() > 0) {
            Iterator it2 = this.C.values().iterator();
            if (it2.hasNext()) {
                it = ((ArrayList) it2.next()).iterator();
                while (it.hasNext()) {
                    eVar = (e) it.next();
                    if (!(eVar.b().equals("res_video") || eVar.b().equals("res_image") || eVar.b().equals("res_solid"))) {
                        i = eVar.c() + i;
                    }
                }
                return i;
            }
        }
        if (!(this.A == null || this.A.isEmpty())) {
            it = this.A.iterator();
            while (it.hasNext()) {
                eVar = (e) it.next();
                if (!(eVar.b().equals("res_video") || eVar.b().equals("res_image") || eVar.b().equals("res_solid"))) {
                    i += eVar.h() + eVar.c();
                }
            }
        }
        return i;
    }

    int d() {
        if (this.B == null || this.B.isEmpty()) {
            return 0;
        }
        Iterator it = this.B.iterator();
        int i = 0;
        while (it.hasNext()) {
            e eVar = (e) it.next();
            if (!(eVar.b().equals("res_video") || eVar.b().equals("res_image") || eVar.b().equals("res_solid"))) {
                i = (eVar.h() + eVar.c()) + i;
            }
        }
        return i;
    }

    int e() {
        Iterator it = this.A.iterator();
        int i = 0;
        while (it.hasNext()) {
            e eVar = (e) it.next();
            if (!(eVar.b().equals("res_video") || eVar.b().equals("res_image") || eVar.b().equals("res_solid"))) {
                i++;
            }
        }
        return i;
    }

    int f() {
        int i = 0;
        Iterator it;
        if (this.C == null || this.C.size() <= 0) {
            it = this.A.iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                if (!(eVar.b().equals("res_video") || eVar.b().equals("res_image") || eVar.b().equals("res_solid"))) {
                    i += eVar.a(true);
                }
            }
        } else {
            it = ((ArrayList) this.C.values().iterator().next()).iterator();
            while (it.hasNext()) {
                i = ((e) it.next()).a(true) + i;
            }
        }
        return i;
    }

    int g() {
        return this.h;
    }

    String a(nexProject nexproject, Context context, Context context2) {
        nexproject.setBackgroundMusicPath(this.e);
        nexproject.setBGMMasterVolumeScale(this.g);
        return null;
    }

    String b(nexProject nexproject, Context context, Context context2) {
        nexproject.setBackgroundMusicPath(this.f);
        nexproject.setBGMMasterVolumeScale(this.g);
        return null;
    }

    String a(nexProject nexproject, Context context, Context context2, boolean z, boolean z2) {
        this.r = z;
        this.t = z2;
        Log.d(w, String.format("updateProjectWithTemplate(%b %b)", new Object[]{Boolean.valueOf(z), Boolean.valueOf(z2)}));
        if (this.b.startsWith("2.0")) {
            nexproject.setTemplateApplyMode(2);
            nexproject.clearDrawInfo();
            return c(nexproject, context, context2);
        } else if (!this.b.startsWith("3.0")) {
            return "Unsupported Template version : " + this.b;
        } else {
            nexproject.setTemplateApplyMode(3);
            String d = d(nexproject, context, context2);
            if (this.i >= 0) {
                nexproject.setProjectAudioFadeInTime(this.i);
            }
            if (this.j >= 0) {
                nexproject.setProjectAudioFadeOutTime(this.j);
            }
            nexproject.updateProject();
            a(nexproject, context, context2);
            return d;
        }
    }

    boolean a(nexProject nexproject) {
        for (int i = 0; i < nexproject.getTotalClipCount(true); i++) {
            if (nexproject.getClip(i, true).getClipType() == 1) {
                return true;
            }
        }
        return false;
    }

    String c(nexProject nexproject, Context context, Context context2) {
        int totalTime = nexproject.getTotalTime();
        Log.d(w, String.format("applyTemplate20_Project ( ProjectTime:%d TemplateMinDur:%d)", new Object[]{Integer.valueOf(totalTime), Integer.valueOf(b())}));
        nexProject clone = nexProject.clone(nexproject);
        nexproject.allClear(true);
        int e = e();
        int c = c();
        ArrayList arrayList = new ArrayList();
        String a;
        if (this.B.isEmpty() || (!(clone.getTotalClipCount(true) == 1 && clone.getClip(0, true).getClipType() == 1) && (clone.getTotalTime() >= d() || a(clone)))) {
            if (this.m != 1) {
                int totalClipCount = clone.getTotalClipCount(true) - 1;
                while (totalClipCount >= 0 && c >= 800 && e > 0) {
                    int i;
                    nexClip clip = clone.getClip(totalClipCount, true);
                    if (clip.getClipType() == 1) {
                        arrayList.add(0, clip);
                        clone.remove(clip);
                        c -= clip.getProjectDuration();
                        i = e - 1;
                    } else if (clip.getProjectDuration() <= c) {
                        arrayList.add(0, clip);
                        clone.remove(clip);
                        c -= clip.getProjectDuration();
                        i = e;
                    } else {
                        if (((e) this.y.get(0)).d() > totalTime - c) {
                            arrayList.add(0, clip);
                            clone.remove(clip);
                            i = e;
                        } else {
                            i = clip.getVideoClipEdit().getSpeedControl();
                            nexClip dup = nexClip.dup(clip);
                            clone.add(totalClipCount, true, dup);
                            dup.getVideoClipEdit().setSpeedControl(i);
                            dup.setRotateDegree(clip.getRotateDegree());
                            if (i != 100) {
                                i = (i * c) / 100;
                            } else {
                                i = c;
                            }
                            c = clip.getVideoClipEdit().getStartTrimTime();
                            totalClipCount = clip.getVideoClipEdit().getEndTrimTime();
                            dup.getVideoClipEdit().setTrim(c, totalClipCount - i);
                            clip.getVideoClipEdit().setTrim(totalClipCount - i, totalClipCount);
                            Log.d(w, String.format("Template Apply 1(%d %d %d) 2(%d %d %d)", new Object[]{Integer.valueOf(dup.getProjectDuration()), Integer.valueOf(dup.getVideoClipEdit().getStartTrimTime()), Integer.valueOf(dup.getVideoClipEdit().getEndTrimTime()), Integer.valueOf(clip.getProjectDuration()), Integer.valueOf(clip.getVideoClipEdit().getStartTrimTime()), Integer.valueOf(clip.getVideoClipEdit().getEndTrimTime())}));
                            arrayList.add(0, clip);
                            clone.remove(clip);
                        }
                    }
                    totalClipCount--;
                    e = i;
                }
            }
            Log.d(w, String.format("Template Apply Intro Start(%d %d)", new Object[]{Integer.valueOf(nexproject.getTotalClipCount(true)), Integer.valueOf(clone.getTotalClipCount(true))}));
            a = a(clone, nexproject, context, this.y, false);
            if (a != null) {
                return a;
            }
            Log.d(w, String.format("Template Apply Intro End(%d %d)", new Object[]{Integer.valueOf(nexproject.getTotalClipCount(true)), Integer.valueOf(clone.getTotalClipCount(true))}));
            while (clone.getTotalClipCount(true) > 0 && !this.v) {
                a = a(clone, nexproject, context, this.z, false);
                if (a != null) {
                    return a;
                }
                if (this.F) {
                    Log.d(w, "cancel template");
                    return "cancel template";
                }
            }
            Log.d(w, String.format("Template Apply Loop End(%d %d)", new Object[]{Integer.valueOf(nexproject.getTotalClipCount(true)), Integer.valueOf(clone.getTotalClipCount(true))}));
            while (arrayList.size() > 0) {
                clone.add((nexClip) arrayList.get(0));
                arrayList.remove(0);
            }
            Log.d(w, String.format("Template Apply Outpro Start(%d %d)", new Object[]{Integer.valueOf(nexproject.getTotalClipCount(true)), Integer.valueOf(clone.getTotalClipCount(true))}));
            a = a(clone, nexproject, context, this.A, true);
            if (a != null) {
                return a;
            }
            Log.d(w, String.format("Template Apply Outro End(%d %d)", new Object[]{Integer.valueOf(nexproject.getTotalClipCount(true)), Integer.valueOf(clone.getTotalClipCount(true))}));
            nexproject.updateTimeLine(false);
            if (this.i >= 0) {
                nexproject.setProjectAudioFadeInTime(this.i);
            }
            if (this.j >= 0) {
                nexproject.setProjectAudioFadeOutTime(this.j);
            }
            nexproject.updateProject();
            if (!this.t) {
                c = nexproject.getTotalClipCount(true);
                for (int i2 = 0; i2 < c; i2++) {
                    if (nexproject.getClip(i2, true).getClipEffect().getId().endsWith(".force_effect")) {
                        Rect rect = new Rect();
                        nexproject.getClip(i2 - 1, true).getCrop().getEndPositionRaw(rect);
                        nexproject.getClip(i2, true).getCrop().setStartPositionRaw(rect);
                        if (i2 + 1 < c) {
                            nexproject.getClip(i2 + 1, true).getCrop().getStartPositionRaw(rect);
                            nexproject.getClip(i2, true).getCrop().setEndPositionRaw(rect);
                        }
                    }
                }
            }
            a(nexproject, context, context2);
            return a;
        }
        Log.d(w, String.format("Template Apply Single Start(%d %d)", new Object[]{Integer.valueOf(nexproject.getTotalClipCount(true)), Integer.valueOf(clone.getTotalClipCount(true))}));
        a = a(clone, nexproject, context, this.B, true);
        if (a != null) {
            return a;
        }
        nexproject.updateTimeLine(false);
        if (this.k >= 0) {
            nexproject.setProjectAudioFadeInTime(this.k);
        }
        if (this.l >= 0) {
            nexproject.setProjectAudioFadeOutTime(this.l);
        }
        nexproject.updateProject();
        if (this.f != null) {
            b(nexproject, context, context2);
            return a;
        }
        a(nexproject, context, context2);
        return a;
    }

    String a(nexProject nexproject, nexProject nexproject2, Context context, ArrayList<e> arrayList, boolean z) {
        int c = c();
        int size = arrayList.size();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= size) {
                break;
            }
            e eVar = (e) arrayList.get(i2);
            i = eVar.h();
            int c2 = eVar.c() + i;
            int d = eVar.d() + i;
            i += eVar.e();
            if (i <= c2) {
                i = c2;
            }
            boolean f = eVar.f();
            int i3 = eVar.r;
            int totalClipCount = nexproject.getTotalClipCount(true);
            if (totalClipCount <= 0 && !z) {
                Log.d(w, String.format("setProjectWithEffects clip apply end", new Object[0]));
                break;
            }
            if (!eVar.a(nexproject2, context, this.q)) {
                if (totalClipCount > 0) {
                    if (this.m == 1 && !z && nexproject.getClip(0, true).getProjectDuration() - c2 < c) {
                        this.v = true;
                        Log.d(w, String.format("setProjectWithEffects clip apply end for outro on single video", new Object[0]));
                        break;
                    }
                    if (!z) {
                        this.s = eVar.c;
                    }
                    int i4 = c2;
                    int i5 = i;
                    int i6 = d;
                    int i7 = c2;
                    while (nexproject.getTotalClipCount(true) > 0) {
                        nexClip clip = nexproject.getClip(0, true);
                        int projectDuration = clip.getProjectDuration();
                        if (clip.getClipType() == 1) {
                            Rect rect;
                            Rect rect2;
                            clip.getCrop().setFaceDetectSpeed(i3);
                            if (clip.getCrop().getEndPosionLock()) {
                                rect = new Rect();
                                rect2 = new Rect();
                                clip.getCrop().getStartPosition(rect);
                                clip.getCrop().getEndPosition(rect2);
                                clip.getCrop().applyCropSpeed(rect, rect2, clip.getWidth(), clip.getHeight(), i3, projectDuration);
                                clip.getCrop().shrinkToAspect(rect, nexApplicationConfig.getAspectRatio());
                                clip.getCrop().shrinkToAspect(rect2, nexApplicationConfig.getAspectRatio());
                                clip.getCrop().setStartPosition(rect);
                                clip.getCrop().setEndPosition(rect2);
                            }
                            if (projectDuration > i7) {
                                clip.setImageClipDuration(i7);
                                if (clip.getCrop().getEndPosionLock()) {
                                    rect = new Rect();
                                    rect2 = new Rect();
                                    clip.getCrop().getStartPosition(rect);
                                    clip.getCrop().getEndPosition(rect2);
                                    clip.getCrop().applyCropSpeed(rect, rect2, clip.getWidth(), clip.getHeight(), i3, clip.getImageClipDuration());
                                    clip.getCrop().shrinkToAspect(rect, nexApplicationConfig.getAspectRatio());
                                    clip.getCrop().shrinkToAspect(rect2, nexApplicationConfig.getAspectRatio());
                                    clip.getCrop().setStartPosition(rect);
                                    clip.getCrop().setEndPosition(rect2);
                                }
                                nexproject.remove(clip);
                                nexproject2.add(clip);
                                eVar.a("0", clip, true, this.q, this.r);
                                eVar.a(nexproject2, clip);
                                eVar.a(nexproject2, clip, this.s, z);
                                b(nexproject2);
                            } else if (projectDuration >= i6) {
                                nexproject.remove(clip);
                                nexproject2.add(clip);
                                eVar.a("0", clip, true, this.q, this.r);
                                eVar.a(nexproject2, clip);
                                eVar.a(nexproject2, clip, this.s, z);
                                b(nexproject2);
                                break;
                            } else if (i7 <= 5000 || nexproject.getTotalClipCount(true) == 1 || !f) {
                                clip.setImageClipDuration(i4);
                                if (clip.getCrop().getEndPosionLock()) {
                                    rect = new Rect();
                                    rect2 = new Rect();
                                    clip.getCrop().getStartPosition(rect);
                                    clip.getCrop().getEndPosition(rect2);
                                    clip.getCrop().applyCropSpeed(rect, rect2, clip.getWidth(), clip.getHeight(), i3, clip.getImageClipDuration());
                                    clip.getCrop().shrinkToAspect(rect, nexApplicationConfig.getAspectRatio());
                                    clip.getCrop().shrinkToAspect(rect2, nexApplicationConfig.getAspectRatio());
                                    clip.getCrop().setStartPosition(rect);
                                    clip.getCrop().setEndPosition(rect2);
                                }
                                nexproject.remove(clip);
                                nexproject2.add(clip);
                                eVar.a("0", clip, true, this.q, this.r);
                                eVar.a(nexproject2, clip);
                                eVar.a(nexproject2, clip, this.s, z);
                                b(nexproject2);
                            } else {
                                c2 = i4 - projectDuration;
                                nexproject.remove(clip);
                                nexproject2.add(clip);
                                if (c2 <= 0) {
                                    eVar.a("1", clip, true, this.q, this.r);
                                    eVar.a(nexproject2, clip);
                                    eVar.a(nexproject2, clip, this.s, z);
                                    b(nexproject2);
                                    break;
                                }
                                eVar.a("1", clip, false, this.q, this.r);
                                eVar.a(nexproject2, clip);
                                eVar.a(nexproject2, clip, this.s, z);
                                i4 = c2;
                            }
                        } else if (projectDuration < i6) {
                            if (eVar.g()) {
                                nexproject.remove(clip);
                                nexproject2.add(clip);
                                eVar.a("2", clip, false, this.q, this.r);
                                eVar.a(nexproject2, clip);
                                eVar.a(nexproject2, clip, this.s, z);
                                if (!this.t) {
                                    clip.getVideoClipEdit().setSpeedControl(100);
                                    if (nexproject.getTotalClipCount(true) <= 0) {
                                        clip.setTemplateEffectID(clip.getTemplateEffectID() & nexEngine.ExportHEVCMainTierLevel62);
                                    }
                                }
                                i5 -= projectDuration;
                                i6 -= projectDuration;
                                i7 -= projectDuration;
                            } else {
                                nexproject.remove(clip);
                            }
                        } else if (projectDuration <= i5) {
                            nexproject.remove(clip);
                            nexproject2.add(clip);
                            eVar.a("3", clip, true, this.q, this.r);
                            eVar.a(nexproject2, clip);
                            eVar.a(nexproject2, clip, this.s, z);
                            b(nexproject2);
                            if (!this.t) {
                                clip.getVideoClipEdit().setSpeedControl(100);
                                c(nexproject2);
                            }
                        } else {
                            e eVar2 = (e) arrayList.get(i2 + 1 >= size ? 0 : i2 + 1);
                            d = projectDuration - i6;
                            totalClipCount = eVar2.d() + eVar2.h();
                            if (projectDuration - i7 <= totalClipCount && !eVar2.a() && eVar.g()) {
                                if (d >= totalClipCount) {
                                    i7 = i6;
                                } else {
                                    nexproject.remove(clip);
                                    nexproject2.add(clip);
                                    eVar.a("3", clip, true, this.q, this.r);
                                    eVar.a(nexproject2, clip);
                                    eVar.a(nexproject2, clip, this.s, z);
                                    b(nexproject2);
                                    if (!this.t) {
                                        clip.getVideoClipEdit().setSpeedControl(100);
                                        c(nexproject2);
                                    }
                                }
                            }
                            i = clip.getVideoClipEdit().getSpeedControl();
                            nexClip dup = nexClip.dup(clip);
                            nexproject2.add(dup);
                            dup.setRotateDegree(clip.getRotateDegree());
                            dup.getVideoClipEdit().setSpeedControl(i);
                            if (i != 100) {
                                i7 = (i * i7) / 100;
                            }
                            dup.getVideoClipEdit().setTrim(clip.getVideoClipEdit().getStartTrimTime(), clip.getVideoClipEdit().getStartTrimTime() + i7);
                            clip.getVideoClipEdit().setTrim(clip.getVideoClipEdit().getStartTrimTime() + i7, clip.getVideoClipEdit().getEndTrimTime());
                            eVar.a("4", dup, true, this.q, this.r);
                            eVar.a(nexproject2, dup);
                            eVar.a(nexproject2, dup, this.s, z);
                            if (this.t) {
                                b(nexproject2);
                            } else {
                                clip.getVideoClipEdit().setSpeedControl(100);
                                dup.getVideoClipEdit().setSpeedControl(100);
                                c(nexproject2);
                            }
                        }
                    }
                } else {
                    Log.d(w, String.format("setProjectWithEffects clip apply end", new Object[0]));
                    break;
                }
            } else if (z) {
                nexClip clip2 = nexproject2.getClip(nexproject2.getTotalClipCount(true) - 1, true);
                if (clip2 != null) {
                    eVar.a(nexproject2, clip2, this.s, z);
                }
            } else {
                this.s = eVar.c;
            }
            i = i2 + 1;
        }
        return null;
    }

    String d(nexProject nexproject, Context context, Context context2) {
        int totalTime = nexproject.getTotalTime();
        Log.d(w, String.format("applyTemplate30_Project ( ProjectTime:%d TemplateMinDur:%d)", new Object[]{Integer.valueOf(totalTime), Integer.valueOf(b())}));
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        for (totalTime = 0; totalTime < nexproject.getTotalClipCount(true); totalTime++) {
            nexClip clip = nexproject.getClip(totalTime, true);
            if (clip.getClipType() == 1) {
                i4++;
            } else {
                if (i2 < clip.getProjectDuration()) {
                    i2 = clip.getProjectDuration();
                }
                i += clip.getHeight() * clip.getWidth();
                i3++;
            }
        }
        Log.d(w, String.format("applyTemplate30_Project(I:%d V:%d)", new Object[]{Integer.valueOf(i4), Integer.valueOf(i3)}));
        if (i4 <= 0 && i3 <= 0) {
            return "Not support project on 3.0 template";
        }
        if (i3 > 0) {
            return "Template applying failed(variable content) with preprocessing fail";
        }
        nexProject clone = nexProject.clone(nexproject);
        nexproject.allClear(true);
        nexproject.getTopDrawInfo().clear();
        String a = a(clone, nexproject, context, context2);
        nexproject.updateTimeLine(false);
        Log.d(w, "Template3.0 make Project end with only images: " + a);
        return a;
    }

    String a(nexProject nexproject, nexProject nexproject2, Context context, Context context2) {
        e eVar;
        nexClip nexclip;
        nexClip clip;
        Log.d(w, String.format("Template imageProject Apply Start(%d %d)", new Object[]{Integer.valueOf(nexproject2.getTotalClipCount(true)), Integer.valueOf(nexproject.getTotalClipCount(true))}));
        if (!this.B.isEmpty()) {
            int totalClipCount = nexproject.getTotalClipCount(true);
            Iterator it = this.B.iterator();
            while (it.hasNext()) {
                eVar = (e) it.next();
                if (eVar.a(true) >= totalClipCount) {
                    nexclip = null;
                    List a = eVar.a(0, 0, null);
                    for (d dVar : eVar.j()) {
                        if (!dVar.a(nexproject2, context, eVar, 0, this.q)) {
                            if (nexproject.getTotalClipCount(true) > 0) {
                                clip = nexproject.getClip(0, true);
                                nexproject.remove(clip);
                                nexproject2.add(clip);
                                clip.clearDrawInfos();
                                clip.mStartTime = Integer.MAX_VALUE;
                                clip.mEndTime = Integer.MIN_VALUE;
                            } else {
                                clip = nexclip;
                            }
                            dVar.a(clip, eVar.a, eVar.i(), 0, this.q, null, false);
                            dVar.a(nexproject2, 0, eVar.i());
                            nexclip = clip;
                        }
                    }
                    a(nexproject2, a);
                    nexproject2.updateProject();
                    b(nexproject2, context, context2);
                    Log.d(w, String.format("Template imageProject Apply single effect(%d %d)", new Object[]{Integer.valueOf(nexproject2.getTotalClipCount(true)), Integer.valueOf(nexproject.getTotalClipCount(true))}));
                    return null;
                }
            }
        }
        Object obj = 1;
        int f = f();
        int i = 0;
        nexclip = null;
        this.s = "";
        Object obj2 = 1;
        while (nexproject.getTotalClipCount(true) > 0 && !this.F) {
            int i2;
            List<d> j;
            if (obj2 != null) {
                Object obj3;
                i2 = 0;
                while (true) {
                    int i3 = i2;
                    if (i3 >= this.y.size()) {
                        break;
                    }
                    eVar = (e) this.y.get(i3);
                    List a2 = eVar.a(i, 0, null);
                    j = eVar.j();
                    this.s = eVar.c;
                    for (d dVar2 : j) {
                        if (!dVar2.a(nexproject2, context, eVar, i, this.q)) {
                            if (nexproject.getTotalClipCount(true) > f) {
                                clip = nexproject.getClip(0, true);
                                nexproject.remove(clip);
                                nexproject2.add(clip);
                                clip.clearDrawInfos();
                                clip.mStartTime = Integer.MAX_VALUE;
                                clip.mEndTime = Integer.MIN_VALUE;
                            } else {
                                clip = nexclip;
                            }
                            dVar2.a(clip, eVar.a, eVar.i(), i, this.q, null, false);
                            dVar2.a(nexproject2, i, eVar.i());
                            nexclip = clip;
                        }
                    }
                    i = a(nexproject2, a2);
                    i2 = i3 + 1;
                }
                if (nexproject.getTotalClipCount(true) <= f) {
                    obj3 = null;
                } else {
                    obj3 = obj;
                }
                Log.d(w, String.format("Template imageProject Apply Intro End(%d %d) (%d)", new Object[]{Integer.valueOf(nexproject2.getTotalClipCount(true)), Integer.valueOf(nexproject.getTotalClipCount(true)), Integer.valueOf(f)}));
                obj = obj3;
                obj2 = null;
            } else if (obj != null) {
                i2 = 0;
                while (true) {
                    int i4 = i2;
                    if (i4 >= this.z.size()) {
                        break;
                    }
                    e eVar2 = (e) this.z.get(i4);
                    List a3 = eVar2.a(i, 0, null);
                    j = eVar2.j();
                    this.s = eVar2.c;
                    for (d dVar22 : j) {
                        if (!dVar22.a(nexproject2, context, eVar2, i, this.q)) {
                            if (nexproject.getTotalClipCount(true) > f) {
                                nexclip = nexproject.getClip(0, true);
                                nexproject.remove(nexclip);
                                nexproject2.add(nexclip);
                                nexclip.clearDrawInfos();
                                nexclip.mStartTime = Integer.MAX_VALUE;
                                nexclip.mEndTime = Integer.MIN_VALUE;
                            }
                            dVar22.a(nexclip, eVar2.a, eVar2.i(), i, this.q, null, false);
                            dVar22.a(nexproject2, i, eVar2.i());
                        }
                    }
                    i = a(nexproject2, a3);
                    if (nexproject.getTotalClipCount(true) <= f) {
                        obj = null;
                        Log.d(w, String.format("Template imageProject Apply Loop End(%d %d) (%d)", new Object[]{Integer.valueOf(nexproject2.getTotalClipCount(true)), Integer.valueOf(nexproject.getTotalClipCount(true)), Integer.valueOf(f)}));
                        break;
                    }
                    i2 = i4 + 1;
                }
            } else {
                ArrayList arrayList;
                ArrayList arrayList2 = this.A;
                if (this.C == null || this.C.size() <= 0) {
                    arrayList = arrayList2;
                } else if (this.C.containsKey(this.s)) {
                    arrayList2 = (ArrayList) this.C.get(this.s);
                    Log.d(w, String.format("Template imageProject select Outro(%s)", new Object[]{this.s}));
                    arrayList = arrayList2;
                } else {
                    arrayList = (ArrayList) this.C.values().iterator().next();
                }
                i2 = 0;
                while (true) {
                    int i5 = i2;
                    if (i5 >= arrayList.size()) {
                        break;
                    }
                    eVar = (e) arrayList.get(i5);
                    List a4 = eVar.a(i, 0, this.s);
                    nexclip = null;
                    for (d dVar222 : eVar.j()) {
                        if (!dVar222.a(nexproject2, context, eVar, i, this.q)) {
                            if (nexproject.getTotalClipCount(true) > 0) {
                                clip = nexproject.getClip(0, true);
                                nexproject.remove(clip);
                                nexproject2.add(clip);
                                clip.clearDrawInfos();
                                clip.mStartTime = Integer.MAX_VALUE;
                                clip.mEndTime = Integer.MIN_VALUE;
                            } else {
                                clip = nexclip;
                            }
                            dVar222.a(clip, eVar.a, eVar.i(), i, this.q, this.s, false);
                            dVar222.a(nexproject2, i, eVar.i());
                            nexclip = clip;
                        }
                    }
                    i = a(nexproject2, a4);
                    i2 = i5 + 1;
                }
                Log.d(w, String.format("Template imageProject Apply Outro End(%d %d) (%d)", new Object[]{Integer.valueOf(nexproject2.getTotalClipCount(true)), Integer.valueOf(nexproject.getTotalClipCount(true)), Integer.valueOf(f)}));
            }
        }
        if (this.F) {
            return "apply Template user canceled";
        }
        nexproject2.updateProject();
        a(nexproject2, context, context2);
        return null;
    }

    int a(nexProject nexproject, List<nexDrawInfo> list) {
        int i = 0;
        for (nexDrawInfo nexdrawinfo : list) {
            nexproject.getTopDrawInfo().add(nexdrawinfo);
            if (nexdrawinfo.getIsTransition() == 1) {
                i = nexdrawinfo.getStartTime();
            } else {
                i = nexdrawinfo.getEndTime();
            }
        }
        return i;
    }

    void b(nexProject nexproject) {
        int totalClipCount = nexproject.getTotalClipCount(true);
        if (totalClipCount > 1) {
            nexClip clip = nexproject.getClip(totalClipCount - 2, true);
            int templateEffectID = clip.getTemplateEffectID() & -251658241;
            nexClip clip2 = nexproject.getClip(totalClipCount - 1, true);
            int templateEffectID2 = clip2.getTemplateEffectID() & -251658241;
            if (templateEffectID != templateEffectID2 && clip.getTransitionEffect().getDuration() >= clip2.getProjectDuration() - clip2.getTransitionEffect().getDuration()) {
                clip.getTransitionEffect(true).setEffectNone();
                clip.getTransitionEffect(true).setDuration(0);
            }
            if (templateEffectID != templateEffectID2 && clip2.getProjectDuration() <= clip2.getTransitionEffect().getDuration()) {
                clip2.getTransitionEffect(true).setEffectNone();
                clip2.getTransitionEffect(true).setDuration(0);
            }
        }
    }

    void c(nexProject nexproject) {
        int totalClipCount = nexproject.getTotalClipCount(true);
        if (totalClipCount > 0) {
            nexClip clip = nexproject.getClip(totalClipCount - 1, true);
            if (clip != null && !clip.getTransitionEffect().getId().equals("none") && clip.getTransitionEffect().getDuration() > 0) {
                totalClipCount = clip.getTransitionEffect().getDuration();
                if (clip.getVideoClipEdit().getSpeedControl() != 100) {
                    totalClipCount = (totalClipCount * clip.getVideoClipEdit().getSpeedControl()) / 100;
                }
                nexClip dup = nexClip.dup(clip);
                nexproject.add(dup);
                dup.setRotateDegree(clip.getRotateDegree());
                dup.getVideoClipEdit().setSpeedControl(clip.getVideoClipEdit().getSpeedControl());
                dup.setColorEffect(clip.getColorEffect());
                dup.setBrightness(clip.getBrightness());
                dup.setContrast(clip.getContrast());
                dup.setSaturation(clip.getSaturation());
                dup.setTemplateEffectID(clip.getTemplateEffectID());
                dup.setClipVolume(clip.getClipVolume());
                dup.setAudioOnOff(clip.getAudioOnOff());
                dup.getClipEffect().setEffect(clip.getTransitionEffect().getId() + ".force_effect");
                dup.getTransitionEffect().setTransitionEffect("none");
                dup.getTransitionEffect().setDuration(0);
                clip.getTransitionEffect().setTransitionEffect("none");
                clip.getTransitionEffect().setDuration(0);
                dup.getVideoClipEdit().setTrim(clip.getVideoClipEdit().getEndTrimTime() - totalClipCount, clip.getVideoClipEdit().getEndTrimTime());
                clip.getVideoClipEdit().setTrim(clip.getVideoClipEdit().getStartTrimTime(), clip.getVideoClipEdit().getEndTrimTime() - totalClipCount);
                Log.d(w, String.format("Template split clip(%d %d) next(%d %d %s)", new Object[]{Integer.valueOf(clip.getProjectStartTime()), Integer.valueOf(clip.getVideoClipEdit().getStartTrimTime() + totalClipCount), Integer.valueOf(totalClipCount + clip.getVideoClipEdit().getStartTrimTime()), Integer.valueOf(dup.getProjectEndTime()), dup.getTransitionEffect().getId()}));
            }
        }
    }

    void h() {
        Log.d(w, "setCancel");
        this.F = true;
    }
}
