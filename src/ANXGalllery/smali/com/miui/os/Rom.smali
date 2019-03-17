.class public interface abstract Lcom/miui/os/Rom;
.super Ljava/lang/Object;
.source "Rom.java"


# static fields
.field public static final IS_ALPHA:Z

.field public static final IS_DEBUGGABLE:Z

.field public static final IS_DEV:Z

.field public static final IS_INTERNATIONAL:Z

.field public static final IS_MIUI:Z

.field public static final IS_STABLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8
    sget-boolean v0, Lcom/miui/core/SdkHelper;->IS_MIUI:Z

    sput-boolean v0, Lcom/miui/os/Rom;->IS_MIUI:Z

    .line 9
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    sput-boolean v0, Lcom/miui/os/Rom;->IS_INTERNATIONAL:Z

    .line 10
    sget-boolean v0, Lcom/miui/core/SdkHelper;->IS_MIUI:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/miui/os/Rom;->IS_ALPHA:Z

    .line 11
    sget-boolean v0, Lcom/miui/core/SdkHelper;->IS_MIUI:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/miui/os/Rom;->IS_DEV:Z

    .line 12
    sget-boolean v0, Lcom/miui/core/SdkHelper;->IS_MIUI:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_3

    :cond_0
    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/miui/os/Rom;->IS_STABLE:Z

    .line 13
    sget-boolean v0, Lcom/miui/core/SdkHelper;->IS_MIUI:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_4

    :goto_3
    sput-boolean v1, Lcom/miui/os/Rom;->IS_DEBUGGABLE:Z

    return-void

    :cond_1
    move v0, v2

    .line 10
    goto :goto_0

    :cond_2
    move v0, v2

    .line 11
    goto :goto_1

    :cond_3
    move v0, v2

    .line 12
    goto :goto_2

    :cond_4
    move v1, v2

    .line 13
    goto :goto_3
.end method
