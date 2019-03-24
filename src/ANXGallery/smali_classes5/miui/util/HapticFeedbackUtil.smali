.class public Lmiui/util/HapticFeedbackUtil;
.super Ljava/lang/Object;
.source "HapticFeedbackUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/HapticFeedbackUtil$SettingsObserver;
    }
.end annotation


# static fields
.field private static final CLASS_VIBRATION_EFFECT:Ljava/lang/Class;

.field public static final EFFECT_KEY_CALCULATOR:Ljava/lang/String; = "calculator"

.field public static final EFFECT_KEY_CLOCK_PICKER:Ljava/lang/String; = "clock_picker"

.field public static final EFFECT_KEY_CLOCK_SECOND:Ljava/lang/String; = "clock_second"

.field public static final EFFECT_KEY_COMPASS_CALIBRATION:Ljava/lang/String; = "compass_calibration"

.field public static final EFFECT_KEY_COMPASS_NORTH:Ljava/lang/String; = "compass_north"

.field public static final EFFECT_KEY_HOME_DROP_FINISH:Ljava/lang/String; = "home_drop_finish"

.field public static final EFFECT_KEY_HOME_PICKUP_START:Ljava/lang/String; = "home_pickup_start"

.field public static final EFFECT_KEY_RECORDER_DELETE:Ljava/lang/String; = "recorder_delete"

.field public static final EFFECT_KEY_RECORDER_FINISH:Ljava/lang/String; = "recorder_finish"

.field public static final EFFECT_KEY_RECORDER_LIST:Ljava/lang/String; = "recorder_list"

.field public static final EFFECT_KEY_RECORDER_PAUSE:Ljava/lang/String; = "recorder_pause"

.field public static final EFFECT_KEY_RECORDER_PLAY:Ljava/lang/String; = "recorder_play"

.field public static final EFFECT_KEY_RECORDER_RECORD:Ljava/lang/String; = "recorder_record"

.field public static final EFFECT_KEY_RECORDER_RECORD_PAUSE:Ljava/lang/String; = "recorder_record_pause"

.field public static final EFFECT_KEY_RECORDER_REWIND:Ljava/lang/String; = "recorder_rewind"

.field public static final EFFECT_KEY_RECORDER_SLIDER:Ljava/lang/String; = "recorder_slider"

.field public static final EFFECT_KEY_RECORDER_STOP:Ljava/lang/String; = "recorder_stop"

.field public static final EFFECT_KEY_SCREEN_BUTTON_RECENT_TASK:Ljava/lang/String; = "screen_button_recent_task"

.field public static final EFFECT_KEY_SCREEN_BUTTON_VOICE_ASSIST:Ljava/lang/String; = "screen_button_voice_assist"

.field public static final EFFECT_KEY_TORCH_OFF:Ljava/lang/String; = "torch_off"

.field public static final EFFECT_KEY_TORCH_ON:Ljava/lang/String; = "torch_on"

.field public static final EFFECT_KEY_VIRTUAL_KEY_DOWN:Ljava/lang/String; = "virtual_key_down"

.field public static final EFFECT_KEY_VIRTUAL_KEY_LONGPRESS:Ljava/lang/String; = "virtual_key_longpress"

.field public static final EFFECT_KEY_VIRTUAL_KEY_TAP:Ljava/lang/String; = "virtual_key_tap"

.field public static final EFFECT_KEY_VIRTUAL_KEY_UP:Ljava/lang/String; = "virtual_key_up"

.field private static final ID_TO_KEY:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final IS_IMMERSION_ENABLED:Z = false

.field private static final KEY_VIBRATE_EX_ENABLED:Ljava/lang/String; = "ro.haptic.vibrate_ex.enabled"

.field private static final LEVEL_FACTOR:[F

.field private static final LEVEL_SUFFIX:[Ljava/lang/String;

.field private static final PROPERTY_KEY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "HapticFeedbackUtil"

.field private static final VIRTUAL_RELEASED:I = 0x2

.field private static final VibrateWithEffect:Lmiui/reflect/Method;

.field private static final VibrationEffectGet:Lmiui/reflect/Method;

.field private static final sPatternId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPatterns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLevel:I

.field private mSettingsObserver:Lmiui/util/HapticFeedbackUtil$SettingsObserver;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    const-string v0, ".weak"

    const-string v1, ".normal"

    const-string v2, ".strong"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->LEVEL_SUFFIX:[Ljava/lang/String;

    .line 39
    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lmiui/util/HapticFeedbackUtil;->LEVEL_FACTOR:[F

    .line 70
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    .line 72
    sget-object v1, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    const-string v2, "virtual_key_down"

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v1, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    const-string v2, "virtual_key_longpress"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    sget-object v1, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    const-string v2, "virtual_key_tap"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    const-string v1, "virtual_key_up"

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->getVibrationEffectClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->CLASS_VIBRATION_EFFECT:Ljava/lang/Class;

    .line 88
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->getVibrationEffectGet()Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->VibrationEffectGet:Lmiui/reflect/Method;

    .line 101
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->getVibratorMethod()Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->VibrateWithEffect:Lmiui/reflect/Method;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    .line 143
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    const-string v1, "virtual_key_down"

    const-string v2, "sys.haptic.down"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    const-string v1, "virtual_key_longpress"

    const-string v2, "sys.haptic.long"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    const-string v1, "virtual_key_tap"

    const-string v2, "sys.haptic.tap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    const-string v1, "virtual_key_up"

    const-string v2, "sys.haptic.up"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 7
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "onceOnly"    # Z

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 114
    .local v0, "sr":Landroid/content/res/Resources;
    const-string v1, "config_longPressVibePattern"

    const-string v2, "array"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 115
    .local v1, "config_longPressVibePattern":I
    const-string v2, "config_virtualKeyVibePattern"

    const-string v3, "array"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 116
    .local v2, "config_virtualKeyVibePattern":I
    const-string v3, "config_keyboardTapVibePattern"

    const-string v4, "array"

    const-string v5, "android"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 117
    .local v3, "config_keyboardTapVibePattern":I
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "compass_north"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "home_pickup_start"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "recorder_delete"

    sget v6, Lcom/miui/system/internal/R$array;->vibration_recorder_minor_action:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "recorder_finish"

    sget v6, Lcom/miui/system/internal/R$array;->vibration_recorder_minor_action:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "recorder_list"

    sget v6, Lcom/miui/system/internal/R$array;->vibration_recorder_minor_action:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "recorder_pause"

    sget v6, Lcom/miui/system/internal/R$array;->vibration_recorder_major_action:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "recorder_play"

    sget v6, Lcom/miui/system/internal/R$array;->vibration_recorder_major_action:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "recorder_record"

    sget v6, Lcom/miui/system/internal/R$array;->vibration_recorder_major_action:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "recorder_record_pause"

    sget v6, Lcom/miui/system/internal/R$array;->vibration_recorder_major_action:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "recorder_rewind"

    sget v6, Lcom/miui/system/internal/R$array;->vibration_recorder_rewind:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "recorder_slider"

    sget v6, Lcom/miui/system/internal/R$array;->vibration_recorder_slider:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "recorder_stop"

    sget v6, Lcom/miui/system/internal/R$array;->vibration_recorder_major_action:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "screen_button_recent_task"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "screen_button_voice_assist"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "torch_off"

    sget v6, Lcom/miui/system/internal/R$array;->vibration_torch_off:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "torch_on"

    sget v6, Lcom/miui/system/internal/R$array;->vibration_torch_on:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "virtual_key_longpress"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "virtual_key_down"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "virtual_key_tap"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v4, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    const-string v5, "virtual_key_up"

    sget v6, Lcom/miui/system/internal/R$array;->vibration_virtual_key_up:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .end local v0    # "sr":Landroid/content/res/Resources;
    .end local v1    # "config_longPressVibePattern":I
    .end local v2    # "config_virtualKeyVibePattern":I
    .end local v3    # "config_keyboardTapVibePattern":I
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    if-nez v0, :cond_0

    .line 158
    const-string v0, "ro.haptic.default_level"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 159
    :cond_0
    sget v0, Landroid/provider/MiuiSettings$System;->HAPTIC_FEEDBACK_LEVEL_DEFAULT:I

    :goto_0
    iput v0, p0, Lmiui/util/HapticFeedbackUtil;->mLevel:I

    .line 164
    iput-object p1, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    .line 165
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    .line 166
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    if-nez v0, :cond_1

    .line 167
    return-void

    .line 169
    :cond_1
    if-eqz p2, :cond_2

    .line 170
    invoke-virtual {p0}, Lmiui/util/HapticFeedbackUtil;->updateSettings()V

    goto :goto_1

    .line 172
    :cond_2
    new-instance v0, Lmiui/util/HapticFeedbackUtil$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lmiui/util/HapticFeedbackUtil$SettingsObserver;-><init>(Lmiui/util/HapticFeedbackUtil;Landroid/os/Handler;)V

    iput-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mSettingsObserver:Lmiui/util/HapticFeedbackUtil$SettingsObserver;

    .line 173
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mSettingsObserver:Lmiui/util/HapticFeedbackUtil$SettingsObserver;

    invoke-virtual {v0}, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->observe()V

    .line 175
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lmiui/util/HapticFeedbackUtil;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lmiui/util/HapticFeedbackUtil;

    .line 30
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Class;
    .locals 1

    .line 30
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->CLASS_VIBRATION_EFFECT:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$200()Lmiui/reflect/Method;
    .locals 1

    .line 30
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->VibrationEffectGet:Lmiui/reflect/Method;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/util/HapticFeedbackUtil;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lmiui/util/HapticFeedbackUtil;

    .line 30
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$400()Lmiui/reflect/Method;
    .locals 1

    .line 30
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->VibrateWithEffect:Lmiui/reflect/Method;

    return-object v0
.end method

.method private getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 6
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "resid"    # I

    .line 307
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 308
    .local v0, "ar":[I
    if-nez v0, :cond_0

    .line 309
    const/4 v1, 0x0

    return-object v1

    .line 311
    :cond_0
    array-length v1, v0

    new-array v1, v1, [J

    .line 312
    .local v1, "out":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 313
    aget v3, v0, v2

    int-to-float v3, v3

    sget-object v4, Lmiui/util/HapticFeedbackUtil;->LEVEL_FACTOR:[F

    iget v5, p0, Lmiui/util/HapticFeedbackUtil;->mLevel:I

    aget v4, v4, v5

    mul-float/2addr v3, v4

    float-to-long v3, v3

    aput-wide v3, v1, v2

    .line 312
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 315
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private static final getVibrationEffectClass()Ljava/lang/Class;
    .locals 2

    .line 82
    :try_start_0
    const-string v0, "android.os.VibrationEffect"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getVibrationEffectGet()Lmiui/reflect/Method;
    .locals 4

    .line 91
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->CLASS_VIBRATION_EFFECT:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 92
    return-object v1

    .line 95
    :cond_0
    :try_start_0
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->CLASS_VIBRATION_EFFECT:Ljava/lang/Class;

    const-string v2, "get"

    const-string v3, "(I)Landroid/os/VibrationEffect;"

    invoke-static {v0, v2, v3}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method private static getVibratorMethod()Lmiui/reflect/Method;
    .locals 3

    .line 105
    :try_start_0
    const-class v0, Landroid/os/Vibrator;

    const-string v1, "vibrate"

    const-string v2, "(Landroid/os/VibrationEffect;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private isUsePrebakedEffect()Z
    .locals 2

    .line 331
    sget-object v0, Lmiui/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "sdm855"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "cepheus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "andromeda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private loadPattern(Ljava/lang/String;)[J
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 286
    const/4 v0, 0x0

    .line 288
    .local v0, "result":[J
    sget-object v1, Lmiui/util/HapticFeedbackUtil;->PROPERTY_KEY:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 289
    .local v1, "propertyKey":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lmiui/util/HapticFeedbackUtil;->LEVEL_SUFFIX:[Ljava/lang/String;

    iget v4, p0, Lmiui/util/HapticFeedbackUtil;->mLevel:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-static {v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lmiui/util/HapticFeedbackUtil;->stringToLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 294
    :cond_0
    if-nez v0, :cond_1

    sget-object v2, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    sget-object v2, Lmiui/util/HapticFeedbackUtil;->sPatternId:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 297
    .local v2, "id":I
    :try_start_0
    iget-object v3, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/res/Resources;I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 299
    goto :goto_0

    .line 298
    :catch_0
    move-exception v3

    .line 300
    :goto_0
    iget-object v3, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lmiui/util/HapticFeedbackUtil;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    .line 303
    .end local v2    # "id":I
    :cond_1
    return-object v0
.end method

.method private stringToLongArray(Ljava/lang/String;)[J
    .locals 6
    .param p1, "pattern"    # Ljava/lang/String;

    .line 319
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 321
    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "splitStr":[Ljava/lang/String;
    array-length v1, v0

    .line 323
    .local v1, "los":I
    new-array v2, v1, [J

    .line 324
    .local v2, "returnByte":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 325
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 324
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 327
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method


# virtual methods
.method public isSupportedEffect(I)Z
    .locals 1
    .param p1, "effectId"    # I

    .line 184
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public performHapticFeedback(IZ)Z
    .locals 1
    .param p1, "effectId"    # I
    .param p2, "always"    # Z

    .line 223
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->ID_TO_KEY:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public performHapticFeedback(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "always"    # Z

    .line 227
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 228
    return v1

    .line 232
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->isHapticFeedbackDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 233
    .local v0, "hapticsDisabled":Z
    :goto_0
    if-nez p2, :cond_2

    if-eqz v0, :cond_2

    .line 234
    return v1

    .line 237
    :cond_2
    sget-object v3, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 238
    sget-object v3, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lmiui/util/HapticFeedbackUtil;->loadPattern(Ljava/lang/String;)[J

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_3
    sget-object v3, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 242
    .local v3, "pattern":[J
    if-eqz v3, :cond_7

    array-length v4, v3

    if-nez v4, :cond_4

    goto :goto_2

    .line 246
    :cond_4
    invoke-direct {p0}, Lmiui/util/HapticFeedbackUtil;->isUsePrebakedEffect()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lmiui/util/HapticFeedbackUtil;->VibrationEffectGet:Lmiui/reflect/Method;

    if-eqz v1, :cond_5

    sget-object v1, Lmiui/util/HapticFeedbackUtil;->VibrateWithEffect:Lmiui/reflect/Method;

    if-eqz v1, :cond_5

    .line 247
    new-instance v1, Lmiui/util/HapticFeedbackUtil$1;

    invoke-direct {v1, p0, v3}, Lmiui/util/HapticFeedbackUtil$1;-><init>(Lmiui/util/HapticFeedbackUtil;[J)V

    .line 258
    invoke-virtual {v1}, Lmiui/util/HapticFeedbackUtil$1;->start()V

    goto :goto_1

    .line 260
    :cond_5
    array-length v1, v3

    if-ne v1, v2, :cond_6

    .line 262
    new-instance v1, Lmiui/util/HapticFeedbackUtil$2;

    invoke-direct {v1, p0, v3}, Lmiui/util/HapticFeedbackUtil$2;-><init>(Lmiui/util/HapticFeedbackUtil;[J)V

    .line 267
    invoke-virtual {v1}, Lmiui/util/HapticFeedbackUtil$2;->start()V

    goto :goto_1

    .line 270
    :cond_6
    new-instance v1, Lmiui/util/HapticFeedbackUtil$3;

    invoke-direct {v1, p0, v3}, Lmiui/util/HapticFeedbackUtil$3;-><init>(Lmiui/util/HapticFeedbackUtil;[J)V

    .line 275
    invoke-virtual {v1}, Lmiui/util/HapticFeedbackUtil$3;->start()V

    .line 279
    :goto_1
    return v2

    .line 243
    :cond_7
    :goto_2
    const-string v2, "HapticFeedbackUtil"

    const-string v4, "vibrate: null or empty pattern"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return v1
.end method

.method public release()V
    .locals 1

    .line 178
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mSettingsObserver:Lmiui/util/HapticFeedbackUtil$SettingsObserver;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mSettingsObserver:Lmiui/util/HapticFeedbackUtil$SettingsObserver;

    invoke-virtual {v0}, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->unobserve()V

    .line 181
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 0

    .line 283
    return-void
.end method

.method public updateImmersionSettings(Z)V
    .locals 0
    .param p1, "forceUpdate"    # Z

    .line 220
    return-void
.end method

.method public updateSettings()V
    .locals 2

    .line 211
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->getHapticFeedbackLevel(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lmiui/util/HapticFeedbackUtil;->mLevel:I

    .line 213
    iget v0, p0, Lmiui/util/HapticFeedbackUtil;->mLevel:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lmiui/util/HapticFeedbackUtil;->mLevel:I

    .line 216
    sget-object v0, Lmiui/util/HapticFeedbackUtil;->sPatterns:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 217
    return-void
.end method
