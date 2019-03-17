.class public Lcom/miui/account/AccountHelper;
.super Ljava/lang/Object;
.source "AccountHelper.java"


# direct methods
.method public static getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method
