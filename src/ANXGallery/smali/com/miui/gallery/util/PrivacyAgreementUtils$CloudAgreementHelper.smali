.class Lcom/miui/gallery/util/PrivacyAgreementUtils$CloudAgreementHelper;
.super Ljava/lang/Object;
.source "PrivacyAgreementUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/PrivacyAgreementUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CloudAgreementHelper"
.end annotation


# direct methods
.method static isCloudServiceAgreementEnable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/provider/GdprUtils;->isPermissionGranted(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 67
    :goto_0
    return v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    const/4 v1, 0x1

    goto :goto_0
.end method
