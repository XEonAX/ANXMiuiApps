.class Lcom/miui/privacy/MiuiWrapper;
.super Ljava/lang/Object;
.source "MiuiWrapper.java"

# interfaces
.implements Lcom/miui/privacy/IPrivacyWrapper;


# instance fields
.field private mHelper:Landroid/security/ChooseLockSettingsHelper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/miui/privacy/MiuiWrapper;->mHelper:Landroid/security/ChooseLockSettingsHelper;

    .line 13
    return-void
.end method


# virtual methods
.method public isPrivacyPasswordEnabled()Z
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/miui/privacy/MiuiWrapper;->mHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->isPrivacyPasswordEnabled()Z

    move-result v0

    return v0
.end method

.method public isPrivateGalleryEnabled()Z
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/privacy/MiuiWrapper;->mHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->isPrivateGalleryEnabled()Z

    move-result v0

    return v0
.end method

.method public setPrivateGalleryEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/privacy/MiuiWrapper;->mHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-static {v0, p1}, Lcom/miui/internal/LockSettingsCompat;->setPrivateGalleryEnabled(Landroid/security/ChooseLockSettingsHelper;Z)V

    .line 25
    return-void
.end method
