.class public Lcom/miui/internal/LockSettingsCompat;
.super Ljava/lang/Object;
.source "LockSettingsCompat.java"


# direct methods
.method public static setPrivateGalleryEnabled(Landroid/security/ChooseLockSettingsHelper;Z)V
    .locals 0
    .param p0, "helper"    # Landroid/security/ChooseLockSettingsHelper;
    .param p1, "enabled"    # Z

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Landroid/security/ChooseLockSettingsHelper;->setPrivateGalleryEnabled(Z)V

    .line 11
    return-void
.end method
