.class Lcom/miui/privacy/XmsHelper;
.super Ljava/lang/Object;
.source "XmsHelper.java"

# interfaces
.implements Lcom/miui/privacy/IPrivacyHelper;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public confirmPrivateGalleryPassword(Landroid/app/Fragment;I)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "requestCode"    # I

    .prologue
    .line 25
    return-void
.end method

.method public startAuthenticatePasswordActivity(Landroid/app/Activity;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 29
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaomi.privacypassword"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const-string v1, "android.app.action.PRIVACY_PASSWORD_CONFIRM_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 33
    return-void
.end method

.method public startAuthenticatePasswordActivity(Landroid/app/Fragment;I)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "requestCode"    # I

    .prologue
    .line 17
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 18
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaomi.privacypassword"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    const-string v1, "android.app.action.PRIVACY_PASSWORD_CONFIRM_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-virtual {p1, v0, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 22
    return-void
.end method

.method public startSetPrivacyPasswordActivity(Landroid/app/Fragment;I)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "requestCode"    # I

    .prologue
    .line 9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 10
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaomi.privacypassword"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    const-string v1, "android.app.action.PRIVACY_PASSWORD_SET_NEW_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-virtual {p1, v0, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 14
    return-void
.end method
