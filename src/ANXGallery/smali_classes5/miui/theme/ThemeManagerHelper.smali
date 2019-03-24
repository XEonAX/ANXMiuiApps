.class public Lmiui/theme/ThemeManagerHelper;
.super Ljava/lang/Object;
.source "ThemeManagerHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method private static isTelcel()Z
    .locals 3

    .line 19
    const-string v0, "mx_telcel"

    const-string v1, "ro.miui.customized.region"

    const-string v2, ""

    invoke-static {v1, v2}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static needDisableTheme(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 15
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lmiui/theme/GlobalUtils;->isReligiousArea(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lmiui/theme/ThemeManagerHelper;->isTelcel()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
