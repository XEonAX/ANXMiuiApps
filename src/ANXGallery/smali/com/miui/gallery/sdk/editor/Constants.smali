.class public interface abstract Lcom/miui/gallery/sdk/editor/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final EXTRA_IS_LONG_SCREENSHOT:Ljava/lang/String;

.field public static final EXTRA_IS_SCREENSHOT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    invoke-static {}, Lmiui/external/SdkHelper;->isMiuiSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IsScreenshot"

    :goto_0
    sput-object v0, Lcom/miui/gallery/sdk/editor/Constants;->EXTRA_IS_SCREENSHOT:Ljava/lang/String;

    .line 9
    invoke-static {}, Lmiui/external/SdkHelper;->isMiuiSystem()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "IsLongScreenshot"

    :goto_1
    sput-object v0, Lcom/miui/gallery/sdk/editor/Constants;->EXTRA_IS_LONG_SCREENSHOT:Ljava/lang/String;

    return-void

    .line 8
    :cond_0
    const-string v0, "IsScreenshot"

    goto :goto_0

    .line 9
    :cond_1
    const-string v0, "IsLongScreenshot"

    goto :goto_1
.end method
