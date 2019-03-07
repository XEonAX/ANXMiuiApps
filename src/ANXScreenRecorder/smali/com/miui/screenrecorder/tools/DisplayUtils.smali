.class public Lcom/miui/screenrecorder/tools/DisplayUtils;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# static fields
.field public static final ANTI_PORTRAIT:I = 0x1

.field public static final LEFT_LANDSCAPE:I = 0x2

.field public static final PORTRAIT:I = 0x0

.field public static final RIGHT_LANDSCAPE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 33
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private static getNavBarOverride()Ljava/lang/String;
    .locals 9

    .prologue
    .line 99
    const/4 v4, 0x0

    .line 100
    .local v4, "sNavBarOverride":Ljava/lang/String;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_0

    .line 102
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 103
    .local v1, "c":Ljava/lang/Class;
    const-string v5, "get"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 104
    .local v3, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 105
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "qemu.hw.mainkeys"

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v1    # "c":Ljava/lang/Class;
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v4

    .line 106
    :catch_0
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "result":I
    invoke-static {p0}, Lcom/miui/screenrecorder/tools/DisplayUtils;->hasNavBar(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    .local v0, "res":Landroid/content/res/Resources;
    const-string v3, "navigation_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 61
    .local v1, "resourceId":I
    if-lez v1, :cond_0

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 65
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "resourceId":I
    :cond_0
    return v2
.end method

.method public static getScreenRotateState(Landroid/view/Display;)I
    .locals 2
    .param p0, "display"    # Landroid/view/Display;

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 142
    :goto_0
    :pswitch_0
    return v0

    .line 136
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 138
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 140
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v4, 0x0

    .line 44
    .local v4, "sbar":I
    :try_start_0
    const-string v6, "com.android.internal.R$dimen"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 45
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 46
    .local v3, "obj":Ljava/lang/Object;
    const-string v6, "status_bar_height"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 47
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 48
    .local v5, "x":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 52
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v5    # "x":I
    :goto_0
    return v4

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static hasNavBar(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 77
    .local v1, "res":Landroid/content/res/Resources;
    const-string v4, "config_showNavigationBar"

    const-string v5, "bool"

    const-string v6, "android"

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 78
    .local v2, "resourceId":I
    if-eqz v2, :cond_2

    .line 79
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 81
    .local v0, "hasNav":Z
    invoke-static {}, Lcom/miui/screenrecorder/tools/DisplayUtils;->getNavBarOverride()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "sNavBarOverride":Ljava/lang/String;
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    const/4 v0, 0x0

    .line 89
    .end local v0    # "hasNav":Z
    .end local v3    # "sNavBarOverride":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 84
    .restart local v0    # "hasNav":Z
    .restart local v3    # "sNavBarOverride":Ljava/lang/String;
    :cond_1
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    const/4 v0, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "hasNav":Z
    .end local v3    # "sNavBarOverride":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static hasNotchScreen()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 117
    const/4 v1, 0x0

    .line 119
    .local v1, "result":I
    :try_start_0
    const-string v3, "ro.miui.notch"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 123
    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    packed-switch v0, :pswitch_data_0

    .line 151
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 149
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch
.end method

.method public static px2dp(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 38
    .local v0, "scale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method
