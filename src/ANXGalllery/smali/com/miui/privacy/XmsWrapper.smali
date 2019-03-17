.class Lcom/miui/privacy/XmsWrapper;
.super Ljava/lang/Object;
.source "XmsWrapper.java"

# interfaces
.implements Lcom/miui/privacy/IPrivacyWrapper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/miui/privacy/XmsWrapper;->mContext:Landroid/content/Context;

    .line 12
    return-void
.end method


# virtual methods
.method public isPrivacyPasswordEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 15
    iget-object v2, p0, Lcom/miui/privacy/XmsWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "privacy_password_is_open"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isPrivateGalleryEnabled()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public setPrivateGalleryEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 23
    return-void
.end method
