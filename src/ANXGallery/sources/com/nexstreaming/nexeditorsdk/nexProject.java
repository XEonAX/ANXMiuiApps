package com.nexstreaming.nexeditorsdk;

import android.content.Intent;
import android.graphics.Rect;
import android.util.Log;
import com.google.gson_nex.Gson;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.nexstreaming.kminternal.kinemaster.editorwrapper.a.e;
import com.nexstreaming.kminternal.kinemaster.editorwrapper.a.f;
import com.nexstreaming.kminternal.kinemaster.editorwrapper.a.g;
import com.nexstreaming.nexeditorsdk.exception.ProjectAlreadyAttachedException;
import com.nexstreaming.nexeditorsdk.nexSaveDataFormat.nexAudioItemOf;
import com.nexstreaming.nexeditorsdk.nexSaveDataFormat.nexClipOf;
import com.nexstreaming.nexeditorsdk.nexSaveDataFormat.nexProjectOf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class nexProject extends b {
    private static String TAG = "nexProject";
    public static final int kAutoThemeClipDuration = 6000;
    public static final int kAutoThemeTransitionDuration = 2000;
    private static int sNextId = 1;
    private int mAudioFadeInTime;
    private int mAudioFadeOutTime;
    int mBGMTrimEndTime;
    int mBGMTrimStartTime;
    private float mBGMVolumeScale;
    private nexClip mBackGroundMusic;
    private boolean mEmptyTheme;
    private String mEndingTitle;
    private int mId;
    private String mLetterbox;
    boolean mLoopBGM;
    private int mManualVolCtl;
    private String mOpeningTitle;
    private List<nexOverlayItem> mOverlayItems;
    private List<nexClip> mPrimaryItems;
    private int mProjectVolume;
    private List<nexAudioItem> mSecondaryItems;
    int mStartTimeBGM;
    private List<nexDrawInfo> mSubEffectInfo;
    private int mTemplateApplyMode;
    private boolean mTemplateOverlappedTransition;
    private nexTheme mTheme;
    private String mThemeId;
    private List<nexDrawInfo> mTopEffectInfo;
    boolean mUseThemeMusic2BGM;
    private List<nexOverlayItem> m_externalView_overlayItems;
    private List<nexClip> m_externalView_primaryItems;
    private List<nexAudioItem> m_externalView_secondaryItems;

    private static class a implements Comparator<nexAudioItem> {
        private a() {
        }

        /* renamed from: a */
        public int compare(nexAudioItem nexaudioitem, nexAudioItem nexaudioitem2) {
            if (nexaudioitem.getStartTime() > nexaudioitem2.getStartTime()) {
                return -1;
            }
            return nexaudioitem.getStartTime() < nexaudioitem2.getStartTime() ? 1 : 0;
        }
    }

    private class b implements Comparator<nexOverlayItem> {
        private b() {
        }

        /* renamed from: a */
        public int compare(nexOverlayItem nexoverlayitem, nexOverlayItem nexoverlayitem2) {
            if (nexoverlayitem.mStartTime > nexoverlayitem2.mStartTime) {
                return -1;
            }
            return nexoverlayitem.mStartTime < nexoverlayitem2.mStartTime ? 1 : 0;
        }
    }

    public nexProject() {
        this.mThemeId = "com.nexstreaming.kinemaster.basic";
        this.mLetterbox = nexApplicationConfig.getDefaultLetterboxEffect();
        this.mTheme = null;
        this.mEmptyTheme = false;
        this.mProjectVolume = 100;
        this.mManualVolCtl = 0;
        this.mAudioFadeInTime = 200;
        this.mAudioFadeOutTime = 5000;
        this.mOpeningTitle = null;
        this.mEndingTitle = null;
        this.mBGMVolumeScale = 0.5f;
        this.mUseThemeMusic2BGM = true;
        this.mLoopBGM = true;
        this.mStartTimeBGM = 0;
        this.mBackGroundMusic = null;
        this.mTemplateApplyMode = 0;
        this.mTemplateOverlappedTransition = true;
        this.mOverlayItems = new ArrayList();
        this.m_externalView_overlayItems = null;
        this.mPrimaryItems = new ArrayList();
        this.m_externalView_primaryItems = null;
        this.mSecondaryItems = new ArrayList();
        this.m_externalView_secondaryItems = null;
        this.mTopEffectInfo = new ArrayList();
        this.mSubEffectInfo = new ArrayList();
        this.mThemeId = null;
        this.mEmptyTheme = true;
        int i = sNextId;
        sNextId = i + 1;
        this.mId = i;
        Log.d(TAG, "[" + this.mId + "] nexProject create");
    }

    public String getLetterboxEffect() {
        return this.mLetterbox;
    }

    public void setLetterboxEffect(String str) {
        this.mLetterbox = str;
    }

    @Deprecated
    public nexProject(nexTheme nextheme) {
        this.mThemeId = "com.nexstreaming.kinemaster.basic";
        this.mLetterbox = nexApplicationConfig.getDefaultLetterboxEffect();
        this.mTheme = null;
        this.mEmptyTheme = false;
        this.mProjectVolume = 100;
        this.mManualVolCtl = 0;
        this.mAudioFadeInTime = 200;
        this.mAudioFadeOutTime = 5000;
        this.mOpeningTitle = null;
        this.mEndingTitle = null;
        this.mBGMVolumeScale = 0.5f;
        this.mUseThemeMusic2BGM = true;
        this.mLoopBGM = true;
        this.mStartTimeBGM = 0;
        this.mBackGroundMusic = null;
        this.mTemplateApplyMode = 0;
        this.mTemplateOverlappedTransition = true;
        this.mOverlayItems = new ArrayList();
        this.m_externalView_overlayItems = null;
        this.mPrimaryItems = new ArrayList();
        this.m_externalView_primaryItems = null;
        this.mSecondaryItems = new ArrayList();
        this.m_externalView_secondaryItems = null;
        this.mTopEffectInfo = new ArrayList();
        this.mSubEffectInfo = new ArrayList();
        this.mThemeId = null;
        this.mEmptyTheme = true;
        int i = sNextId;
        sNextId = i + 1;
        this.mId = i;
        Log.d(TAG, "[" + this.mId + "] nexProject create");
    }

    @Deprecated
    public nexProject(String str) {
        this.mThemeId = "com.nexstreaming.kinemaster.basic";
        this.mLetterbox = nexApplicationConfig.getDefaultLetterboxEffect();
        this.mTheme = null;
        this.mEmptyTheme = false;
        this.mProjectVolume = 100;
        this.mManualVolCtl = 0;
        this.mAudioFadeInTime = 200;
        this.mAudioFadeOutTime = 5000;
        this.mOpeningTitle = null;
        this.mEndingTitle = null;
        this.mBGMVolumeScale = 0.5f;
        this.mUseThemeMusic2BGM = true;
        this.mLoopBGM = true;
        this.mStartTimeBGM = 0;
        this.mBackGroundMusic = null;
        this.mTemplateApplyMode = 0;
        this.mTemplateOverlappedTransition = true;
        this.mOverlayItems = new ArrayList();
        this.m_externalView_overlayItems = null;
        this.mPrimaryItems = new ArrayList();
        this.m_externalView_primaryItems = null;
        this.mSecondaryItems = new ArrayList();
        this.m_externalView_secondaryItems = null;
        this.mTopEffectInfo = new ArrayList();
        this.mSubEffectInfo = new ArrayList();
        this.mThemeId = null;
        this.mEmptyTheme = true;
        int i = sNextId;
        sNextId = i + 1;
        this.mId = i;
        Log.d(TAG, "[" + this.mId + "] nexProject create");
    }

    @Deprecated
    public nexProject(String str, String str2, String str3) {
        this.mThemeId = "com.nexstreaming.kinemaster.basic";
        this.mLetterbox = nexApplicationConfig.getDefaultLetterboxEffect();
        this.mTheme = null;
        this.mEmptyTheme = false;
        this.mProjectVolume = 100;
        this.mManualVolCtl = 0;
        this.mAudioFadeInTime = 200;
        this.mAudioFadeOutTime = 5000;
        this.mOpeningTitle = null;
        this.mEndingTitle = null;
        this.mBGMVolumeScale = 0.5f;
        this.mUseThemeMusic2BGM = true;
        this.mLoopBGM = true;
        this.mStartTimeBGM = 0;
        this.mBackGroundMusic = null;
        this.mTemplateApplyMode = 0;
        this.mTemplateOverlappedTransition = true;
        this.mOverlayItems = new ArrayList();
        this.m_externalView_overlayItems = null;
        this.mPrimaryItems = new ArrayList();
        this.m_externalView_primaryItems = null;
        this.mSecondaryItems = new ArrayList();
        this.m_externalView_secondaryItems = null;
        this.mTopEffectInfo = new ArrayList();
        this.mSubEffectInfo = new ArrayList();
        this.mThemeId = null;
        this.mEmptyTheme = true;
        int i = sNextId;
        sNextId = i + 1;
        this.mId = i;
        Log.d(TAG, "[" + this.mId + "] nexProject create");
    }

    public void setTitle(String str, String str2) {
        this.mOpeningTitle = str;
        this.mEndingTitle = str2;
        updateTimeLine(false);
        this.mNeedLoadList = true;
    }

    public String getOpeningTitle() {
        return this.mOpeningTitle;
    }

    public String getEndingTitle() {
        return this.mEndingTitle;
    }

    public List<nexClip> getPrimaryItems() {
        if (this.m_externalView_primaryItems == null) {
            this.m_externalView_primaryItems = Collections.unmodifiableList(this.mPrimaryItems);
        }
        return this.m_externalView_primaryItems;
    }

    @Deprecated
    public List<nexClip> getSecondaryItems() {
        return null;
    }

    public List<nexAudioItem> getAudioItems() {
        if (this.m_externalView_secondaryItems == null) {
            this.m_externalView_secondaryItems = Collections.unmodifiableList(this.mSecondaryItems);
        }
        return this.m_externalView_secondaryItems;
    }

    private int isPrimaryItem(nexClip nexclip) {
        if (nexclip.getClipType() == 3) {
            return 0;
        }
        if (nexclip.getClipType() == 4 || nexclip.getClipType() == 1) {
            return 1;
        }
        return -1;
    }

    public int getTotalClipCount(boolean z) {
        if (z) {
            return this.mPrimaryItems.size();
        }
        return this.mSecondaryItems.size();
    }

    @Deprecated
    public int getTotalVisualClipCount() {
        int size = this.mPrimaryItems.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            int trimCount;
            nexClip nexclip = (nexClip) this.mPrimaryItems.get(i);
            if (nexclip.getClipType() == 4) {
                trimCount = nexclip.getVideoClipEdit().getTrimCount();
                if (trimCount == 0) {
                    trimCount = 1;
                }
                trimCount += i2;
            } else if (nexclip.getClipType() == 1) {
                trimCount = i2 + 1;
            } else {
                trimCount = i2;
            }
            i++;
            i2 = trimCount;
        }
        return i2;
    }

    public int add(nexClip nexclip) {
        int isPrimaryItem = isPrimaryItem(nexclip);
        if (isPrimaryItem < 0) {
            return isPrimaryItem;
        }
        if (isPrimaryItem == 1) {
            return add(this.mPrimaryItems.size(), true, nexclip);
        }
        return add(this.mSecondaryItems.size(), false, nexclip);
    }

    public int add(int i, boolean z, nexClip nexclip) {
        if (nexclip.getAttachmentState()) {
            Log.e(TAG, "[" + this.mId + "] add() ProjectAlreadyAttachedException index=" + i);
            throw new ProjectAlreadyAttachedException();
        }
        updateTimeLine(false);
        nexclip.setAttachmentState(true, this);
        if (z) {
            if (this.mEmptyTheme) {
                if (!nexclip.isFaceDetectProcessed()) {
                }
                nexclip.getClipEffect(true).setEffectNone();
                nexclip.getTransitionEffect(true).setEffectNone();
                nexclip.getTransitionEffect(true).setDuration(0);
            }
            this.mPrimaryItems.add(i, nexclip);
        } else {
            addAudio(nexclip, i, nexclip.getTotalTime() + i);
        }
        return 0;
    }

    private int addClone(int i, nexClip nexclip) {
        updateTimeLine(false);
        nexclip.setAttachmentState(true, this);
        this.mPrimaryItems.add(i, nexclip);
        return 0;
    }

    private int addCloneAudio(int i, nexAudioItem nexaudioitem) {
        updateTimeLine(false);
        nexaudioitem.getClip().setAttachmentState(true, this);
        this.mSecondaryItems.add(i, nexaudioitem);
        return 0;
    }

    public int addAudio(nexClip nexclip, int i, int i2) {
        if (!checkAudioTime(i, i2)) {
            return -1;
        }
        nexclip.setAttachmentState(true, this);
        nexAudioItem nexaudioitem = new nexAudioItem(nexclip, i, i2);
        int id = nexaudioitem.getId();
        this.mSecondaryItems.add(nexaudioitem);
        Collections.sort(this.mSecondaryItems, new a());
        this.mNeedLoadList = true;
        return id;
    }

    public int changeAudio(nexAudioItem nexaudioitem, int i, int i2) {
        remove(nexaudioitem.getClip());
        if (checkAudioTime(i, i2)) {
            nexaudioitem.setProjectTime(i, i2);
            this.mSecondaryItems.add(nexaudioitem);
            nexaudioitem.getClip().setAttachmentState(true, this);
            Collections.sort(this.mSecondaryItems, new a());
            this.mNeedLoadList = true;
            return 0;
        }
        this.mSecondaryItems.add(nexaudioitem);
        nexaudioitem.getClip().setAttachmentState(true, this);
        Collections.sort(this.mSecondaryItems, new a());
        return -1;
    }

    private boolean checkAudioTime(int i, int i2) {
        ArrayList arrayList = new ArrayList();
        for (nexAudioItem nexaudioitem : this.mSecondaryItems) {
            if (nexaudioitem.getEndTime() > i && nexaudioitem.getStartTime() < i2) {
                arrayList.add(nexaudioitem);
            }
        }
        int i3 = 0;
        int i4 = 0;
        while (i3 < arrayList.size() - 1) {
            if (((nexAudioItem) arrayList.get(i3)).getEndTime() > ((nexAudioItem) arrayList.get(i3 + 1)).getStartTime() && ((nexAudioItem) arrayList.get(i3)).getStartTime() < ((nexAudioItem) arrayList.get(i3 + 1)).getEndTime()) {
                i4++;
            }
            i3++;
        }
        if (i4 < 2) {
            return true;
        }
        return false;
    }

    public nexAudioItem getAudioItem(int i) {
        return (nexAudioItem) this.mSecondaryItems.get(i);
    }

    public nexAudioItem findAudioItem(int i) {
        for (nexAudioItem nexaudioitem : this.mSecondaryItems) {
            if (nexaudioitem.getId() == i) {
                return nexaudioitem;
            }
        }
        return null;
    }

    @Deprecated
    public void setThemeId(String str) {
        this.mEmptyTheme = true;
        this.mThemeId = null;
    }

    public boolean setBackgroundMusicPath(String str) {
        if (str == null) {
            if (this.mBackGroundMusic != null) {
                this.mNeedLoadList = true;
            }
            this.mBackGroundMusic = null;
            return true;
        }
        nexClip supportedClip = nexClip.getSupportedClip(str);
        if (supportedClip == null || supportedClip.getClipType() != 3) {
            return false;
        }
        this.mBackGroundMusic = supportedClip;
        this.mNeedLoadList = true;
        return true;
    }

    public nexClip getBackgroundMusic() {
        return this.mBackGroundMusic;
    }

    public String getBackgroundMusicPath() {
        if (this.mBackGroundMusic != null) {
            return this.mBackGroundMusic.getPath();
        }
        return null;
    }

    public void setBackgroundConfig(int i, boolean z, boolean z2) {
        this.mUseThemeMusic2BGM = z;
        this.mLoopBGM = z2;
        this.mStartTimeBGM = i;
        this.mNeedLoadList = true;
    }

    public void setBackgroundTrim(int i, int i2) {
        this.mBGMTrimStartTime = i;
        this.mBGMTrimEndTime = i2;
        this.mNeedLoadList = true;
    }

    public String getThemeId() {
        return this.mThemeId;
    }

    public nexClip getClip(int i, boolean z) {
        if (z) {
            return (nexClip) this.mPrimaryItems.get(i);
        }
        return ((nexAudioItem) this.mSecondaryItems.get(i)).mClip;
    }

    public nexClip getLastPrimaryClip() {
        return (nexClip) this.mPrimaryItems.get(this.mPrimaryItems.size() - 1);
    }

    public nexClip getNextClip(nexClip nexclip) {
        int indexOf = this.mPrimaryItems.indexOf(nexclip);
        if (indexOf == this.mPrimaryItems.size() || indexOf == -1) {
            return null;
        }
        return (nexClip) this.mPrimaryItems.get(indexOf);
    }

    public int indexOf(nexClip nexclip) {
        return this.mPrimaryItems.indexOf(nexclip);
    }

    public void move(int i, nexClip nexclip) {
        int indexOf = this.mPrimaryItems.indexOf(nexclip);
        if (indexOf >= 0 && i != indexOf && this.mPrimaryItems.remove(nexclip)) {
            updateTimeLine(false);
            this.mPrimaryItems.add(i, nexclip);
        }
    }

    public void swap(nexClip nexclip, nexClip nexclip2) {
        int indexOf = this.mPrimaryItems.indexOf(nexclip);
        int indexOf2 = this.mPrimaryItems.indexOf(nexclip2);
        if (indexOf >= 0 && indexOf2 >= 0) {
            Collections.swap(this.mPrimaryItems, indexOf, indexOf2);
        }
    }

    public int remove(nexClip nexclip) {
        int isPrimaryItem = isPrimaryItem(nexclip);
        if (isPrimaryItem < 0) {
            return isPrimaryItem;
        }
        if (isPrimaryItem == 1) {
            this.mPrimaryItems.remove(nexclip);
        } else {
            for (int i = 0; i < this.mSecondaryItems.size(); i++) {
                if (((nexAudioItem) this.mSecondaryItems.get(i)).mClip == nexclip) {
                    this.mSecondaryItems.remove(i);
                    break;
                }
            }
        }
        nexclip.setAttachmentState(false, null);
        updateTimeLine(false);
        return 0;
    }

    public List<nexDrawInfo> getTopDrawInfo() {
        return this.mTopEffectInfo;
    }

    protected void clearDrawInfo() {
        if (this.mTopEffectInfo != null) {
            this.mTopEffectInfo.clear();
        }
        if (this.mSubEffectInfo != null) {
            this.mSubEffectInfo.clear();
        }
        for (nexClip drawInfos : this.mPrimaryItems) {
            drawInfos.getDrawInfos().clear();
        }
    }

    public void allClear(boolean z) {
        int size;
        int i;
        if (z) {
            size = this.mPrimaryItems.size();
            for (i = 0; i < size; i++) {
                ((nexClip) this.mPrimaryItems.get(i)).setAttachmentState(false, null);
            }
            this.mPrimaryItems.clear();
        } else {
            size = this.mSecondaryItems.size();
            for (i = 0; i < size; i++) {
                ((nexAudioItem) this.mSecondaryItems.get(i)).mClip.setAttachmentState(false, null);
            }
            this.mSecondaryItems.clear();
        }
        this.mClipTimeUpdated = false;
        this.mTopEffectInfo.clear();
        this.mSubEffectInfo.clear();
    }

    public void setBGMMasterVolumeScale(float f) {
        if (f < 0.0f) {
            this.mBGMVolumeScale = 0.0f;
        } else if (f > 1.0f) {
            this.mBGMVolumeScale = 1.0f;
        } else {
            this.mBGMVolumeScale = f;
        }
        this.mNeedLoadList = true;
    }

    public float getBGMMasterVolumeScale() {
        return this.mBGMVolumeScale;
    }

    public int getTotalTime() {
        int i;
        if (this.mTemplateApplyMode == 3) {
            int i2 = 0;
            for (i = 0; i < this.mPrimaryItems.size(); i++) {
                nexClip nexclip = (nexClip) this.mPrimaryItems.get(i);
                if (i2 < nexclip.mEndTime) {
                    i2 = nexclip.mEndTime;
                }
            }
            return i2;
        }
        i = this.mPrimaryItems.size();
        if (i == 0) {
            return 0;
        }
        updateProject();
        return ((nexClip) this.mPrimaryItems.get(i - 1)).mEndTime;
    }

    public void setTemplateApplyMode(int i) {
        this.mTemplateApplyMode = i;
    }

    public int getTemplateApplyMode() {
        return this.mTemplateApplyMode;
    }

    public boolean getTemplageOverlappedTransitionMode() {
        return this.mTemplateOverlappedTransition;
    }

    public void setTemplageOverlappedTransitionMode(boolean z) {
        this.mTemplateOverlappedTransition = z;
    }

    public boolean updateProject() {
        int i = 0;
        int totalClipCount = getTotalClipCount(true);
        if (!this.mClipTimeUpdated) {
            return false;
        }
        this.mClipTimeUpdated = false;
        if (totalClipCount == 0) {
            return false;
        }
        if (getTemplateApplyMode() == 3) {
            return true;
        }
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i2 < totalClipCount) {
            int duration;
            nexClip clip = getClip(i2, true);
            clip.mStartTime = i5;
            switch (clip.getClipType()) {
                case 1:
                    i4 = clip.getImageClipDuration();
                    break;
                case 4:
                    if (!clip.getTemplateOverlappedTransition()) {
                        i4 = clip.getVideoClipEdit().getDuration() + clip.getTransitionEffect().getDuration();
                        break;
                    }
                    i4 = clip.getVideoClipEdit().getDuration();
                    break;
            }
            int i6 = i5 + i4;
            i5 = clip.getTransitionEffect(true).getType() == 0 ? 0 : clip.getTransitionEffect(true).getOverlap() != 0 ? (clip.getTransitionEffect(true).getDuration() * 100) / clip.getTransitionEffect(true).getOverlap() : 0;
            if (getTemplateApplyMode() == 2) {
                clip.mTitleEffectStartTime = clip.getClipEffect().getShowStartTime();
                clip.mTitleEffectEndTime = clip.getClipEffect().getShowEndTime();
                i3 = i6 - i5;
                duration = clip.getTransitionEffect(true).getDuration();
            } else {
                clip.mTitleEffectStartTime = i3;
                i3 = i6 - i5;
                clip.mTitleEffectEndTime = i3;
                duration = clip.getTransitionEffect(true).getDuration();
            }
            i3 += duration;
            clip.mEndTime = i6;
            i2++;
            i5 = i6 - i5;
        }
        if (getTemplateApplyMode() == 2) {
            i4 = 0;
            while (i < totalClipCount) {
                nexClip clip2 = getClip(i, true);
                if (clip2 == null) {
                    i++;
                } else {
                    i3 = getLastClipIndexWithEffectID(i, clip2.getTemplateEffectID());
                    i4 = adjustmentEffectTime(i, i3, i4, clip2.getTemplateEffectID());
                    i = i3 + 1;
                }
            }
        }
        return true;
    }

    int getLastClipIndexWithEffectID(int i, int i2) {
        if ((i2 & nexEngine.ExportHEVCMainTierLevel62) == nexEngine.ExportHEVCMainTierLevel62) {
            return i;
        }
        while (i < getTotalClipCount(true)) {
            if ((getClip(i, true).getTemplateEffectID() & -251658241) != i2) {
                return i - 1;
            }
            i++;
        }
        return getTotalClipCount(true) - 1;
    }

    int adjustmentEffectTime(int i, int i2, int i3, int i4) {
        nexClip clip = getClip(i2, true);
        int projectEndTime = clip.getProjectEndTime() - ((clip.getTransitionEffect().getDuration() * clip.getTransitionEffect().getOffset()) / 100);
        int duration = projectEndTime + clip.getTransitionEffect().getDuration();
        int projectStartTime = getClip(i, true).getProjectStartTime();
        int projectEndTime2 = getClip(i2, true).getProjectEndTime();
        for (int i5 = 0; i5 < getTotalClipCount(false); i5++) {
            nexClip clip2 = getClip(i5, false);
            if (clip2.getTemplateEffectID() == (-251658241 & i4) && projectStartTime <= clip2.getProjectStartTime() && projectEndTime2 > clip2.getProjectStartTime()) {
                remove(clip2);
                int templateAudioPos = (((projectEndTime - i3) * clip2.getTemplateAudioPos()) / 100) + i3;
                addAudio(clip2, templateAudioPos, clip2.getTotalTime() + templateAudioPos);
            }
        }
        while (i <= i2) {
            clip = getClip(i, true);
            clip.mTitleEffectStartTime = i3;
            clip.mTitleEffectEndTime = projectEndTime;
            clip.getClipEffect().setEffectShowTime(0, 0);
            i++;
        }
        return duration;
    }

    public void setProjectAudioFadeInTime(int i) {
        this.mAudioFadeInTime = i;
        this.mNeedLoadList = true;
    }

    public void setProjectVolume(int i) {
        this.mProjectVolume = i;
    }

    public int getProjectVolume() {
        return this.mProjectVolume;
    }

    public void setManualVolumeControl(int i) {
        this.mManualVolCtl = i;
    }

    public int getManualVolumeControl() {
        return this.mManualVolCtl;
    }

    public void setProjectAudioFadeOutTime(int i) {
        this.mAudioFadeOutTime = i;
        this.mNeedLoadList = true;
    }

    public int getProjectAudioFadeInTime() {
        return this.mAudioFadeInTime;
    }

    public int getProjectAudioFadeOutTime() {
        return this.mAudioFadeOutTime;
    }

    public boolean addOverlay(nexOverlayItem nexoverlayitem) {
        if (nexoverlayitem.getId() == 0) {
            return false;
        }
        this.mOverlayItems.add(nexoverlayitem);
        Collections.sort(this.mOverlayItems, new b());
        return true;
    }

    public nexOverlayItem getOverlay(int i) {
        for (nexOverlayItem nexoverlayitem : this.mOverlayItems) {
            if (nexoverlayitem.getId() == i) {
                return nexoverlayitem;
            }
        }
        return null;
    }

    public boolean removeOverlay(int i) {
        for (nexOverlayItem nexoverlayitem : this.mOverlayItems) {
            if (nexoverlayitem.getId() == i) {
                this.mOverlayItems.remove(nexoverlayitem);
                return true;
            }
        }
        return false;
    }

    public void clearOverlay() {
        this.mOverlayItems.clear();
    }

    public List<nexOverlayItem> getOverlayItems() {
        if (this.m_externalView_overlayItems == null) {
            this.m_externalView_overlayItems = Collections.unmodifiableList(this.mOverlayItems);
        }
        return this.m_externalView_overlayItems;
    }

    private int getClipTimeGuideLine(int i) {
        int i2 = i - 1;
        if (i >= this.mPrimaryItems.size() || i < 0) {
            return 0;
        }
        int offset;
        int duration;
        if (i2 >= 0) {
            offset = ((nexClip) this.mPrimaryItems.get(i2)).getTransitionEffect(true).getOffset();
            int overlap = ((nexClip) this.mPrimaryItems.get(i2)).getTransitionEffect(true).getOverlap();
            duration = ((nexClip) this.mPrimaryItems.get(i2)).getTransitionEffect(true).getDuration();
            i2 = ((duration * overlap) / 100) + (duration - ((duration * offset) / 100));
        } else {
            i2 = 0;
        }
        offset = ((nexClip) this.mPrimaryItems.get(i)).getTransitionEffect(true).getOffset();
        duration = ((nexClip) this.mPrimaryItems.get(i)).getTransitionEffect(true).getDuration();
        return (((duration - ((offset * duration) / 100)) + i2) / 500) * 500;
    }

    private int getTransitionTimeGuideLine(int i, int i2) {
        int i3 = i - 1;
        int i4 = i + 1;
        if (i4 >= this.mPrimaryItems.size()) {
            return 0;
        }
        int duration;
        if (i2 < 0) {
            i2 = 500;
        }
        int projectDuration = ((nexClip) this.mPrimaryItems.get(i)).getProjectDuration();
        if (i3 >= 0) {
            int offset = ((nexClip) this.mPrimaryItems.get(i3)).getTransitionEffect(true).getOffset();
            int overlap = ((nexClip) this.mPrimaryItems.get(i3)).getTransitionEffect(true).getOverlap();
            duration = ((nexClip) this.mPrimaryItems.get(i3)).getTransitionEffect(true).getDuration();
            duration = (projectDuration - (duration - ((duration * offset) / 100))) - ((duration * overlap) / 100);
        } else {
            duration = projectDuration;
        }
        projectDuration = duration - i2;
        if (i4 > 0) {
            duration = ((nexClip) this.mPrimaryItems.get(i4)).getProjectDuration() / 3;
            if (projectDuration > duration) {
                projectDuration = duration;
            }
        }
        i3 = ((nexClip) this.mPrimaryItems.get(i)).getTransitionEffect(true).getOffset();
        duration = projectDuration * 2;
        if (i3 > 0) {
            duration = (projectDuration * 100) / i3;
        }
        return (duration / 500) * 500;
    }

    public int[] getClipDurationTimeGuideLine(int i) {
        int projectDuration;
        int clipTimeGuideLine = getClipTimeGuideLine(i);
        if (((nexClip) this.mPrimaryItems.get(i)).getClipType() == 4) {
            projectDuration = ((nexClip) this.mPrimaryItems.get(i)).getProjectDuration();
            if (clipTimeGuideLine > projectDuration) {
                return new int[]{0, 0};
            }
        } else if (clipTimeGuideLine > 10000) {
            return new int[]{clipTimeGuideLine, clipTimeGuideLine + 1000};
        } else {
            projectDuration = 10000;
        }
        return new int[]{clipTimeGuideLine, projectDuration};
    }

    public int[] getTransitionDurationTimeGuideLine(int i, int i2) {
        if (500 > getTransitionTimeGuideLine(i, i2)) {
            return new int[]{0, 0};
        }
        return new int[]{500, getTransitionTimeGuideLine(i, i2)};
    }

    public int[] getClipPositionTime(int i) {
        updateProject();
        int projectStartTime = ((nexClip) this.mPrimaryItems.get(i)).getProjectStartTime();
        int projectEndTime = ((nexClip) this.mPrimaryItems.get(i)).getProjectEndTime();
        return new int[]{projectStartTime, projectEndTime};
    }

    public static nexProject clone(nexProject nexproject) {
        nexProject nexproject2;
        if (nexproject.mEmptyTheme) {
            nexproject2 = new nexProject();
        } else {
            nexproject2 = new nexProject(nexproject.mThemeId);
        }
        Log.d(TAG, "clone src project[" + nexproject.mId + "] to dest project[" + nexproject2.mId + "]");
        nexproject2.mThemeId = nexproject.mThemeId;
        nexproject2.mTheme = nexproject.mTheme;
        nexproject2.mEmptyTheme = nexproject.mEmptyTheme;
        nexproject2.mAudioFadeInTime = nexproject.mAudioFadeInTime;
        nexproject2.mAudioFadeOutTime = nexproject.mAudioFadeOutTime;
        nexproject2.mOpeningTitle = nexproject.mOpeningTitle;
        nexproject2.mEndingTitle = nexproject.mEndingTitle;
        nexproject2.mBGMVolumeScale = nexproject.mBGMVolumeScale;
        nexproject2.mUseThemeMusic2BGM = nexproject.mUseThemeMusic2BGM;
        nexproject2.mLoopBGM = nexproject.mLoopBGM;
        nexproject2.mStartTimeBGM = nexproject.mStartTimeBGM;
        nexproject2.mClipTimeUpdated = nexproject.mClipTimeUpdated;
        nexproject2.mNeedLoadList = nexproject.mNeedLoadList;
        for (nexOverlayItem clone : nexproject.getOverlayItems()) {
            nexproject2.addOverlay(nexOverlayItem.clone(clone));
        }
        if (nexproject.mBackGroundMusic != null) {
            nexproject2.mBackGroundMusic = nexClip.clone(nexproject.mBackGroundMusic);
        }
        for (nexClip clone2 : nexproject.getPrimaryItems()) {
            nexproject2.addClone(nexproject2.getTotalClipCount(true), nexClip.clone(clone2));
        }
        int i = 0;
        Iterator it = nexproject.getAudioItems().iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return nexproject2;
            }
            nexproject2.addCloneAudio(i2, nexAudioItem.clone((nexAudioItem) it.next()));
            i = i2 + 1;
        }
    }

    public void clearFaceDetectInfo() {
        int size = this.mPrimaryItems.size();
        for (int i = 0; i < size; i++) {
            nexClip nexclip = (nexClip) this.mPrimaryItems.get(i);
            if (nexclip.getClipType() == 1) {
                nexclip.resetFaceDetectProcessed();
            }
        }
    }

    public int getClipPosition(int i) {
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= getTotalClipCount(true)) {
                return -1;
            }
            if (((nexClip) this.mPrimaryItems.get(i3)).getProjectStartTime() <= i && i < ((nexClip) this.mPrimaryItems.get(i3)).getProjectEndTime()) {
                return i3;
            }
            i2 = i3 + 1;
        }
    }

    public int getProjectTime2ClipTimePosition(int i, int i2) {
        if (i < 0 || i >= this.mPrimaryItems.size()) {
            return -1;
        }
        int projectStartTime = ((nexClip) this.mPrimaryItems.get(i)).getProjectStartTime();
        int projectEndTime = ((nexClip) this.mPrimaryItems.get(i)).getProjectEndTime();
        if (projectStartTime > i2 || i2 >= projectEndTime) {
            return -1;
        }
        int i3 = i2 - projectStartTime;
        if (((nexClip) this.mPrimaryItems.get(i)).getClipType() != 4) {
            return i3;
        }
        projectStartTime = ((nexClip) this.mPrimaryItems.get(i)).getVideoClipEdit().getStartTrimTime();
        projectEndTime = ((nexClip) this.mPrimaryItems.get(i)).getVideoClipEdit().getSpeedControl();
        if (projectEndTime != 100) {
            if (projectEndTime == 12) {
                projectEndTime = 25;
                i3 /= 2;
            }
            i3 = Math.round((float) ((projectEndTime * i3) / 100));
        }
        return i3 + projectStartTime;
    }

    public int getClipMaxSpeedControlList(int i) {
        int i2 = 0;
        if (((nexClip) this.mPrimaryItems.get(i)).getClipType() != 4) {
            return 0;
        }
        int totalTime = ((nexClip) this.mPrimaryItems.get(i)).getTotalTime();
        int i3;
        if (((nexClip) this.mPrimaryItems.get(i)).getVideoClipEdit().mTrimStartDuration == 0 && ((nexClip) this.mPrimaryItems.get(i)).getVideoClipEdit().mTrimEndDuration == 0) {
            i3 = totalTime;
        } else {
            i3 = (((nexClip) this.mPrimaryItems.get(i)).getTotalTime() - ((nexClip) this.mPrimaryItems.get(i)).getVideoClipEdit().mTrimStartDuration) - ((nexClip) this.mPrimaryItems.get(i)).getVideoClipEdit().mTrimEndDuration;
        }
        int i4 = i - 1;
        int i5 = i + 1;
        if (i4 >= 0) {
            totalTime = ((nexClip) this.mPrimaryItems.get(i4)).getProjectEndTime() - ((nexClip) this.mPrimaryItems.get(i)).getProjectStartTime();
        } else {
            totalTime = 0;
        }
        if (i5 < this.mPrimaryItems.size()) {
            i4 = ((nexClip) this.mPrimaryItems.get(i)).getProjectEndTime() - ((nexClip) this.mPrimaryItems.get(i5)).getProjectStartTime();
        } else {
            i4 = 0;
        }
        totalTime = (i4 + totalTime) + 500;
        int[] iArr = new int[]{13, 25, 50, 75, 100, BaiduSceneResult.TRAVEL_OTHER, 150, 175, 200, 400};
        i4 = 0;
        while (i2 < iArr.length && totalTime <= Math.round((float) ((i3 * 100) / iArr[i2]))) {
            i4 = iArr[i2];
            i2++;
        }
        return i4;
    }

    @Deprecated
    public Intent makeKineMasterIntent() {
        updateProject();
        Log.d(TAG, "[" + this.mId + "] make intent start");
        com.nexstreaming.kminternal.kinemaster.editorwrapper.a aVar = new com.nexstreaming.kminternal.kinemaster.editorwrapper.a();
        for (nexClip nexclip : this.mPrimaryItems) {
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            nexclip.getCrop().getStartPositionRaw(rect);
            nexclip.getCrop().getEndPositionRaw(rect2);
            switch (nexclip.getClipType()) {
                case 1:
                    if (!nexclip.isSolid()) {
                        ((com.nexstreaming.kminternal.kinemaster.editorwrapper.a.b) ((com.nexstreaming.kminternal.kinemaster.editorwrapper.a.b) ((com.nexstreaming.kminternal.kinemaster.editorwrapper.a.b) ((com.nexstreaming.kminternal.kinemaster.editorwrapper.a.b) ((com.nexstreaming.kminternal.kinemaster.editorwrapper.a.b) ((com.nexstreaming.kminternal.kinemaster.editorwrapper.a.b) ((com.nexstreaming.kminternal.kinemaster.editorwrapper.a.b) ((com.nexstreaming.kminternal.kinemaster.editorwrapper.a.b) ((com.nexstreaming.kminternal.kinemaster.editorwrapper.a.b) ((com.nexstreaming.kminternal.kinemaster.editorwrapper.a.b) aVar.b().a(nexclip.getPath()).a((float) rect.left, (float) rect.top, (float) rect.right, (float) rect.bottom, (float) rect2.left, (float) rect2.top, (float) rect2.right, (float) rect2.bottom).e(nexclip.getImageClipDuration())).h(nexclip.getBrightness())).d(nexclip.getRotateDegree())).i(nexclip.getContrast())).j(nexclip.getSaturation())).d(nexclip.getColorEffectID())).b(nexclip.getClipEffect(true).getId())).c(nexclip.getTransitionEffect(true).getId())).f(nexclip.getTransitionEffect(true).getDuration())).b(nexclip.getVignetteEffect())).a();
                        break;
                    }
                    ((e) ((e) ((e) ((e) ((e) ((e) ((e) ((e) ((e) ((e) aVar.c().a(nexclip.getSolidColor()).e(nexclip.getImageClipDuration())).h(nexclip.getBrightness())).d(nexclip.getRotateDegree())).i(nexclip.getContrast())).j(nexclip.getSaturation())).d(nexclip.getColorEffectID())).b(nexclip.getClipEffect(true).getId())).c(nexclip.getTransitionEffect(true).getId())).f(nexclip.getTransitionEffect(true).getDuration())).b(nexclip.getVignetteEffect())).a();
                    break;
                case 4:
                    ((g) ((g) ((g) ((g) ((g) ((g) ((g) ((g) ((g) ((g) ((g) aVar.a().a(nexclip.getPath()).e(nexclip.getVideoClipEdit().getDuration())).a((float) rect.left, (float) rect.top, (float) rect.right, (float) rect.bottom, (float) rect2.left, (float) rect2.top, (float) rect2.right, (float) rect2.bottom).c(nexclip.getVideoClipEdit().getSpeedControl()).a(nexclip.getVideoClipEdit().getStartTrimTime()).d(nexclip.getRotateDegree()).a(!nexclip.getAudioOnOff())).g(nexclip.getClipVolume())).h(nexclip.getBrightness())).i(nexclip.getContrast())).j(nexclip.getSaturation())).d(nexclip.getColorEffectID())).b(nexclip.getClipEffect(true).getId())).c(nexclip.getTransitionEffect(true).getId())).f(nexclip.getTransitionEffect(true).getDuration())).b(nexclip.getVignetteEffect())).a();
                    break;
                default:
                    break;
            }
        }
        for (nexAudioItem nexaudioitem : this.mSecondaryItems) {
            boolean z;
            com.nexstreaming.kminternal.kinemaster.editorwrapper.a.a b = aVar.d().a(nexaudioitem.getClip().getPath()).c(nexaudioitem.getStartTime()).d(nexaudioitem.getEndTime()).b(false).a(false).a(nexaudioitem.getStartTrimTime()).b(nexaudioitem.getEndTrimTime());
            if (nexaudioitem.getClip().getAudioOnOff()) {
                z = false;
            } else {
                z = true;
            }
            b.c(z).e(nexaudioitem.getClip().getClipVolume()).a();
        }
        if (this.mBackGroundMusic != null) {
            aVar.d().a(this.mBackGroundMusic.getPath()).c(this.mStartTimeBGM).d(getTotalTime()).b(true).a(this.mLoopBGM).a(this.mBGMTrimStartTime).b(this.mBGMTrimEndTime).e((int) (getBGMMasterVolumeScale() * 200.0f)).a();
        }
        for (nexOverlayItem nexoverlayitem : this.mOverlayItems) {
            if (nexoverlayitem.getOverlayImage() instanceof nexOverlayKineMasterText) {
                nexOverlayKineMasterText nexoverlaykinemastertext = (nexOverlayKineMasterText) nexoverlayitem.getOverlayImage();
                ((f) ((f) ((f) ((f) ((f) ((f) ((f) ((f) aVar.e().d(nexoverlaykinemastertext.getText()).a(nexoverlaykinemastertext.getTextSize()).e(nexoverlaykinemastertext.getTextColor()).g(nexoverlaykinemastertext.getGlowColor(false)).h(nexoverlaykinemastertext.getOutlineColor(false)).f(nexoverlaykinemastertext.getShadowColor(false)).e(nexoverlaykinemastertext.getFontId()).a(nexoverlayitem.getStartTime())).b(nexoverlayitem.getEndTime())).a().a(0.0f).a((float) ((nexoverlayitem.getPositionX() * 1280) / nexApplicationConfig.getAspectProfile().getWidth()), (float) ((nexoverlayitem.getPositionY() * 720) / nexApplicationConfig.getAspectProfile().getHeight())).c(nexoverlayitem.getAlpha()).b((float) nexoverlayitem.getRotate()).d(nexoverlayitem.getScaledX()).a()).a(nexoverlayitem.getLayerExpression().getNames(0))).c(nexoverlayitem.getLayerExpressionDuration())).b(nexoverlayitem.getLayerExpression().getNames(1))).d(nexoverlayitem.getLayerExpressionDuration())).c(nexoverlayitem.getLayerExpression().getNames(2))).b();
            }
        }
        return aVar.f();
    }

    int getId() {
        return this.mId;
    }

    nexProjectOf getSaveData() {
        nexProjectOf nexprojectof = new nexProjectOf();
        nexprojectof.mProjectVolume = this.mProjectVolume;
        nexprojectof.mManualVolCtl = this.mManualVolCtl;
        nexprojectof.mAudioFadeInTime = this.mAudioFadeInTime;
        nexprojectof.mAudioFadeOutTime = this.mAudioFadeOutTime;
        nexprojectof.mOpeningTitle = this.mOpeningTitle;
        nexprojectof.mEndingTitle = this.mEndingTitle;
        nexprojectof.mBGMVolumeScale = this.mBGMVolumeScale;
        nexprojectof.mUseThemeMusic2BGM = this.mUseThemeMusic2BGM;
        nexprojectof.mLoopBGM = this.mLoopBGM;
        nexprojectof.mStartTimeBGM = this.mStartTimeBGM;
        if (this.mBackGroundMusic == null) {
            nexprojectof.mBackGroundMusic = null;
        } else {
            nexprojectof.mBackGroundMusic = this.mBackGroundMusic.getSaveData();
        }
        nexprojectof.mBGMTrimStartTime = this.mBGMTrimStartTime;
        nexprojectof.mBGMTrimEndTime = this.mBGMTrimEndTime;
        nexprojectof.mTemplateApplyMode = this.mTemplateApplyMode;
        nexprojectof.mTemplateOverlappedTransition = this.mTemplateOverlappedTransition;
        if (this.mPrimaryItems.size() == 0) {
            nexprojectof.mPrimaryItems = null;
        } else {
            nexprojectof.mPrimaryItems = new ArrayList();
            for (nexClip nexclip : this.mPrimaryItems) {
                if (!nexclip.isMotionTrackedVideo()) {
                    nexprojectof.mPrimaryItems.add(nexclip.getSaveData());
                }
            }
        }
        if (this.mSecondaryItems.size() == 0) {
            nexprojectof.mSecondaryItems = null;
        } else {
            nexprojectof.mSecondaryItems = new ArrayList();
            for (nexAudioItem saveData : this.mSecondaryItems) {
                nexprojectof.mSecondaryItems.add(saveData.getSaveData());
            }
        }
        if (this.mTopEffectInfo.size() == 0) {
            nexprojectof.mTopEffectInfo = null;
        } else {
            nexprojectof.mTopEffectInfo = this.mTopEffectInfo;
        }
        if (this.mSubEffectInfo.size() == 0) {
            nexprojectof.mSubEffectInfo = null;
        } else {
            nexprojectof.mSubEffectInfo = this.mSubEffectInfo;
        }
        return nexprojectof;
    }

    public String saveToString() {
        Gson gson = new Gson();
        Object nexsavedataformat = new nexSaveDataFormat();
        nexsavedataformat.project = getSaveData();
        return gson.toJson(nexsavedataformat);
    }

    nexProject(nexProjectOf nexprojectof) {
        this.mThemeId = "com.nexstreaming.kinemaster.basic";
        this.mLetterbox = nexApplicationConfig.getDefaultLetterboxEffect();
        this.mTheme = null;
        this.mEmptyTheme = false;
        this.mProjectVolume = 100;
        this.mManualVolCtl = 0;
        this.mAudioFadeInTime = 200;
        this.mAudioFadeOutTime = 5000;
        this.mOpeningTitle = null;
        this.mEndingTitle = null;
        this.mBGMVolumeScale = 0.5f;
        this.mUseThemeMusic2BGM = true;
        this.mLoopBGM = true;
        this.mStartTimeBGM = 0;
        this.mBackGroundMusic = null;
        this.mTemplateApplyMode = 0;
        this.mTemplateOverlappedTransition = true;
        this.mOverlayItems = new ArrayList();
        this.m_externalView_overlayItems = null;
        this.mPrimaryItems = new ArrayList();
        this.m_externalView_primaryItems = null;
        this.mSecondaryItems = new ArrayList();
        this.m_externalView_secondaryItems = null;
        this.mTopEffectInfo = new ArrayList();
        this.mSubEffectInfo = new ArrayList();
        this.mProjectVolume = nexprojectof.mProjectVolume;
        this.mManualVolCtl = nexprojectof.mManualVolCtl;
        this.mAudioFadeInTime = nexprojectof.mAudioFadeInTime;
        this.mAudioFadeOutTime = nexprojectof.mAudioFadeOutTime;
        this.mOpeningTitle = nexprojectof.mOpeningTitle;
        this.mEndingTitle = nexprojectof.mEndingTitle;
        this.mBGMVolumeScale = nexprojectof.mBGMVolumeScale;
        int i = sNextId;
        sNextId = i + 1;
        this.mId = i;
        this.mUseThemeMusic2BGM = nexprojectof.mUseThemeMusic2BGM;
        this.mLoopBGM = nexprojectof.mLoopBGM;
        this.mStartTimeBGM = nexprojectof.mStartTimeBGM;
        if (nexprojectof.mBackGroundMusic == null) {
            this.mBackGroundMusic = null;
        } else {
            this.mBackGroundMusic = new nexClip(null, nexprojectof.mBackGroundMusic);
        }
        this.mBGMTrimStartTime = nexprojectof.mBGMTrimStartTime;
        this.mBGMTrimEndTime = nexprojectof.mBGMTrimEndTime;
        this.mTemplateApplyMode = nexprojectof.mTemplateApplyMode;
        this.mTemplateOverlappedTransition = nexprojectof.mTemplateOverlappedTransition;
        if (nexprojectof.mPrimaryItems != null) {
            for (nexClipOf nexclip : nexprojectof.mPrimaryItems) {
                this.mPrimaryItems.add(new nexClip((b) this, nexclip));
            }
        }
        if (nexprojectof.mSecondaryItems != null) {
            for (nexAudioItemOf nexaudioitem : nexprojectof.mSecondaryItems) {
                this.mSecondaryItems.add(new nexAudioItem(this, nexaudioitem));
            }
        }
        if (nexprojectof.mTopEffectInfo != null) {
            this.mTopEffectInfo = nexprojectof.mTopEffectInfo;
        }
        if (nexprojectof.mSubEffectInfo != null) {
            this.mSubEffectInfo = nexprojectof.mSubEffectInfo;
        }
        this.mClipTimeUpdated = true;
    }

    public static nexProject createFromSaveString(String str) {
        return new nexProject(((nexSaveDataFormat) new Gson().fromJson(str, nexSaveDataFormat.class)).project);
    }

    private static void logClipOf(int i, nexClipOf nexclipof) {
        Log.d(TAG, "[" + i + "]nexClipOf.m_BGMVolume=" + nexclipof.m_BGMVolume);
        Log.d(TAG, "[" + i + "]nexClipOf.mCollageDrawInfoID=" + nexclipof.mCollageDrawInfoID);
        Log.d(TAG, "[" + i + "]nexClipOf.mPath=" + nexclipof.mPath);
        Log.d(TAG, "[" + i + "]nexClipOf.mTransCodingPath=" + nexclipof.mTransCodingPath);
        Log.d(TAG, "[" + i + "]nexClipOf.m_Brightness=" + nexclipof.m_Brightness);
        Log.d(TAG, "[" + i + "]nexClipOf.m_ClipVolume=" + nexclipof.m_ClipVolume);
        Log.d(TAG, "[" + i + "]nexClipOf.m_Contrast=" + nexclipof.m_Contrast);
        Log.d(TAG, "[" + i + "]nexClipOf.m_Saturation=" + nexclipof.m_Saturation);
        Log.d(TAG, "[" + i + "]nexClipOf.mAudioOnOff=" + nexclipof.mAudioOnOff);
        Log.d(TAG, "[" + i + "]nexClipOf.mAVSyncAudioStartTime=" + nexclipof.mAVSyncAudioStartTime);
        Log.d(TAG, "[" + i + "]nexClipOf.mCustomLUT_A=" + nexclipof.mCustomLUT_A);
        Log.d(TAG, "[" + i + "]nexClipOf.mCustomLUT_B=" + nexclipof.mCustomLUT_B);
        Log.d(TAG, "[" + i + "]nexClipOf.mCustomLUT_Power=" + nexclipof.mCustomLUT_Power);
        Log.d(TAG, "[" + i + "]nexClipOf.mDuration=" + nexclipof.mDuration);
        Log.d(TAG, "[" + i + "]nexClipOf.mEndTime=" + nexclipof.mEndTime);
        Log.d(TAG, "[" + i + "]nexClipOf.mFaceDetected=" + nexclipof.mFaceDetected);
        Log.d(TAG, "[" + i + "]nexClipOf.mFacedetectProcessed=" + nexclipof.mFacedetectProcessed);
        Log.d(TAG, "[" + i + "]nexClipOf.misMustDownSize=" + nexclipof.misMustDownSize);
        Log.d(TAG, "[" + i + "]nexClipOf.mMediaInfoUseCache=" + nexclipof.mMediaInfoUseCache);
        Log.d(TAG, "[" + i + "]nexClipOf.mOverlappedTransition=" + nexclipof.mOverlappedTransition);
        Log.d(TAG, "[" + i + "]nexClipOf.mPropertySlowVideoMode=" + nexclipof.mPropertySlowVideoMode);
        Log.d(TAG, "[" + i + "]nexClipOf.mStartTime=" + nexclipof.mStartTime);
        Log.d(TAG, "[" + i + "]nexClipOf.mTemplateAudioPos=" + nexclipof.mTemplateAudioPos);
        Log.d(TAG, "[" + i + "]nexClipOf.mTemplateEffectID=" + nexclipof.mTemplateEffectID);
        Log.d(TAG, "[" + i + "]nexClipOf.mTitleEffectEndTime=" + nexclipof.mTitleEffectEndTime);
        Log.d(TAG, "[" + i + "]nexClipOf.mTitleEffectStartTime=" + nexclipof.mTitleEffectStartTime);
        Log.d(TAG, "[" + i + "]nexClipOf.mInfo.mExistAudio=" + nexclipof.mInfo.mExistAudio);
        Log.d(TAG, "[" + i + "]nexClipOf.mInfo.mVideoTotalTime=" + nexclipof.mInfo.mVideoTotalTime);
        Log.d(TAG, "[" + i + "]nexClipOf.mInfo.mSeekPointCount=" + nexclipof.mInfo.mSeekPointCount);
        Log.d(TAG, "[" + i + "]nexClipOf.mInfo.mFramesPerSecond=" + nexclipof.mInfo.mFramesPerSecond);
        Log.d(TAG, "[" + i + "]nexClipOf.mInfo.mAudioCodecType=" + nexclipof.mInfo.mAudioCodecType);
        Log.d(TAG, "[" + i + "]nexClipOf.mInfo.mMimeType=" + nexclipof.mInfo.mMimeType);
        Log.d(TAG, "[" + i + "]nexClipOf.mInfo.mVideoCodecType=" + nexclipof.mInfo.mVideoCodecType);
        Log.d(TAG, "[" + i + "]nexClipOf.mInfo.mAudioBitrate=" + nexclipof.mInfo.mAudioBitrate);
        Log.d(TAG, "[" + i + "]nexClipOf.mInfo.mAudioTotalTime=" + nexclipof.mInfo.mAudioTotalTime);
        Log.d(TAG, "[" + i + "]nexClipOf.mInfo.mClipType=" + nexclipof.mInfo.mClipType);
        Log.d(TAG, "[" + i + "]nexClipOf.mInfo.mDisplayHeight=" + nexclipof.mInfo.mDisplayHeight);
        Log.d(TAG, "[" + i + "]nexClipOf.mInfo.mDisplayWidth=" + nexclipof.mInfo.mDisplayWidth);
        Log.d(TAG, "[" + i + "]nexClipOf.mInfo.mExistVideo=" + nexclipof.mInfo.mExistVideo);
        Log.d(TAG, "[" + i + "]nexClipOf.mInfo.mH264Level=" + nexclipof.mInfo.mH264Level);
        Log.d(TAG, "[" + i + "]nexClipOf.mInfo.mH264Profile=" + nexclipof.mInfo.mH264Profile);
        Log.d(TAG, "[" + i + "]nexClipOf.mInfo.mHeight=" + nexclipof.mInfo.mHeight);
        Log.d(TAG, "[" + i + "]nexClipOf.mInfo.mRotateDegreeInMeta=" + nexclipof.mInfo.mRotateDegreeInMeta);
        Log.d(TAG, "[" + i + "]nexClipOf.mInfo.mSuppertedResult=" + nexclipof.mInfo.mSuppertedResult);
        Log.d(TAG, "[" + i + "]nexClipOf.mInfo.mTotalTime=" + nexclipof.mInfo.mTotalTime);
        Log.d(TAG, "[" + i + "]nexClipOf.mInfo.mVideoBitrate=" + nexclipof.mInfo.mVideoBitrate);
        Log.d(TAG, "[" + i + "]nexClipOf.mInfo.mVideoRenderMode=" + nexclipof.mInfo.mVideoRenderMode);
        Log.d(TAG, "[" + i + "]nexClipOf.mInfo.mVideoHDRType=" + nexclipof.mInfo.mVideoHDRType);
        Log.d(TAG, "[" + i + "]nexClipOf.mInfo.mVideoTotalTime=" + nexclipof.mInfo.mVideoTotalTime);
        Log.d(TAG, "[" + i + "]nexClipOf.mInfo.mWidth=" + nexclipof.mInfo.mWidth);
        if (nexclipof.mClipEffect == null) {
            Log.d(TAG, "[" + i + "]nexClipOf.mClipEffect= null");
        } else {
            Log.d(TAG, "[" + i + "]nexClipOf.mClipEffect.mAutoID=" + nexclipof.mClipEffect.mAutoID);
            Log.d(TAG, "[" + i + "]nexClipOf.mClipEffect.mID=" + nexclipof.mClipEffect.mID);
            Log.d(TAG, "[" + i + "]nexClipOf.mClipEffect.mName=" + nexclipof.mClipEffect.mName);
            Log.d(TAG, "[" + i + "]nexClipOf.mClipEffect.mID=" + nexclipof.mClipEffect.mDuration);
            Log.d(TAG, "[" + i + "]nexClipOf.mClipEffect.mEffectOffset=" + nexclipof.mClipEffect.mEffectOffset);
            Log.d(TAG, "[" + i + "]nexClipOf.mClipEffect.mEffectOverlap=" + nexclipof.mClipEffect.mEffectOverlap);
            Log.d(TAG, "[" + i + "]nexClipOf.mClipEffect.mIsResolveOptions=" + nexclipof.mClipEffect.mIsResolveOptions);
            Log.d(TAG, "[" + i + "]nexClipOf.mClipEffect.mMaxDuration=" + nexclipof.mClipEffect.mMaxDuration);
            Log.d(TAG, "[" + i + "]nexClipOf.mClipEffect.mMinDuration=" + nexclipof.mClipEffect.mMinDuration);
            Log.d(TAG, "[" + i + "]nexClipOf.mClipEffect.mOptionsUpdate=" + nexclipof.mClipEffect.mOptionsUpdate);
            Log.d(TAG, "[" + i + "]nexClipOf.mClipEffect.mShowEndTime=" + nexclipof.mClipEffect.mShowEndTime);
            Log.d(TAG, "[" + i + "]nexClipOf.mClipEffect.mShowStartTime=" + nexclipof.mClipEffect.mShowStartTime);
            Log.d(TAG, "[" + i + "]nexClipOf.mClipEffect.mType=" + nexclipof.mClipEffect.mType);
            Log.d(TAG, "[" + i + "]nexClipOf.mClipEffect.itemMethodType=" + nexclipof.mClipEffect.itemMethodType);
        }
        if (nexclipof.mTransitionEffect == null) {
            Log.d(TAG, "[" + i + "]nexClipOf.mTransitionEffect= null");
        } else {
            Log.d(TAG, "[" + i + "]nexClipOf.mTransitionEffect.mAutoID=" + nexclipof.mClipEffect.mAutoID);
            Log.d(TAG, "[" + i + "]nexClipOf.mTransitionEffect.mID=" + nexclipof.mClipEffect.mID);
            Log.d(TAG, "[" + i + "]nexClipOf.mTransitionEffect.mName=" + nexclipof.mClipEffect.mName);
            Log.d(TAG, "[" + i + "]nexClipOf.mTransitionEffect.mID=" + nexclipof.mClipEffect.mDuration);
            Log.d(TAG, "[" + i + "]nexClipOf.mTransitionEffect.mEffectOffset=" + nexclipof.mClipEffect.mEffectOffset);
            Log.d(TAG, "[" + i + "]nexClipOf.mTransitionEffect.mEffectOverlap=" + nexclipof.mClipEffect.mEffectOverlap);
            Log.d(TAG, "[" + i + "]nexClipOf.mTransitionEffect.mIsResolveOptions=" + nexclipof.mClipEffect.mIsResolveOptions);
            Log.d(TAG, "[" + i + "]nexClipOf.mTransitionEffect.mMaxDuration=" + nexclipof.mClipEffect.mMaxDuration);
            Log.d(TAG, "[" + i + "]nexClipOf.mTransitionEffect.mMinDuration=" + nexclipof.mClipEffect.mMinDuration);
            Log.d(TAG, "[" + i + "]nexClipOf.mTransitionEffect.mOptionsUpdate=" + nexclipof.mClipEffect.mOptionsUpdate);
            Log.d(TAG, "[" + i + "]nexClipOf.mTransitionEffect.mShowEndTime=" + nexclipof.mClipEffect.mShowEndTime);
            Log.d(TAG, "[" + i + "]nexClipOf.mTransitionEffect.mShowStartTime=" + nexclipof.mClipEffect.mShowStartTime);
            Log.d(TAG, "[" + i + "]nexClipOf.mTransitionEffect.mType=" + nexclipof.mClipEffect.mType);
            Log.d(TAG, "[" + i + "]nexClipOf.mTransitionEffect.itemMethodType=" + nexclipof.mClipEffect.itemMethodType);
        }
        if (nexclipof.mCrop == null) {
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop= null");
        } else {
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_endPositionBottom=" + nexclipof.mCrop.m_endPositionBottom);
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_endPositionLeft=" + nexclipof.mCrop.m_endPositionLeft);
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_endPositionRight=" + nexclipof.mCrop.m_endPositionRight);
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_endPositionTop=" + nexclipof.mCrop.m_endPositionTop);
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_startPositionBottom=" + nexclipof.mCrop.m_startPositionBottom);
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_startPositionLeft=" + nexclipof.mCrop.m_startPositionLeft);
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_startPositionLeft=" + nexclipof.mCrop.m_startPositionRight);
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_startPositionLeft=" + nexclipof.mCrop.m_startPositionTop);
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_faceBounds_bottom=" + nexclipof.mCrop.m_faceBounds_bottom);
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_faceBounds_left=" + nexclipof.mCrop.m_faceBounds_left);
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_faceBounds_right=" + nexclipof.mCrop.m_faceBounds_right);
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_faceBounds_set=" + nexclipof.mCrop.m_faceBounds_set);
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_faceBounds_top=" + nexclipof.mCrop.m_faceBounds_top);
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_facePositionBottom=" + nexclipof.mCrop.m_facePositionBottom);
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_facePositionLeft=" + nexclipof.mCrop.m_facePositionLeft);
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_facePositionRight=" + nexclipof.mCrop.m_facePositionRight);
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_facePositionTop=" + nexclipof.mCrop.m_facePositionTop);
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_height=" + nexclipof.mCrop.m_height);
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_height=" + nexclipof.mCrop.m_width);
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_rotatedEndPositionBottom=" + nexclipof.mCrop.m_rotatedEndPositionBottom);
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_rotatedEndPositionLeft=" + nexclipof.mCrop.m_rotatedEndPositionLeft);
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_rotatedEndPositionRight=" + nexclipof.mCrop.m_rotatedEndPositionRight);
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_rotatedEndPositionTop=" + nexclipof.mCrop.m_rotatedEndPositionTop);
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_rotation=" + nexclipof.mCrop.m_rotation);
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_rotatedStartPositionBottom=" + nexclipof.mCrop.m_rotatedStartPositionBottom);
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_rotatedStartPositionBottom=" + nexclipof.mCrop.m_rotatedStartPositionLeft);
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_rotatedStartPositionBottom=" + nexclipof.mCrop.m_rotatedStartPositionRight);
            Log.d(TAG, "[" + i + "]nexClipOf.mCrop.m_rotatedStartPositionBottom=" + nexclipof.mCrop.m_rotatedStartPositionTop);
        }
        if (nexclipof.mDrawInfos != null) {
            for (nexDrawInfo nexdrawinfo : nexclipof.mDrawInfos) {
                Log.d(TAG, "[" + i + "]nexClipOf.mDrawInfos.getCustomLUTA=" + nexdrawinfo.getCustomLUTA());
                Log.d(TAG, "[" + i + "]nexClipOf.mDrawInfos.getCustomLUTB=" + nexdrawinfo.getCustomLUTB());
                Log.d(TAG, "[" + i + "]nexClipOf.mDrawInfos.getEffectID=" + nexdrawinfo.getEffectID());
                Log.d(TAG, "[" + i + "]nexClipOf.mDrawInfos.getTitle=" + nexdrawinfo.getTitle());
                Log.d(TAG, "[" + i + "]nexClipOf.mDrawInfos.getBrightness=" + nexdrawinfo.getBrightness());
                Log.d(TAG, "[" + i + "]nexClipOf.mDrawInfos.getClipID=" + nexdrawinfo.getClipID());
                Log.d(TAG, "[" + i + "]nexClipOf.mDrawInfos.getEndRect=" + nexdrawinfo.getEndRect().toString());
                Log.d(TAG, "[" + i + "]nexClipOf.mDrawInfos.getStartRect=" + nexdrawinfo.getStartRect().toString());
                Log.d(TAG, "[" + i + "]nexClipOf.mDrawInfos.getContrast=" + nexdrawinfo.getContrast());
                Log.d(TAG, "[" + i + "]nexClipOf.mDrawInfos.getSubEffectID=" + nexdrawinfo.getSubEffectID());
                Log.d(TAG, "[" + i + "]nexClipOf.mDrawInfos.getTranslateX=" + nexdrawinfo.getUserTranslateX());
                Log.d(TAG, "[" + i + "]nexClipOf.mDrawInfos.getTranslateX=" + nexdrawinfo.getUserTranslateY());
                Log.d(TAG, "[" + i + "]nexClipOf.mDrawInfos.getRotateState=" + nexdrawinfo.getRotateState());
                Log.d(TAG, "[" + i + "]nexClipOf.mDrawInfos.getUserRotateState=" + nexdrawinfo.getUserRotateState());
                Log.d(TAG, "[" + i + "]nexClipOf.mDrawInfos.getEndTime=" + nexdrawinfo.getEndTime());
            }
        }
    }

    static int logFromString(String str) {
        nexSaveDataFormat nexsavedataformat = (nexSaveDataFormat) new Gson().fromJson(str, nexSaveDataFormat.class);
        Log.d(TAG, "nexSaveDataFormatVersion=" + nexsavedataformat.nexSaveDataFormatVersion);
        Log.d(TAG, "project.mEndingTitle=" + nexsavedataformat.project.mEndingTitle);
        Log.d(TAG, "project.mOpeningTitle=" + nexsavedataformat.project.mOpeningTitle);
        Log.d(TAG, "project.mAudioFadeInTime=" + nexsavedataformat.project.mAudioFadeInTime);
        Log.d(TAG, "project.mAudioFadeOutTime=" + nexsavedataformat.project.mAudioFadeOutTime);
        if (nexsavedataformat.project.mBackGroundMusic == null) {
            Log.d(TAG, "project.mBackGroundMusic= null");
        } else {
            Log.d(TAG, "project.mBackGroundMusic= set");
        }
        Log.d(TAG, "project.mBGMTrimEndTime=" + nexsavedataformat.project.mBGMTrimEndTime);
        Log.d(TAG, "project.mBGMTrimStartTime=" + nexsavedataformat.project.mBGMTrimStartTime);
        Log.d(TAG, "project.mBGMVolumeScale=" + nexsavedataformat.project.mBGMVolumeScale);
        Log.d(TAG, "project.mLoopBGM=" + nexsavedataformat.project.mLoopBGM);
        Log.d(TAG, "project.mManualVolCtl=" + nexsavedataformat.project.mManualVolCtl);
        Log.d(TAG, "project.mProjectVolume=" + nexsavedataformat.project.mProjectVolume);
        Log.d(TAG, "project.mStartTimeBGM=" + nexsavedataformat.project.mStartTimeBGM);
        Log.d(TAG, "project.mTemplateOverlappedTransition=" + nexsavedataformat.project.mTemplateOverlappedTransition);
        Log.d(TAG, "project.mUseThemeMusic2BGM=" + nexsavedataformat.project.mUseThemeMusic2BGM);
        if (nexsavedataformat.project.mPrimaryItems == null) {
            Log.d(TAG, "project.mPrimaryItems=null");
        } else {
            int i = 1;
            for (nexClipOf logClipOf : nexsavedataformat.project.mPrimaryItems) {
                logClipOf(i, logClipOf);
                i++;
            }
        }
        return 0;
    }
}
