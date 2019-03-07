.class public Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;
.super Lmiui/preference/PreferenceFragment;
.source "ScreenRecorderSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field private static final DIAN_ACTION:Ljava/lang/String; = "click"

.field private static final ITEM_BITRATE:Ljava/lang/String; = "bitrate"

.field private static final ITEM_FIXED_FRAME:Ljava/lang/String; = "fixed_frame"

.field private static final ITEM_FRAMES:Ljava/lang/String; = "frames"

.field private static final ITEM_GO_HOME:Ljava/lang/String; = "close_go_home"

.field private static final ITEM_ORIENTATION:Ljava/lang/String; = "screen_orientation"

.field private static final ITEM_RESOLUTION:Ljava/lang/String; = "resolution"

.field private static final ITEM_SHOW_KEYEVENT:Ljava/lang/String; = "show_keyevent"

.field private static final ITEM_SHOW_TOUCH:Ljava/lang/String; = "show_touch"

.field private static final ITEM_SOUND_SOURCE:Ljava/lang/String; = "sound_source"

.field private static final ITEM_STOP_WHILE_LOCK:Ljava/lang/String; = "stop_while_lock"

.field private static final ITEM_STORAGE:Ljava/lang/String; = "storage_location"

.field private static final TAG:Ljava/lang/String; = "ScreenRecorderSettings"


# instance fields
.field private mBitRate:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

.field private mFirstSelectMicDialog:Landroid/app/AlertDialog;

.field private mFirstUseNegListener:Landroid/content/DialogInterface$OnClickListener;

.field private mFirstUsePosListener:Landroid/content/DialogInterface$OnClickListener;

.field private mFrames:Lcom/miui/screenrecorder/view/FramesListPreference;

.field private mIsFixedFrame:Landroid/preference/CheckBoxPreference;

.field private mIsGoHome:Landroid/preference/CheckBoxPreference;

.field private mIsShowHardKey:Landroid/preference/CheckBoxPreference;

.field private mIsShowTouch:Landroid/preference/CheckBoxPreference;

.field private mIsStopWhileLock:Landroid/preference/CheckBoxPreference;

.field private mLocale:Ljava/util/Locale;

.field private mResolution:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

.field private mScreenOrientation:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSoundSource:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

.field private mStorageLocation:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lmiui/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;
    .param p1, "x1"    # Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->updateIntListPreference(Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;
    .param p1, "x1"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mFirstUsePosListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p1
.end method

.method static synthetic access$202(Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;
    .param p1, "x1"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mFirstUseNegListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p1
.end method

.method private initBitRate()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 138
    const-string v4, "miui.screenrecorder.bitrates"

    invoke-virtual {p0, v4}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    iput-object v4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mBitRate:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    .line 139
    iget-object v4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mBitRate:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    const v5, 0x7f080005

    invoke-virtual {p0, v5}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setLeftTitle(Ljava/lang/String;)V

    .line 140
    iget-object v4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mBitRate:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    const v5, 0x7f080006

    invoke-virtual {p0, v5}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setLeftSummary(Ljava/lang/String;)V

    .line 142
    sget-object v4, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->bitrateList:Ljava/util/ArrayList;

    sget-object v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->bitrateList:Ljava/util/ArrayList;

    .line 143
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 144
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mBitRate:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    invoke-virtual {v4, v0}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 145
    sget-object v4, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->bitrateValues:Ljava/util/ArrayList;

    sget-object v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->bitrateValues:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    .line 147
    .local v1, "entriesValue":[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mBitRate:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    invoke-virtual {v4, v1}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 149
    iget-object v4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "miui.screenrecorder.bitrates"

    sget-object v6, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultBitRate:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mBitRate:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    invoke-direct {p0, v4, v3, v7}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->updateFloatListPreference(Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    .line 152
    .local v2, "isValueOK":Z
    if-nez v2, :cond_0

    .line 153
    iget-object v4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mBitRate:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    sget-object v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultBitRate:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v7}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->updateFloatListPreference(Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/String;)Z

    .line 155
    :cond_0
    iget-object v4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mBitRate:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    invoke-virtual {v4, p0}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 156
    return-void
.end method

.method private initCheckBoxPreference()V
    .locals 1

    .prologue
    .line 105
    const-string v0, "miui.screenrecorder.stopwhilelock"

    invoke-virtual {p0, v0}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mIsStopWhileLock:Landroid/preference/CheckBoxPreference;

    .line 106
    iget-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mIsStopWhileLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 107
    const-string v0, "miui.screenrecorder.showtouch"

    invoke-virtual {p0, v0}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mIsShowTouch:Landroid/preference/CheckBoxPreference;

    .line 108
    iget-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mIsShowTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 109
    const-string v0, "miui.screenrecorder.showhardkey"

    invoke-virtual {p0, v0}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mIsShowHardKey:Landroid/preference/CheckBoxPreference;

    .line 110
    iget-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mIsShowHardKey:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    const-string v0, "miui.screenrecorder.fixedframe"

    invoke-virtual {p0, v0}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mIsFixedFrame:Landroid/preference/CheckBoxPreference;

    .line 112
    iget-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mIsFixedFrame:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    const-string v0, "miui.screenrecorder.isclosegohome"

    invoke-virtual {p0, v0}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mIsGoHome:Landroid/preference/CheckBoxPreference;

    .line 114
    iget-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mIsGoHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 115
    return-void
.end method

.method private initFrames()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 159
    const-string v4, "miui.screenrecorder.frame"

    invoke-virtual {p0, v4}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/miui/screenrecorder/view/FramesListPreference;

    iput-object v4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mFrames:Lcom/miui/screenrecorder/view/FramesListPreference;

    .line 160
    iget-object v4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mFrames:Lcom/miui/screenrecorder/view/FramesListPreference;

    const v5, 0x7f08001c

    invoke-virtual {p0, v5}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/screenrecorder/view/FramesListPreference;->setLeftTitle(Ljava/lang/String;)V

    .line 161
    iget-object v4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mFrames:Lcom/miui/screenrecorder/view/FramesListPreference;

    const v5, 0x7f08001d

    invoke-virtual {p0, v5}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/screenrecorder/view/FramesListPreference;->setLeftSummary(Ljava/lang/String;)V

    .line 163
    sget-object v4, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->framesList:Ljava/util/ArrayList;

    sget-object v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->framesList:Ljava/util/ArrayList;

    .line 164
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 165
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mFrames:Lcom/miui/screenrecorder/view/FramesListPreference;

    invoke-virtual {v4, v0}, Lcom/miui/screenrecorder/view/FramesListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 166
    sget-object v4, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->framesValues:Ljava/util/ArrayList;

    sget-object v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->framesValues:Ljava/util/ArrayList;

    .line 167
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    .line 168
    .local v1, "entriesValue":[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mFrames:Lcom/miui/screenrecorder/view/FramesListPreference;

    invoke-virtual {v4, v1}, Lcom/miui/screenrecorder/view/FramesListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 170
    iget-object v4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "miui.screenrecorder.frame"

    sget-object v6, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultFrames:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mFrames:Lcom/miui/screenrecorder/view/FramesListPreference;

    invoke-direct {p0, v4, v3, v7}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->updateIntListPreference(Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    .line 173
    .local v2, "isValueOK":Z
    if-nez v2, :cond_0

    .line 174
    iget-object v4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mFrames:Lcom/miui/screenrecorder/view/FramesListPreference;

    sget-object v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultFrames:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v7}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->updateIntListPreference(Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/String;)Z

    .line 176
    :cond_0
    iget-object v4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mFrames:Lcom/miui/screenrecorder/view/FramesListPreference;

    invoke-virtual {v4, p0}, Lcom/miui/screenrecorder/view/FramesListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 177
    return-void
.end method

.method private initListPreference()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->initResolution()V

    .line 94
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->initBitRate()V

    .line 95
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->initFrames()V

    .line 96
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->initOrientation()V

    .line 97
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->initSoundSource()V

    .line 98
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->initStorageLocation()V

    .line 99
    return-void
.end method

.method private initOrientation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 180
    const-string v2, "miui.screenrecorder.orientation"

    .line 181
    invoke-virtual {p0, v2}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    iput-object v2, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mScreenOrientation:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    .line 182
    iget-object v2, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mScreenOrientation:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    const v3, 0x7f080040

    invoke-virtual {p0, v3}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setLeftTitle(Ljava/lang/String;)V

    .line 183
    iget-object v2, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mScreenOrientation:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    const v3, 0x7f080041

    invoke-virtual {p0, v3}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setLeftSummary(Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "miui.screenrecorder.orientation"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mScreenOrientation:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    invoke-direct {p0, v2, v1, v5}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->updateIntListPreference(Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    .line 187
    .local v0, "isOK":Z
    if-nez v0, :cond_0

    .line 188
    iget-object v2, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mScreenOrientation:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    const-string v3, "0"

    invoke-direct {p0, v2, v3, v5}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->updateIntListPreference(Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/String;)Z

    .line 190
    :cond_0
    iget-object v2, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mScreenOrientation:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    invoke-virtual {v2, p0}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 191
    return-void
.end method

.method private initResolution()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 121
    const-string v4, "miui.screenrecorder.resolution"

    invoke-virtual {p0, v4}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    iput-object v4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mResolution:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    .line 122
    sget-object v4, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->resolutionList:Ljava/util/ArrayList;

    sget-object v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->resolutionList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 123
    .local v0, "entries":[Ljava/lang/CharSequence;
    sget-object v4, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->resolutionValues:Ljava/util/ArrayList;

    sget-object v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->resolutionValues:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    .line 124
    .local v1, "entryValues":[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mResolution:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    invoke-virtual {v4, v0}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 125
    iget-object v4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mResolution:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    invoke-virtual {v4, v1}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 126
    iget-object v4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mResolution:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    const v5, 0x7f08003e

    invoke-virtual {p0, v5}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setLeftTitle(Ljava/lang/String;)V

    .line 127
    iget-object v4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mResolution:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    const v5, 0x7f08003f

    invoke-virtual {p0, v5}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setLeftSummary(Ljava/lang/String;)V

    .line 128
    iget-object v4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "miui.screenrecorder.resolution"

    sget-object v6, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultResolution:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mResolution:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    invoke-direct {p0, v4, v3, v7}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->updateStringListPreference(Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    .line 131
    .local v2, "isValueOK":Z
    if-nez v2, :cond_0

    .line 132
    iget-object v4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mResolution:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    sget-object v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultResolution:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v7}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->updateStringListPreference(Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/String;)Z

    .line 134
    :cond_0
    iget-object v4, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mResolution:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    invoke-virtual {v4, p0}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 135
    return-void
.end method

.method private initSoundSource()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 214
    const-string v6, "miui.screenrecorder.sound"

    invoke-virtual {p0, v6}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    iput-object v6, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mSoundSource:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    .line 215
    iget-object v6, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mSoundSource:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    const v7, 0x7f08004e

    invoke-virtual {p0, v7}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setLeftTitle(Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->isShowInnerSoundEntrance()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 217
    iget-object v6, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mSoundSource:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    const v7, 0x7f08004f

    invoke-virtual {p0, v7}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setLeftSummary(Ljava/lang/String;)V

    .line 221
    :goto_0
    iget-object v6, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mSoundSource:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    invoke-virtual {v6}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 222
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mSoundSource:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    invoke-virtual {v6}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 223
    .local v0, "entrieValues":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    array-length v6, v0

    if-ne v6, v11, :cond_0

    if-eqz v1, :cond_0

    array-length v6, v1

    if-ne v6, v11, :cond_0

    .line 224
    invoke-static {}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->isShowInnerSoundEntrance()Z

    move-result v6

    if-nez v6, :cond_3

    .line 225
    const-string v6, "0"

    sput-object v6, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultSound:Ljava/lang/String;

    .line 226
    new-array v4, v10, [Ljava/lang/CharSequence;

    aget-object v6, v1, v8

    aput-object v6, v4, v8

    aget-object v6, v1, v9

    aput-object v6, v4, v9

    .line 227
    .local v4, "subentries":[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mSoundSource:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    invoke-virtual {v6, v4}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 228
    new-array v3, v10, [Ljava/lang/CharSequence;

    aget-object v6, v0, v8

    aput-object v6, v3, v8

    aget-object v6, v0, v9

    aput-object v6, v3, v9

    .line 229
    .local v3, "subentrieValues":[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mSoundSource:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    invoke-virtual {v6, v3}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 235
    .end local v3    # "subentrieValues":[Ljava/lang/CharSequence;
    .end local v4    # "subentries":[Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v7, "miui.screenrecorder.sound"

    sget-object v8, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultSound:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, "value":Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mSoundSource:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    invoke-direct {p0, v6, v5, v12}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->updateIntListPreference(Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    .line 238
    .local v2, "isOK":Z
    if-nez v2, :cond_1

    .line 239
    iget-object v6, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mSoundSource:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    sget-object v7, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultSound:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v12}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->updateIntListPreference(Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/String;)Z

    .line 241
    :cond_1
    iget-object v6, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mSoundSource:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    invoke-virtual {v6, p0}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 242
    return-void

    .line 219
    .end local v0    # "entrieValues":[Ljava/lang/CharSequence;
    .end local v1    # "entries":[Ljava/lang/CharSequence;
    .end local v2    # "isOK":Z
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mSoundSource:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    const v7, 0x7f080050

    invoke-virtual {p0, v7}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setLeftSummary(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    .restart local v0    # "entrieValues":[Ljava/lang/CharSequence;
    .restart local v1    # "entries":[Ljava/lang/CharSequence;
    :cond_3
    const-string v6, "2"

    sput-object v6, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultSound:Ljava/lang/String;

    goto :goto_1
.end method

.method private initStorageLocation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 194
    invoke-static {}, Lcom/miui/screenrecorder/tools/MediaFileUtils;->isExtraSd()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    const-string v2, "miui.screenrecorder.storage"

    .line 196
    invoke-virtual {p0, v2}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    iput-object v2, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mStorageLocation:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    .line 197
    iget-object v2, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mStorageLocation:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    const v3, 0x7f080057

    invoke-virtual {p0, v3}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setLeftTitle(Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mStorageLocation:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    const v3, 0x7f080058

    invoke-virtual {p0, v3}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setLeftSummary(Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "miui.screenrecorder.storage"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mStorageLocation:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    invoke-direct {p0, v2, v1, v5}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->updateIntListPreference(Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    .line 202
    .local v0, "isOK":Z
    if-nez v0, :cond_0

    .line 203
    iget-object v2, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mStorageLocation:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    const-string v3, "0"

    invoke-direct {p0, v2, v3, v5}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->updateIntListPreference(Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/String;)Z

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mStorageLocation:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    invoke-virtual {v2, p0}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 211
    .end local v0    # "isOK":Z
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return-void

    .line 207
    :cond_1
    const-string v2, "miui.screenrecorder.ListPreference"

    invoke-virtual {p0, v2}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    const-string v3, "miui.screenrecorder.storage"

    .line 208
    invoke-virtual {p0, v3}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private recorderIsFixedFrame(Ljava/lang/Object;)V
    .locals 4
    .param p1, "isFixedFrame"    # Ljava/lang/Object;

    .prologue
    .line 395
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 396
    .local v1, "isFixed":Z
    const-string v2, "fixed_frame"

    invoke-direct {p0, v2, v1}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->statisForRadioButton(Ljava/lang/String;Z)V

    .line 397
    iget-object v2, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mFrames:Lcom/miui/screenrecorder/view/FramesListPreference;

    invoke-virtual {v2, v1}, Lcom/miui/screenrecorder/view/FramesListPreference;->refreshLayout(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .end local v1    # "isFixed":Z
    :goto_0
    return-void

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ScreenRecorderSettings"

    const-string v3, "recorderIsFixedFrame exception"

    invoke-static {v2, v3, v0}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private recorderIsGoHome(Ljava/lang/Object;)V
    .locals 3
    .param p1, "isGoHome"    # Ljava/lang/Object;

    .prologue
    .line 405
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 406
    .local v1, "isGo":Z
    const-string v2, "close_go_home"

    invoke-direct {p0, v2, v1}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->statisForRadioButton(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    .end local v1    # "isGo":Z
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private recorderKeyEvent(Ljava/lang/Object;)V
    .locals 6
    .param p1, "isShowKeyEvent"    # Ljava/lang/Object;

    .prologue
    .line 383
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 384
    .local v2, "isShow":Z
    new-instance v1, Landroid/content/Intent;

    const-string v3, "miui.screenrecorder.touch.hardkey"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "show_touch"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 386
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 387
    const-string v3, "show_keyevent"

    invoke-direct {p0, v3, v2}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->statisForRadioButton(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isShow":Z
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ScreenRecorderSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recorderKeyEvent exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private recorderStopWhileLock(Ljava/lang/Object;)V
    .locals 5
    .param p1, "isStopValue"    # Ljava/lang/Object;

    .prologue
    .line 362
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 363
    .local v1, "isStop":Z
    const-string v2, "stop_while_lock"

    invoke-direct {p0, v2, v1}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->statisForRadioButton(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .end local v1    # "isStop":Z
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ScreenRecorderSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recorderStopWhileLock exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private recorderTouch(Ljava/lang/Object;)V
    .locals 6
    .param p1, "isShowTouch"    # Ljava/lang/Object;

    .prologue
    .line 371
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 372
    .local v2, "isShow":Z
    new-instance v1, Landroid/content/Intent;

    const-string v3, "miui.screenrecorder.touch.mode.change"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "show_touch"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 374
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 375
    const-string v3, "show_touch"

    invoke-direct {p0, v3, v2}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->statisForRadioButton(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isShow":Z
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ScreenRecorderSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recorderTouch exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showFirstUsingDialog(Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "preference"    # Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;
    .param p2, "newValue"    # Ljava/lang/Object;
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 436
    iget-object v1, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mFirstSelectMicDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mFirstSelectMicDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 437
    :cond_0
    new-instance v1, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment$1;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment$1;-><init>(Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mFirstUsePosListener:Landroid/content/DialogInterface$OnClickListener;

    .line 445
    new-instance v1, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment$2;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment$2;-><init>(Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mFirstUseNegListener:Landroid/content/DialogInterface$OnClickListener;

    .line 452
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 453
    invoke-virtual {p0}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 454
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 455
    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 456
    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 457
    const v1, 0x7f08005c

    iget-object v2, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mFirstUsePosListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 458
    const v1, 0x7f08005b

    iget-object v2, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mFirstUseNegListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 459
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mFirstSelectMicDialog:Landroid/app/AlertDialog;

    .line 460
    iget-object v1, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mFirstSelectMicDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 461
    iget-object v1, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mFirstSelectMicDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment$3;

    invoke-direct {v2, p0}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment$3;-><init>(Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 469
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    :cond_1
    return-void
.end method

.method private statisForListButton(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 427
    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    .line 428
    .local v0, "miStatParams":Lcom/xiaomi/stat/MiStatParams;
    const-string v1, "setting_item"

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v1, "setting_value"

    invoke-virtual {v0, v1, p2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v1, "Screenrecorder_setting"

    const-string v2, "setting_action"

    invoke-static {v1, v2, v0}, Lcom/miui/screenrecorder/tools/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 432
    return-void
.end method

.method private statisForRadioButton(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isOpen"    # Z

    .prologue
    .line 413
    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    .line 414
    .local v0, "miStatParams":Lcom/xiaomi/stat/MiStatParams;
    const-string v2, "setting_item"

    invoke-virtual {v0, v2, p1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    if-eqz p2, :cond_0

    .line 417
    const-string v1, "open"

    .line 421
    .local v1, "value":Ljava/lang/String;
    :goto_0
    const-string v2, "setting_value"

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/stat/MiStatParams;->putBoolean(Ljava/lang/String;Z)V

    .line 423
    const-string v2, "Screenrecorder_setting"

    const-string v3, "setting_action"

    invoke-static {v2, v3, v0}, Lcom/miui/screenrecorder/tools/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 424
    return-void

    .line 419
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    const-string v1, "close"

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateFloatListPreference(Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 7
    .param p1, "preference"    # Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;
    .param p2, "newValue"    # Ljava/lang/Object;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 295
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    .line 296
    .local v1, "newVal":Ljava/lang/Float;
    if-nez v1, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v5

    .line 297
    :cond_1
    invoke-virtual {p1}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 298
    .local v4, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, v4

    if-ge v0, v6, :cond_0

    .line 299
    aget-object v6, v4, v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 300
    .local v3, "val":Ljava/lang/Float;
    invoke-virtual {v1, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 301
    invoke-virtual {p1, v0}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setValueIndex(I)V

    .line 302
    invoke-virtual {p1}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setRightValue(Ljava/lang/String;)V

    .line 303
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 304
    invoke-virtual {p1}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "paramvalue":Ljava/lang/String;
    invoke-direct {p0, p3, v2}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->statisForListButton(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .end local v2    # "paramvalue":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 298
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateIntListPreference(Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 8
    .param p1, "preference"    # Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;
    .param p2, "newValue"    # Ljava/lang/Object;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 246
    const/4 v4, -0x1

    .line 248
    .local v4, "value":I
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 253
    if-gez v4, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v6

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 254
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p1}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 255
    .local v5, "values":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v5

    if-ge v1, v7, :cond_0

    .line 256
    aget-object v7, v5, v1

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 257
    .local v3, "val":I
    if-ne v3, v4, :cond_3

    .line 258
    invoke-virtual {p1, v1}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setValueIndex(I)V

    .line 259
    invoke-virtual {p1}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setRightValue(Ljava/lang/String;)V

    .line 260
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 261
    invoke-virtual {p1}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "paramvalue":Ljava/lang/String;
    invoke-direct {p0, p3, v2}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->statisForListButton(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .end local v2    # "paramvalue":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    .line 255
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private updateStringListPreference(Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 7
    .param p1, "preference"    # Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;
    .param p2, "newValue"    # Ljava/lang/Object;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 273
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "newVal":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v5

    .line 275
    :cond_1
    invoke-virtual {p1}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 276
    .local v4, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, v4

    if-ge v0, v6, :cond_0

    .line 277
    aget-object v6, v4, v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "va":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 279
    invoke-virtual {p1, v0}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setValueIndex(I)V

    .line 280
    invoke-virtual {p1}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->setRightValue(Ljava/lang/String;)V

    .line 281
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 282
    invoke-virtual {p1}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "paramvalue":Ljava/lang/String;
    invoke-direct {p0, p3, v2}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->statisForListButton(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .end local v2    # "paramvalue":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 276
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 473
    invoke-super {p0, p1}, Lmiui/preference/PreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 474
    invoke-static {p1}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->getLocaleFromConfig(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    .line 475
    .local v0, "locale":Ljava/util/Locale;
    iget-object v1, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 477
    iput-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mLocale:Ljava/util/Locale;

    .line 478
    invoke-virtual {p0}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->setDefaultValue(Landroid/app/Activity;)V

    .line 479
    invoke-virtual {p0}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V

    .line 481
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lmiui/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->getLocaleFromConfig(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mLocale:Ljava/util/Locale;

    .line 70
    const v0, 0x7f0c0009

    invoke-virtual {p0, v0}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->setThemeRes(I)V

    .line 71
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->addPreferencesFromResource(I)V

    .line 72
    invoke-static {}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->getConfig()Lcom/miui/screenrecorder/config/ScreenRecorderConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->refresh(Landroid/app/Activity;)V

    .line 73
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->initListPreference()V

    .line 74
    invoke-direct {p0}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->initCheckBoxPreference()V

    .line 75
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lmiui/preference/PreferenceFragment;->onDestroy()V

    .line 80
    iget-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mFirstSelectMicDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mFirstSelectMicDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 83
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 316
    iget-object v3, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mResolution:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    if-ne p1, v3, :cond_0

    .line 317
    iget-object v3, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mResolution:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    const-string v4, "resolution"

    invoke-direct {p0, v3, p2, v4}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->updateStringListPreference(Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/String;)Z

    .line 357
    :goto_0
    return v2

    .line 319
    :cond_0
    iget-object v3, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mBitRate:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    if-ne p1, v3, :cond_1

    .line 320
    iget-object v3, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mBitRate:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    const-string v4, "bitrate"

    invoke-direct {p0, v3, p2, v4}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->updateFloatListPreference(Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/String;)Z

    goto :goto_0

    .line 322
    :cond_1
    iget-object v3, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mFrames:Lcom/miui/screenrecorder/view/FramesListPreference;

    if-ne p1, v3, :cond_2

    .line 323
    iget-object v3, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mFrames:Lcom/miui/screenrecorder/view/FramesListPreference;

    const-string v4, "frames"

    invoke-direct {p0, v3, p2, v4}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->updateIntListPreference(Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/String;)Z

    goto :goto_0

    .line 325
    :cond_2
    iget-object v3, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mScreenOrientation:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    if-ne p1, v3, :cond_3

    .line 326
    iget-object v3, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mScreenOrientation:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    const-string v4, "screen_orientation"

    invoke-direct {p0, v3, p2, v4}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->updateIntListPreference(Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/String;)Z

    goto :goto_0

    .line 328
    :cond_3
    iget-object v3, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mSoundSource:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    if-ne p1, v3, :cond_5

    move-object v1, p2

    .line 329
    check-cast v1, Ljava/lang/String;

    .line 330
    .local v1, "value":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->getConfig()Lcom/miui/screenrecorder/config/ScreenRecorderConfig;

    move-result-object v3

    .line 331
    invoke-virtual {v3}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->isShowFirstSelectMicAlert()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-nez v3, :cond_4

    .line 332
    iget-object v3, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mSoundSource:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    invoke-virtual {v3}, Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "oldValue":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mSoundSource:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    const-string v4, "sound_source"

    invoke-direct {p0, v3, p2, v0, v4}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->showFirstUsingDialog(Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 336
    .end local v0    # "oldValue":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mSoundSource:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    const-string v4, "sound_source"

    invoke-direct {p0, v3, p2, v4}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->updateIntListPreference(Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/String;)Z

    goto :goto_0

    .line 338
    .end local v1    # "value":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mStorageLocation:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    if-ne p1, v3, :cond_6

    .line 339
    iget-object v3, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mStorageLocation:Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;

    const-string v4, "storage_location"

    invoke-direct {p0, v3, p2, v4}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->updateIntListPreference(Lcom/miui/screenrecorder/view/MiuiScreenRecorderListPreference;Ljava/lang/Object;Ljava/lang/String;)Z

    goto :goto_0

    .line 341
    :cond_6
    iget-object v3, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mIsStopWhileLock:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_7

    .line 342
    invoke-direct {p0, p2}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->recorderStopWhileLock(Ljava/lang/Object;)V

    goto :goto_0

    .line 344
    :cond_7
    iget-object v3, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mIsShowTouch:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_8

    .line 345
    invoke-direct {p0, p2}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->recorderTouch(Ljava/lang/Object;)V

    goto :goto_0

    .line 347
    :cond_8
    iget-object v3, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mIsShowHardKey:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_9

    .line 348
    invoke-direct {p0, p2}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->recorderKeyEvent(Ljava/lang/Object;)V

    goto :goto_0

    .line 350
    :cond_9
    iget-object v3, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mIsFixedFrame:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_a

    .line 351
    invoke-direct {p0, p2}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->recorderIsFixedFrame(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 353
    :cond_a
    iget-object v3, p0, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->mIsGoHome:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_b

    .line 354
    invoke-direct {p0, p2}, Lcom/miui/screenrecorder/view/ScreenRecorderSettingsFragment;->recorderIsGoHome(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 357
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0
.end method
