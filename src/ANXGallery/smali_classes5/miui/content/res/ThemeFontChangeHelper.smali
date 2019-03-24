.class public Lmiui/content/res/ThemeFontChangeHelper;
.super Ljava/lang/Object;
.source "ThemeFontChangeHelper.java"


# static fields
.field private static sWebViewThemeChanged:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const/4 v0, -0x1

    sput v0, Lmiui/content/res/ThemeFontChangeHelper;->sWebViewThemeChanged:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static markWebViewCreated(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/GlobalConfiguration;->getExtraConfig(Landroid/content/res/Configuration;)Landroid/content/res/MiuiConfiguration;

    move-result-object v0

    .line 20
    .local v0, "c":Landroid/content/res/MiuiConfiguration;
    sget v1, Lmiui/content/res/ThemeFontChangeHelper;->sWebViewThemeChanged:I

    invoke-virtual {v0, v1}, Landroid/content/res/MiuiConfiguration;->checkFontChange(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 21
    iget v1, v0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    sput v1, Lmiui/content/res/ThemeFontChangeHelper;->sWebViewThemeChanged:I

    .line 23
    :cond_0
    return-void
.end method

.method public static quitProcessIfNeed(Landroid/content/res/Configuration;)V
    .locals 3
    .param p0, "newConfig"    # Landroid/content/res/Configuration;

    .line 26
    if-eqz p0, :cond_2

    const-string v0, "system_process"

    .line 27
    invoke-static {}, Lmiui/ddm/DdmHandleAppName;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p0}, Lmiui/content/res/GlobalConfiguration;->getExtraConfig(Landroid/content/res/Configuration;)Landroid/content/res/MiuiConfiguration;

    move-result-object v0

    .line 31
    .local v0, "c":Landroid/content/res/MiuiConfiguration;
    sget v1, Lmiui/content/res/ThemeFontChangeHelper;->sWebViewThemeChanged:I

    invoke-virtual {v0, v1}, Landroid/content/res/MiuiConfiguration;->checkFontChange(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    const-string v1, "ThemeFontChangeHelper"

    const-string v2, "app has checked webview-font change and process will restart."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 35
    :cond_1
    return-void

    .line 28
    .end local v0    # "c":Landroid/content/res/MiuiConfiguration;
    :cond_2
    :goto_0
    return-void
.end method
