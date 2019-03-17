.class public Lcom/miui/gallery/preference/BaseGalleryPreferences$PermissionIntroduction;
.super Ljava/lang/Object;
.source "BaseGalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/BaseGalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionIntroduction"
.end annotation


# direct methods
.method public static isCtaPrivacyPermissionsAllowed(Ljava/lang/String;)Z
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cta_privacy_permissions_allowed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isRuntimePermissionsIntroduced()Z
    .locals 2

    .prologue
    .line 158
    const-string v0, "runtime_permissions_introduced"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setCtaPrivacyPermissionsAllowed(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "isAllowed"    # Z

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cta_privacy_permissions_allowed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 147
    return-void
.end method

.method public static setRuntimePermissionsIntroduced(Z)V
    .locals 1
    .param p0, "isAllowed"    # Z

    .prologue
    .line 154
    const-string v0, "runtime_permissions_introduced"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 155
    return-void
.end method
