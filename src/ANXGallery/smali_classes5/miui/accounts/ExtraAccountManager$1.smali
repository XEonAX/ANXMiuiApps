.class Lmiui/accounts/ExtraAccountManager$1;
.super Lmiui/util/SoftReferenceSingleton;
.source "ExtraAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/accounts/ExtraAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/SoftReferenceSingleton<",
        "Lmiui/accounts/ExtraAccountManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Lmiui/util/SoftReferenceSingleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lmiui/accounts/ExtraAccountManager$1;->createInstance()Lmiui/accounts/ExtraAccountManager;

    move-result-object v0

    return-object v0
.end method

.method protected createInstance()Lmiui/accounts/ExtraAccountManager;
    .locals 3

    .line 105
    new-instance v0, Lmiui/accounts/ExtraAccountManager;

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/accounts/ExtraAccountManager;-><init>(Landroid/content/Context;Lmiui/accounts/ExtraAccountManager$1;)V

    return-object v0
.end method
