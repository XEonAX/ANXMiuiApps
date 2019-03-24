.class public Landroid/content/res/MiuiConfiguration;
.super Ljava/lang/Object;
.source "MiuiConfiguration.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/content/res/MiuiConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field private static BASE_RESTART_FLAG:J = 0x0L

.field public static final CONTACTS_PKG_NAME:Ljava/lang/String; = "com.android.contacts"

.field public static final LAUNCHER_PKG_NAME:Ljava/lang/String; = "com.miui.home"

.field public static final MMS_PKG_NAME:Ljava/lang/String; = "com.android.mms"

.field public static final SYSTEMUI_PKG_NAME:Ljava/lang/String; = "com.android.systemui"

.field public static final SYSTEM_INTEREST_CHANGE_FLAG:J = 0x10007899L

.field private static final TAG:Ljava/lang/String; = "MiuiConfiguration"

.field public static final THEME_FLAG_ALARM:J = 0x400L

.field public static final THEME_FLAG_ALARMSTYLE:J = 0x100000L

.field public static final THEME_FLAG_AUDIO_EFFECT:J = 0x8000L

.field public static final THEME_FLAG_BOOT_ANIMATION:J = 0x20L

.field public static final THEME_FLAG_BOOT_AUDIO:J = 0x40L

.field public static final THEME_FLAG_CLOCK:J = 0x10000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final THEME_FLAG_CLOCK_1x2:J = 0x800000L

.field public static final THEME_FLAG_CLOCK_2x2:J = 0x1000000L

.field public static final THEME_FLAG_CLOCK_2x4:J = 0x2000000L

.field public static final THEME_FLAG_CONTACT:J = 0x800L

.field public static final THEME_FLAG_FONT:J = 0x10L

.field public static final THEME_FLAG_FRAMEWORK:J = 0x1L

.field public static final THEME_FLAG_FREE_HOME:J = 0x400000L

.field public static final THEME_FLAG_FREE_HOME_DEPRECATED:J = 0x200000L

.field public static final THEME_FLAG_ICON:J = 0x8L

.field public static final THEME_FLAG_LAST:J = 0x8000000L

.field public static final THEME_FLAG_LAUNCHER:J = 0x4000L

.field public static final THEME_FLAG_LOCKSCREEN:J = 0x4L

.field public static final THEME_FLAG_LOCKSTYLE:J = 0x1000L

.field public static final THEME_FLAG_MIWALLPAPER:J = 0x80000L

.field public static final THEME_FLAG_MMS:J = 0x80L

.field public static final THEME_FLAG_NOTIFICATION:J = 0x200L

.field public static final THEME_FLAG_PHOTO_FRAME:J = 0x20000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final THEME_FLAG_PHOTO_FRAME_2x2:J = 0x4000000L

.field public static final THEME_FLAG_PHOTO_FRAME_2x4:J = 0x8000000L

.field public static final THEME_FLAG_PHOTO_FRAME_4x4:J = 0x40000L

.field public static final THEME_FLAG_RINGTONE:J = 0x100L

.field public static final THEME_FLAG_STATUSBAR:J = 0x2000L

.field public static final THEME_FLAG_THIRD_APP:J = 0x10000000L

.field public static final THEME_FLAG_WALLPAPER:J = 0x2L

.field public static final THEME_FONT_FLAGS:J = 0x10L

.field public static final UI_MODE_TYPE_SCALE_GODZILLA:I = 0xb

.field public static final UI_MODE_TYPE_SCALE_HUGE:I = 0xf

.field public static final UI_MODE_TYPE_SCALE_LARGE:I = 0xe

.field public static final UI_MODE_TYPE_SCALE_MEDIUM:I = 0xd

.field public static final UI_MODE_TYPE_SCALE_SMALL:I = 0xc

.field private static sForceScreenLayoutSize:I

.field private static sHadReadForceScreenLayoutSize:Z


# instance fields
.field private lastFontThemeChanged:I

.field public themeChanged:I

.field public themeChangedFlags:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 202
    const-wide/16 v0, 0x19

    sput-wide v0, Landroid/content/res/MiuiConfiguration;->BASE_RESTART_FLAG:J

    .line 254
    const/4 v0, 0x0

    sput-boolean v0, Landroid/content/res/MiuiConfiguration;->sHadReadForceScreenLayoutSize:Z

    .line 255
    const/4 v0, -0x1

    sput v0, Landroid/content/res/MiuiConfiguration;->sForceScreenLayoutSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method private static getExtraConfig(Landroid/content/res/Configuration;)Landroid/content/res/MiuiConfiguration;
    .locals 3
    .param p0, "configuration"    # Landroid/content/res/Configuration;

    .line 174
    :try_start_0
    const-class v0, Landroid/content/res/Configuration;

    const-string v1, "extraConfig"

    const-class v2, Landroid/content/res/MiuiConfiguration;

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/reflect/Field;

    move-result-object v0

    .line 175
    invoke-virtual {v0, p0}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/MiuiConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    return-object v0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiConfiguration"

    const-string v2, "getExtraConfig from Configuration failed"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getFontScale(I)F
    .locals 2
    .param p0, "fontUiMode"    # I

    .line 275
    const v0, 0x3fb33333    # 1.4f

    packed-switch p0, :pswitch_data_0

    .line 287
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 283
    :pswitch_0
    const-string v1, "hugeui_font_scale"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 281
    :pswitch_1
    const-string v0, "largeui_font_scale"

    const v1, 0x3fa8f5c3    # 1.32f

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 279
    :pswitch_2
    const-string v0, "mediumui_font_scale"

    const v1, 0x3f933333    # 1.15f

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 277
    :pswitch_3
    const-string v0, "smallui_font_scale"

    const v1, 0x3f5c28f6    # 0.86f

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 285
    :pswitch_4
    const-string v1, "godzillaui_font_scale"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getScaleMode()I
    .locals 4

    .line 232
    const/4 v0, 0x1

    .line 234
    .local v0, "scale":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 235
    .local v1, "config":Landroid/content/res/Configuration;
    if-eqz v1, :cond_0

    .line 236
    iget v2, v1, Landroid/content/res/Configuration;->uiMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0xf

    and-int/lit8 v0, v2, 0xf

    .line 237
    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_0

    const/16 v2, 0xe

    if-eq v0, v2, :cond_0

    if-eq v0, v3, :cond_0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_0

    .line 242
    const/4 v0, 0x1

    .line 246
    .end local v1    # "config":Landroid/content/res/Configuration;
    :cond_0
    goto :goto_0

    .line 245
    :catch_0
    move-exception v1

    .line 247
    :goto_0
    return v0
.end method

.method public static needNewResources(I)Z
    .locals 1
    .param p0, "configChanges"    # I

    .line 113
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static needRestart3rdApp(J)Z
    .locals 4
    .param p0, "themeChangeFlags"    # J

    .line 217
    sget-wide v0, Landroid/content/res/MiuiConfiguration;->BASE_RESTART_FLAG:J

    const-wide/32 v2, 0x10000000

    or-long/2addr v0, v2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static needRestartActivity(Ljava/lang/String;J)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "themeChangeFlags"    # J

    .line 188
    if-eqz p0, :cond_2

    .line 189
    const-string v0, "com.miui.home"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {p1, p2}, Landroid/content/res/MiuiConfiguration;->needRestartLauncher(J)Z

    move-result v0

    return v0

    .line 192
    :cond_0
    const-string v0, "com.android.mms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    invoke-static {p1, p2}, Landroid/content/res/MiuiConfiguration;->needRestartMms(J)Z

    move-result v0

    return v0

    .line 195
    :cond_1
    const-string v0, "com.android.contacts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    invoke-static {p1, p2}, Landroid/content/res/MiuiConfiguration;->needRestartContacts(J)Z

    move-result v0

    return v0

    .line 199
    :cond_2
    invoke-static {p1, p2}, Landroid/content/res/MiuiConfiguration;->needRestart3rdApp(J)Z

    move-result v0

    return v0
.end method

.method public static needRestartContacts(J)Z
    .locals 4
    .param p0, "themeChangeFlags"    # J

    .line 213
    sget-wide v0, Landroid/content/res/MiuiConfiguration;->BASE_RESTART_FLAG:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static needRestartLauncher(J)Z
    .locals 4
    .param p0, "themeChangeFlags"    # J

    .line 205
    sget-wide v0, Landroid/content/res/MiuiConfiguration;->BASE_RESTART_FLAG:J

    const-wide/16 v2, 0x4000

    or-long/2addr v0, v2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static needRestartMms(J)Z
    .locals 4
    .param p0, "themeChangeFlags"    # J

    .line 209
    sget-wide v0, Landroid/content/res/MiuiConfiguration;->BASE_RESTART_FLAG:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static needRestartStatusBar(J)Z
    .locals 4
    .param p0, "themeChangeFlags"    # J

    .line 221
    sget-wide v0, Landroid/content/res/MiuiConfiguration;->BASE_RESTART_FLAG:J

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static resetScreenLayoutSize(I)I
    .locals 4
    .param p0, "defaultScreenLayoutSize"    # I

    .line 257
    sget-boolean v0, Landroid/content/res/MiuiConfiguration;->sHadReadForceScreenLayoutSize:Z

    const/4 v1, -0x1

    if-nez v0, :cond_4

    .line 258
    const/4 v0, 0x1

    sput-boolean v0, Landroid/content/res/MiuiConfiguration;->sHadReadForceScreenLayoutSize:Z

    .line 259
    const-string v2, "ro.miui.screen_layout_size"

    const-string v3, ""

    invoke-static {v2, v3}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "forceScreenLayoutSizeConfig":Ljava/lang/String;
    const-string v3, "small"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    const-string v0, "normal"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 263
    :cond_1
    const-string v0, "large"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 264
    :cond_2
    const-string v0, "xlarge"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    sput v0, Landroid/content/res/MiuiConfiguration;->sForceScreenLayoutSize:I

    .line 266
    .end local v2    # "forceScreenLayoutSizeConfig":Ljava/lang/String;
    :cond_4
    sget v0, Landroid/content/res/MiuiConfiguration;->sForceScreenLayoutSize:I

    if-ne v0, v1, :cond_5

    move v0, p0

    goto :goto_1

    :cond_5
    sget v0, Landroid/content/res/MiuiConfiguration;->sForceScreenLayoutSize:I

    :goto_1
    return v0
.end method

.method public static sendThemeConfigurationChangeMsg(J)V
    .locals 7
    .param p0, "changeFlag"    # J

    .line 156
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 158
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 159
    .local v0, "curConfig":Landroid/content/res/Configuration;
    invoke-static {v0}, Landroid/content/res/MiuiConfiguration;->getExtraConfig(Landroid/content/res/Configuration;)Landroid/content/res/MiuiConfiguration;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/content/res/MiuiConfiguration;->updateTheme(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 161
    :try_start_1
    const-class v1, Landroid/app/IActivityManager;

    const-string v2, "updateConfiguration"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/res/Configuration;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 162
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 165
    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "MiuiConfiguration"

    const-string v3, "updateConfiguration failed"

    invoke-static {v2, v3, v1}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 168
    .end local v0    # "curConfig":Landroid/content/res/Configuration;
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 166
    :catch_1
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 170
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    return-void
.end method


# virtual methods
.method public checkFontChange(I)Z
    .locals 1
    .param p1, "sinceThemeChanged"    # I

    .line 152
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public compareTo(Landroid/content/res/MiuiConfiguration;)I
    .locals 3
    .param p1, "that"    # Landroid/content/res/MiuiConfiguration;

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "n":I
    iget v1, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iget v2, p1, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    sub-int/2addr v1, v2

    .line 132
    .end local v0    # "n":I
    .local v1, "n":I
    if-eqz v1, :cond_0

    .line 133
    return v1

    .line 135
    :cond_0
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 14
    check-cast p1, Landroid/content/res/MiuiConfiguration;

    invoke-virtual {p0, p1}, Landroid/content/res/MiuiConfiguration;->compareTo(Landroid/content/res/MiuiConfiguration;)I

    move-result p1

    return p1
.end method

.method public diff(Landroid/content/res/MiuiConfiguration;)I
    .locals 3
    .param p1, "delta"    # Landroid/content/res/MiuiConfiguration;

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "changed":I
    iget v1, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iget v2, p1, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    if-ge v1, v2, :cond_0

    .line 107
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 109
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 140
    iget v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iget-wide v1, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    .line 126
    return-void
.end method

.method public setTo(Landroid/content/res/MiuiConfiguration;)V
    .locals 2
    .param p1, "o"    # Landroid/content/res/MiuiConfiguration;

    .line 72
    iget v0, p1, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iput v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    .line 73
    iget-wide v0, p1, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    iput-wide v0, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    .line 74
    iget v0, p1, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    iput v0, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    .line 75
    return-void
.end method

.method public setToDefaults()V
    .locals 3

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    .line 89
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    .line 90
    iput v0, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " themeChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget v1, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, " themeChangedFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-wide v1, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFrom(Landroid/content/res/MiuiConfiguration;)I
    .locals 3
    .param p1, "delta"    # Landroid/content/res/MiuiConfiguration;

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "changed":I
    iget v1, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iget v2, p1, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    if-ge v1, v2, :cond_0

    .line 96
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 97
    iget v1, p1, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iput v1, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    .line 98
    iget-wide v1, p1, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    iput-wide v1, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    .line 99
    iget v1, p1, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    iput v1, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    .line 101
    :cond_0
    return v0
.end method

.method public updateTheme(J)V
    .locals 4
    .param p1, "changedFlags"    # J

    .line 144
    iget v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    .line 145
    iput-wide p1, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    .line 146
    iget-wide v0, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 147
    iget v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iput v0, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    .line 149
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 117
    iget v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-wide v0, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 120
    return-void
.end method
