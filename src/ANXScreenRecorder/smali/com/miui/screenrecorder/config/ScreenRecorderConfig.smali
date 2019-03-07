.class public Lcom/miui/screenrecorder/config/ScreenRecorderConfig;
.super Ljava/lang/Object;
.source "ScreenRecorderConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/screenrecorder/config/ScreenRecorderConfig$ConfigHolder;
    }
.end annotation


# static fields
.field private static final BIT_RATE_LEVEL:[I

.field private static final BIT_RATE_TAG:Ljava/lang/String; = "Mbps"

.field private static final BIT_RATE_TAG_AR:Ljava/lang/String; = " \u0645\u064a\u063a\u0627\u0628\u062a \u0641\u064a \u0627\u0644\u062b\u0627\u0646\u064a\u0629"

.field private static final BIT_RATE_TAG_FA_IR:Ljava/lang/String; = " \u0645\u06af\u0627\u0628\u0627\u06cc\u062a \u0628\u0631 \u062b\u0627\u0646\u06cc\u0647"

.field public static final CONFIG_FILE:Ljava/lang/String; = "PhoneConfig.json"

.field private static final DEFAULT_BIT_RATE:Ljava/lang/String; = "6"

.field private static final DEFAULT_BIT_RATE_HIGH:Ljava/lang/String; = "16"

.field private static final DEFAULT_FIXED_FRAME:Z = true

.field private static final DEFAULT_FRAMES:Ljava/lang/String; = "24"

.field private static final DEFAULT_IS_GO_HOME:Z = false

.field public static final DEFAULT_ORIENTATION:Ljava/lang/String; = "0"

.field private static final DEFAULT_SHOW_TOUCH:Z = false

.field public static final DEFAULT_SOUND:Ljava/lang/String; = "0"

.field private static final DEFAULT_STOP_WHILE_LOCK:Z = true

.field public static final DEFAULT_STORAGE_LOCATION:Ljava/lang/String; = "0"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final EDGE_RESOLUTION_RATIO:I = 0x1fa400

.field public static final FILE_PATH:Ljava/lang/String; = "file_path"

.field private static final FRAME_LEVEL:[I

.field private static final FRAME_LEVEL_TAG:Ljava/lang/String; = "fps"

.field private static final FRAME_LEVEL_TAG_AR:Ljava/lang/String; = " \u0644\u0642\u0637\u0629 \u0641\u064a \u0627\u0644\u062b\u0627\u0646\u064a\u0629"

.field private static final FRAME_LEVEL_TAG_FA_IR:Ljava/lang/String; = " \u0641\u0631\u06cc\u0645 \u0628\u0631 \u062b\u0627\u0646\u06cc\u0647"

.field private static final HIGH_BIG_FRAMES:I = 0x3c

.field public static final INNER_PCM:I = 0x0

.field public static final INNER_SOUND:Ljava/lang/String; = "2"

.field public static final INNER_SUBMIX:I = 0x1

.field public static final IS_OVER_MAX_SIZE:Ljava/lang/String; = "is_over_max_size"

.field public static final IS_SHOW_TOUCH:Ljava/lang/String; = "show_touch"

.field public static final KEY_SCREENRECORDER_BIT_RATE:Ljava/lang/String; = "miui.screenrecorder.bitrates"

.field public static final KEY_SCREENRECORDER_FIXED_FRAME:Ljava/lang/String; = "miui.screenrecorder.fixedframe"

.field public static final KEY_SCREENRECORDER_FRAMES:Ljava/lang/String; = "miui.screenrecorder.frame"

.field public static final KEY_SCREENRECORDER_IS_GO_HOME:Ljava/lang/String; = "miui.screenrecorder.isclosegohome"

.field public static final KEY_SCREENRECORDER_LISTPREFERENCE:Ljava/lang/String; = "miui.screenrecorder.ListPreference"

.field public static final KEY_SCREENRECORDER_ORIENTATION:Ljava/lang/String; = "miui.screenrecorder.orientation"

.field public static final KEY_SCREENRECORDER_RESOLUTION:Ljava/lang/String; = "miui.screenrecorder.resolution"

.field public static final KEY_SCREENRECORDER_SHOW_HARDKEY:Ljava/lang/String; = "miui.screenrecorder.showhardkey"

.field public static final KEY_SCREENRECORDER_SHOW_TOUCH:Ljava/lang/String; = "miui.screenrecorder.showtouch"

.field public static final KEY_SCREENRECORDER_SOUND:Ljava/lang/String; = "miui.screenrecorder.sound"

.field public static final KEY_SCREENRECORDER_STOP_WHILE_LOCK:Ljava/lang/String; = "miui.screenrecorder.stopwhilelock"

.field public static final KEY_SCREENRECORDER_STORAGE_LOCATION:Ljava/lang/String; = "miui.screenrecorder.storage"

.field public static final MIC_SOUND:Ljava/lang/String; = "1"

.field public static final MIC_SOUND_STREAM:I = 0x1

.field public static final NO_SOUND:Ljava/lang/String; = "0"

.field public static final NO_SOUND_STREAM:I = 0x0

.field public static final PCM_SOUND_STREAM:I = 0x2

.field private static final PREF_PERMISSION_INFO_FOR_KOREA_SHOWED:Ljava/lang/String; = "pref_permission_info_for_korea_showed"

.field private static final PREF_SHOW_FIRST_SELECT_MIC_ALERT:Ljava/lang/String; = "pref_show_first_select_mic_alert"

.field public static final RECORD_FAIL_BROADCAST:Ljava/lang/String; = "miui.screenrecorder.record.fail"

.field public static final RECORD_SUCCESS_BROADCAST:Ljava/lang/String; = "miui.screenrecorder.record.sucess"

.field private static RESOLUTION_LEVEL_1:I = 0x0

.field private static RESOLUTION_LEVEL_2:I = 0x0

.field private static RESOLUTION_LEVEL_3:I = 0x0

.field private static RESOLUTION_LEVEL_VALUE_1:Ljava/lang/String; = null

.field private static RESOLUTION_LEVEL_VALUE_1_VALUE:Ljava/lang/String; = null

.field private static RESOLUTION_LEVEL_VALUE_2:Ljava/lang/String; = null

.field private static RESOLUTION_LEVEL_VALUE_2_VALUE:Ljava/lang/String; = null

.field private static RESOLUTION_LEVEL_VALUE_3:Ljava/lang/String; = null

.field private static RESOLUTION_LEVEL_VALUE_3_VALUE:Ljava/lang/String; = null

.field public static final RESOLUTION_SPLIT:Ljava/lang/String; = "*"

.field public static final SUBMIX_SOUND_STREAM:I = 0x3

.field public static final TAG:Ljava/lang/String; = "ScreenRecorderConfig"

.field public static final TOUCH_MODE_CHANGE_BROADCAST:Ljava/lang/String; = "miui.screenrecorder.touch.mode.change"

.field public static final TOUCH_MODE_HARDKEY_BROADCAST:Ljava/lang/String; = "miui.screenrecorder.touch.hardkey"

.field public static bitrateList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static bitrateValues:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static defaultBitRate:Ljava/lang/String; = null

.field public static defaultFrames:Ljava/lang/String; = null

.field public static defaultResolution:Ljava/lang/String; = null

.field public static defaultResolutionValue:Ljava/lang/String; = null

.field public static defaultSound:Ljava/lang/String; = null

.field public static framesList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static framesValues:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final maxFileSize:J = 0xed800000L

.field public static resolutionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static resolutionValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static soundList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static soundValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mLocale:Ljava/util/Locale;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->BIT_RATE_LEVEL:[I

    .line 92
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->FRAME_LEVEL:[I

    .line 104
    const-string v0, ""

    sput-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultResolution:Ljava/lang/String;

    .line 105
    const-string v0, ""

    sput-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultResolutionValue:Ljava/lang/String;

    .line 106
    const-string v0, "6"

    sput-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultBitRate:Ljava/lang/String;

    .line 107
    const-string v0, "24"

    sput-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultFrames:Ljava/lang/String;

    .line 108
    const-string v0, ""

    sput-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultSound:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->resolutionList:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->resolutionValues:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->bitrateList:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->bitrateValues:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->framesList:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->framesValues:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->soundList:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->soundValues:Ljava/util/ArrayList;

    return-void

    .line 91
    :array_0
    .array-data 4
        0xc8
        0x64
        0x32
        0x20
        0x18
        0x10
        0x8
        0x6
        0x4
        0x1
    .end array-data

    .line 92
    :array_1
    .array-data 4
        0xf
        0x18
        0x1e
        0x30
        0x3c
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->getLocaleFromConfig(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->mLocale:Ljava/util/Locale;

    .line 129
    invoke-static {p1}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->setResolutionValue(Landroid/content/Context;)V

    .line 130
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/miui/screenrecorder/config/ScreenRecorderConfig$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/miui/screenrecorder/config/ScreenRecorderConfig$1;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static getClassInfo(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 479
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static final getConfig()Lcom/miui/screenrecorder/config/ScreenRecorderConfig;
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig$ConfigHolder;->access$100()Lcom/miui/screenrecorder/config/ScreenRecorderConfig;

    move-result-object v0

    return-object v0
.end method

.method private static initResolution(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 153
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 154
    .local v0, "device":Ljava/lang/String;
    const-string v5, "cappu"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "resolutionValues":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "resolutionFullValues":[Ljava/lang/String;
    :goto_0
    array-length v5, v2

    if-ne v5, v10, :cond_0

    array-length v5, v1

    if-eq v5, v10, :cond_3

    .line 173
    :cond_0
    const-string v5, "ScreenRecorderConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error when reading data, resolutions.length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", resolutionFullValues.length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :goto_1
    return-void

    .line 159
    .end local v1    # "resolutionFullValues":[Ljava/lang/String;
    .end local v2    # "resolutionValues":[Ljava/lang/String;
    :cond_1
    const-string v5, "lotus"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 162
    .restart local v2    # "resolutionValues":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "resolutionFullValues":[Ljava/lang/String;
    goto :goto_0

    .line 165
    .end local v1    # "resolutionFullValues":[Ljava/lang/String;
    .end local v2    # "resolutionValues":[Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 167
    .restart local v2    # "resolutionValues":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "resolutionFullValues":[Ljava/lang/String;
    goto :goto_0

    .line 179
    :cond_3
    aget-object v5, v2, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->RESOLUTION_LEVEL_1:I

    .line 180
    aget-object v5, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->RESOLUTION_LEVEL_2:I

    .line 181
    aget-object v5, v2, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->RESOLUTION_LEVEL_3:I

    .line 182
    aget-object v5, v1, v8

    sput-object v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->RESOLUTION_LEVEL_VALUE_1_VALUE:Ljava/lang/String;

    .line 183
    aget-object v5, v1, v7

    sput-object v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->RESOLUTION_LEVEL_VALUE_2_VALUE:Ljava/lang/String;

    .line 184
    aget-object v5, v1, v9

    sput-object v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->RESOLUTION_LEVEL_VALUE_3_VALUE:Ljava/lang/String;

    .line 185
    const-string v3, "\\*"

    .line 186
    .local v3, "splitReg":Ljava/lang/String;
    aget-object v5, v1, v8

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "tempHW":[Ljava/lang/String;
    invoke-static {}, Lcom/miui/screenrecorder/tools/RegionUtils;->isInARLan()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/miui/screenrecorder/tools/RegionUtils;->isInFaIRLan()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 188
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v8

    .line 189
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->RESOLUTION_LEVEL_VALUE_1:Ljava/lang/String;

    .line 190
    aget-object v5, v1, v7

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 191
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v8

    .line 192
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->RESOLUTION_LEVEL_VALUE_2:Ljava/lang/String;

    .line 193
    aget-object v5, v1, v9

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v8

    .line 195
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->RESOLUTION_LEVEL_VALUE_3:Ljava/lang/String;

    .line 206
    :goto_2
    const-string v5, "ScreenRecorderConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "device = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", resolution values = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->RESOLUTION_LEVEL_1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->RESOLUTION_LEVEL_2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->RESOLUTION_LEVEL_3:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 197
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v7

    .line 198
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->RESOLUTION_LEVEL_VALUE_1:Ljava/lang/String;

    .line 199
    aget-object v5, v1, v7

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v7

    .line 201
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->RESOLUTION_LEVEL_VALUE_2:Ljava/lang/String;

    .line 202
    aget-object v5, v1, v9

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v7

    .line 204
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->RESOLUTION_LEVEL_VALUE_3:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private static setBitrateFrameValue()V
    .locals 14

    .prologue
    .line 432
    const/4 v8, 0x0

    .line 433
    .local v8, "minBitRate":I
    const/4 v5, 0x1

    .line 434
    .local v5, "maxBitRate":I
    const/4 v9, 0x0

    .line 435
    .local v9, "minFrameRate":I
    const/4 v6, 0x0

    .line 438
    .local v6, "maxFrameRate":I
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 439
    .local v0, "device":Ljava/lang/String;
    const-string v11, "hennessy"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 440
    const/16 v5, 0x14

    .line 441
    const/16 v8, 0x14

    .line 442
    const/16 v6, 0x1e

    .line 443
    const/16 v9, 0xf

    .line 467
    :cond_0
    :goto_0
    invoke-static {}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->isSupportHighFrames()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 468
    const/16 v6, 0x3c

    .line 470
    :cond_1
    const-string v11, "ScreenRecorderConfig"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "initBitrateFrameValue, device = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", bit rate[max = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", min = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "], frame rate[max = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", min = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-static {v5, v8}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->setBitrateValue(II)V

    .line 475
    invoke-static {v6, v9}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->setFramesValue(II)V

    .line 476
    return-void

    .line 444
    :cond_2
    const-string v11, "hermes"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 445
    const/16 v5, 0x14

    .line 446
    const/16 v8, 0x10

    .line 447
    const/16 v6, 0x1e

    .line 448
    const/16 v9, 0xf

    goto :goto_0

    .line 451
    :cond_3
    :try_start_0
    const-string v11, "android.media.EncoderCapabilities"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 452
    .local v2, "ec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v11, "getVideoEncoders"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v2, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 453
    .local v7, "method":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v7, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 454
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_0

    .line 455
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 456
    .local v10, "object":Ljava/lang/Object;
    const-string v11, "mCodec"

    invoke-static {v10, v11}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->getClassInfo(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_4

    .line 457
    const-string v11, "mMinBitRate"

    invoke-static {v10, v11}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->getClassInfo(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const v12, 0xf4240

    div-int v8, v11, v12

    .line 458
    const-string v11, "mMaxBitRate"

    invoke-static {v10, v11}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->getClassInfo(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const v12, 0xf4240

    div-int v5, v11, v12

    .line 459
    const-string v11, "mMinFrameRate"

    invoke-static {v10, v11}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->getClassInfo(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 460
    const-string v11, "mMaxFrameRate"

    invoke-static {v10, v11}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->getClassInfo(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 454
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 463
    .end local v2    # "ec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "i":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v7    # "method":Ljava/lang/reflect/Method;
    .end local v10    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 464
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private static setBitrateValue(II)V
    .locals 5
    .param p0, "maxValue"    # I
    .param p1, "minValue"    # I

    .prologue
    .line 483
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->bitrateList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 484
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->bitrateList:Ljava/util/ArrayList;

    .line 486
    :cond_0
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->bitrateList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 487
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->bitrateValues:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 488
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->bitrateValues:Ljava/util/ArrayList;

    .line 490
    :cond_1
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->bitrateValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 493
    invoke-static {}, Lcom/miui/screenrecorder/tools/RegionUtils;->isInARLan()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 494
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->bitrateList:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u0645\u064a\u063a\u0627\u0628\u062a \u0641\u064a \u0627\u0644\u062b\u0627\u0646\u064a\u0629"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    :goto_0
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->bitrateValues:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->BIT_RATE_LEVEL:[I

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 504
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->BIT_RATE_LEVEL:[I

    aget v1, v2, v0

    .line 505
    .local v1, "rate":I
    if-ge v1, p0, :cond_7

    if-lt v1, p1, :cond_7

    .line 506
    invoke-static {}, Lcom/miui/screenrecorder/tools/RegionUtils;->isInARLan()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 507
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->bitrateList:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u0645\u064a\u063a\u0627\u0628\u062a \u0641\u064a \u0627\u0644\u062b\u0627\u0646\u064a\u0629"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    :goto_2
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->bitrateValues:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 495
    .end local v0    # "i":I
    .end local v1    # "rate":I
    :cond_3
    invoke-static {}, Lcom/miui/screenrecorder/tools/RegionUtils;->isInFaIRLan()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 496
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->bitrateList:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u0645\u06af\u0627\u0628\u0627\u06cc\u062a \u0628\u0631 \u062b\u0627\u0646\u06cc\u0647"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 498
    :cond_4
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->bitrateList:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Mbps"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 508
    .restart local v0    # "i":I
    .restart local v1    # "rate":I
    :cond_5
    invoke-static {}, Lcom/miui/screenrecorder/tools/RegionUtils;->isInFaIRLan()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 509
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->bitrateList:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u0645\u06af\u0627\u0628\u0627\u06cc\u062a \u0628\u0631 \u062b\u0627\u0646\u06cc\u0647"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 511
    :cond_6
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->bitrateList:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Mbps"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 514
    :cond_7
    if-ge v1, p1, :cond_2

    .line 520
    .end local v1    # "rate":I
    :cond_8
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->bitrateValues:Ljava/util/ArrayList;

    sget-object v3, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->bitrateValues:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 521
    const-string v2, "ScreenRecorderConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "defaultBitRate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultBitRate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", max = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", min = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultBitRate:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, p0, :cond_a

    .line 525
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultBitRate:Ljava/lang/String;

    .line 529
    :cond_9
    :goto_3
    return-void

    .line 526
    :cond_a
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultBitRate:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, p1, :cond_9

    .line 527
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultBitRate:Ljava/lang/String;

    goto :goto_3
.end method

.method public static setDefaultValue(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 359
    sget-object v1, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->RESOLUTION_LEVEL_VALUE_1:Ljava/lang/String;

    sput-object v1, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultResolution:Ljava/lang/String;

    .line 360
    sget-object v1, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->RESOLUTION_LEVEL_VALUE_1_VALUE:Ljava/lang/String;

    sput-object v1, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultResolutionValue:Ljava/lang/String;

    .line 361
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 362
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 363
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/2addr v1, v2

    const v2, 0x1fa400

    if-le v1, v2, :cond_0

    .line 364
    const-string v1, "16"

    sput-object v1, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultBitRate:Ljava/lang/String;

    .line 368
    :goto_0
    const-string v1, "24"

    sput-object v1, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultFrames:Ljava/lang/String;

    .line 369
    const-string v1, "0"

    sput-object v1, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultSound:Ljava/lang/String;

    .line 370
    invoke-static {p0}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->setResolutionValue(Landroid/content/Context;)V

    .line 371
    invoke-static {}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->setBitrateFrameValue()V

    .line 372
    invoke-static {p0}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->setSoundValue(Landroid/content/Context;)V

    .line 373
    return-void

    .line 366
    :cond_0
    const-string v1, "6"

    sput-object v1, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultBitRate:Ljava/lang/String;

    goto :goto_0
.end method

.method private static setFramesValue(II)V
    .locals 5
    .param p0, "maxValue"    # I
    .param p1, "minValue"    # I

    .prologue
    .line 532
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->framesList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 533
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->framesList:Ljava/util/ArrayList;

    .line 535
    :cond_0
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->framesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 536
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->framesValues:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 537
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->framesValues:Ljava/util/ArrayList;

    .line 539
    :cond_1
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->framesValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 542
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->FRAME_LEVEL:[I

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 543
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->FRAME_LEVEL:[I

    aget v0, v2, v1

    .line 544
    .local v0, "frame":I
    if-gt v0, p0, :cond_5

    if-lt v0, p1, :cond_5

    .line 545
    invoke-static {}, Lcom/miui/screenrecorder/tools/RegionUtils;->isInARLan()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 546
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->framesList:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u0644\u0642\u0637\u0629 \u0641\u064a \u0627\u0644\u062b\u0627\u0646\u064a\u0629"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    :goto_1
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->framesValues:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 547
    :cond_3
    invoke-static {}, Lcom/miui/screenrecorder/tools/RegionUtils;->isInFaIRLan()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 548
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->framesList:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u0641\u0631\u06cc\u0645 \u0628\u0631 \u062b\u0627\u0646\u06cc\u0647"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 550
    :cond_4
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->framesList:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "fps"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 553
    :cond_5
    if-le v0, p0, :cond_2

    .line 558
    .end local v0    # "frame":I
    :cond_6
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->framesValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_8

    .line 559
    const-string v2, "ScreenRecorderConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when set frame value, maxValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", minValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/screenrecorder/tools/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :cond_7
    :goto_2
    return-void

    .line 565
    :cond_8
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->framesValues:Ljava/util/ArrayList;

    sget-object v3, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->framesValues:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 566
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->framesValues:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 567
    const-string v2, "ScreenRecorderConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "defaultFrames = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultFrames:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", max = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", min = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultFrames:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, p0, :cond_9

    .line 570
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultFrames:Ljava/lang/String;

    goto :goto_2

    .line 571
    :cond_9
    sget-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultFrames:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, p1, :cond_7

    .line 572
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultFrames:Ljava/lang/String;

    goto :goto_2
.end method

.method private static setResolutionValue(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 376
    invoke-static {p0}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->initResolution(Landroid/content/Context;)V

    .line 378
    sget-object v4, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->resolutionList:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 379
    sget-object v4, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->resolutionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 383
    :goto_0
    sget-object v4, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->resolutionValues:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 384
    sget-object v4, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->resolutionValues:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 388
    :goto_1
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 389
    .local v3, "windowManager":Landroid/view/WindowManager;
    const/16 v1, 0x320

    .line 390
    .local v1, "maxResolutionHeight":I
    const/16 v2, 0x1e0

    .line 391
    .local v2, "maxResolutionWidth":I
    const-string v4, "lithium"

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 392
    const/16 v1, 0x7f8

    .line 393
    const/16 v2, 0x438

    .line 411
    :goto_2
    invoke-static {}, Lcom/miui/screenrecorder/tools/RegionUtils;->isInARLan()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/miui/screenrecorder/tools/RegionUtils;->isInFaIRLan()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 412
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 413
    invoke-static {v1}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultResolution:Ljava/lang/String;

    .line 418
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultResolutionValue:Ljava/lang/String;

    .line 419
    sget-object v4, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->resolutionList:Ljava/util/ArrayList;

    sget-object v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultResolution:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    sget-object v4, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->resolutionValues:Ljava/util/ArrayList;

    sget-object v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultResolutionValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    sget v4, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->RESOLUTION_LEVEL_2:I

    if-le v2, v4, :cond_1

    .line 422
    sget-object v4, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->resolutionList:Ljava/util/ArrayList;

    sget-object v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->RESOLUTION_LEVEL_VALUE_2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    sget-object v4, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->resolutionValues:Ljava/util/ArrayList;

    sget-object v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->RESOLUTION_LEVEL_VALUE_2_VALUE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_1
    sget v4, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->RESOLUTION_LEVEL_3:I

    if-le v2, v4, :cond_2

    .line 426
    sget-object v4, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->resolutionList:Ljava/util/ArrayList;

    sget-object v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->RESOLUTION_LEVEL_VALUE_3:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    sget-object v4, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->resolutionValues:Ljava/util/ArrayList;

    sget-object v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->RESOLUTION_LEVEL_VALUE_3_VALUE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_2
    return-void

    .line 381
    .end local v1    # "maxResolutionHeight":I
    .end local v2    # "maxResolutionWidth":I
    .end local v3    # "windowManager":Landroid/view/WindowManager;
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->resolutionList:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 386
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->resolutionValues:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 394
    .restart local v1    # "maxResolutionHeight":I
    .restart local v2    # "maxResolutionWidth":I
    .restart local v3    # "windowManager":Landroid/view/WindowManager;
    :cond_5
    const-string v4, "cappu"

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 395
    const/16 v1, 0x5a0

    .line 396
    const/16 v2, 0x438

    goto/16 :goto_2

    .line 397
    :cond_6
    const-string v4, "lotus"

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 398
    const/16 v1, 0x780

    .line 399
    const/16 v2, 0x38e

    goto/16 :goto_2

    .line 401
    :cond_7
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 402
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    if-eqz v3, :cond_8

    .line 403
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 404
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 405
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 406
    const-string v4, "ScreenRecorderConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maxResolutionHeight "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " maxResolutionWidth "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 408
    :cond_8
    const-string v4, "ScreenRecorderConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "windowManager is null! maxResolutionHeight "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " maxResolutionWidth "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 415
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 416
    invoke-static {v2}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->obtainLocalInteger(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultResolution:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method private static setSoundValue(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 577
    sget-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->soundList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->soundList:Ljava/util/ArrayList;

    .line 580
    :cond_0
    sget-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->soundList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 581
    sget-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->soundValues:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->soundValues:Ljava/util/ArrayList;

    .line 584
    :cond_1
    sget-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->soundList:Ljava/util/ArrayList;

    const v1, 0x7f080035

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    sget-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->soundList:Ljava/util/ArrayList;

    const v1, 0x7f080032

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    sget-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->soundValues:Ljava/util/ArrayList;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    sget-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->soundValues:Ljava/util/ArrayList;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    const-string v0, "0"

    sput-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultSound:Ljava/lang/String;

    .line 589
    invoke-static {}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->isShowInnerSoundEntrance()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 590
    const-string v0, "2"

    sput-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultSound:Ljava/lang/String;

    .line 591
    sget-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->soundList:Ljava/util/ArrayList;

    const v1, 0x7f08002a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    sget-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->soundValues:Ljava/util/ArrayList;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    :cond_2
    return-void
.end method


# virtual methods
.method public getBitRate()I
    .locals 6

    .prologue
    .line 225
    iget-object v3, p0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "miui.screenrecorder.bitrates"

    sget-object v5, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultBitRate:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "val":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    const-string v2, "6"

    .line 231
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 232
    .local v0, "bit":I
    const v3, 0xf4240

    mul-int/2addr v3, v0

    .line 236
    .end local v0    # "bit":I
    :goto_0
    return v3

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public getFrames()I
    .locals 5

    .prologue
    .line 243
    iget-object v2, p0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "miui.screenrecorder.frame"

    sget-object v4, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultFrames:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "val":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    const-string v1, "24"

    .line 249
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 253
    :goto_0
    return v2

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 253
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getIsFixedFrame()Z
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "miui.screenrecorder.fixedframe"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsGoHome()Z
    .locals 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "miui.screenrecorder.isclosegohome"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsShowHardKey()Z
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "miui.screenrecorder.showhardkey"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsShowTouch()Z
    .locals 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "miui.screenrecorder.showtouch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsStopWhileLock()Z
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "miui.screenrecorder.stopwhilelock"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 5

    .prologue
    .line 260
    iget-object v2, p0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "miui.screenrecorder.orientation"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "val":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 267
    :goto_0
    return v2

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 4

    .prologue
    .line 214
    iget-object v1, p0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "miui.screenrecorder.resolution"

    sget-object v3, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultResolution:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    sget-object v0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->RESOLUTION_LEVEL_VALUE_1:Ljava/lang/String;

    .line 218
    :cond_0
    return-object v0
.end method

.method public getSound()I
    .locals 5

    .prologue
    .line 288
    iget-object v2, p0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "miui.screenrecorder.sound"

    sget-object v4, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->defaultSound:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "val":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    const-string v1, "0"

    .line 294
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 298
    :goto_0
    return v2

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getStorageLocation()I
    .locals 5

    .prologue
    .line 274
    iget-object v2, p0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "miui.screenrecorder.storage"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "val":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 281
    :goto_0
    return v2

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 281
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public isShowFirstSelectMicAlert()Z
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_show_first_select_mic_alert"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowPermissionsInfoForKorea()Z
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_permission_info_for_korea_showed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public refresh(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->getLocaleFromConfig(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    .line 142
    .local v0, "newLocale":Ljava/util/Locale;
    iget-object v1, p0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->mLocale:Ljava/util/Locale;

    if-eq v1, v0, :cond_0

    .line 143
    iput-object v0, p0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->mLocale:Ljava/util/Locale;

    .line 144
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 145
    invoke-static {p1}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->setDefaultValue(Landroid/app/Activity;)V

    .line 147
    :cond_0
    return-void
.end method

.method public saveShowFirstSelectAlert(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 343
    iget-object v0, p0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_show_first_select_mic_alert"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 344
    return-void
.end method

.method public saveShowPermissionsInfoForKorea(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 351
    iget-object v0, p0, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_permission_info_for_korea_showed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 352
    return-void
.end method
