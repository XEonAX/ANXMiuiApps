.class public Lcom/miui/gallery/util/PrivacyAgreementUtils;
.super Ljava/lang/Object;
.source "PrivacyAgreementUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/PrivacyAgreementUtils$CloudAgreementHelper;
    }
.end annotation


# static fields
.field private static final PRIVACY_ENABLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/miui/os/Rom;->IS_MIUI:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/os/Rom;->IS_INTERNATIONAL:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/miui/gallery/util/PrivacyAgreementUtils;->PRIVACY_ENABLE:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCloudServiceAgreementEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    sget-boolean v0, Lcom/miui/gallery/util/PrivacyAgreementUtils;->PRIVACY_ENABLE:Z

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x1

    .line 39
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/miui/gallery/util/PrivacyAgreementUtils$CloudAgreementHelper;->isCloudServiceAgreementEnable(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isGalleryAgreementEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    sget-boolean v0, Lcom/miui/gallery/util/PrivacyAgreementUtils;->PRIVACY_ENABLE:Z

    if-nez v0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 24
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
