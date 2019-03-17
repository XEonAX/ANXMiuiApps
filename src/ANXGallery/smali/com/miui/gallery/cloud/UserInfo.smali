.class public Lcom/miui/gallery/cloud/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# instance fields
.field private mAliasNick:Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private mMiliaoIconUrl:Ljava/lang/String;

.field private mMiliaoNick:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/cloud/UserInfo;->mId:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getAliasNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/cloud/UserInfo;->mAliasNick:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/UserInfo;->getReadableName()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "readable":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .end local v0    # "readable":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "readable":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/UserInfo;->mId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMiliaoIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/miui/gallery/cloud/UserInfo;->mMiliaoIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMiliaoNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/gallery/cloud/UserInfo;->mMiliaoNick:Ljava/lang/String;

    return-object v0
.end method

.method public getReadableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/gallery/cloud/UserInfo;->mMiliaoNick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/cloud/UserInfo;->mMiliaoNick:Ljava/lang/String;

    .line 110
    :goto_0
    return-object v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/UserInfo;->mAliasNick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/cloud/UserInfo;->mAliasNick:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/cloud/UserInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public setAliasNick(Ljava/lang/String;)V
    .locals 1
    .param p1, "aliasNick"    # Ljava/lang/String;

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/UserInfo;->mAliasNick:Ljava/lang/String;

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/cloud/UserInfo;->mAliasNick:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMiliaoIconUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "miliaoIconUrl"    # Ljava/lang/String;

    .prologue
    .line 130
    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/UserInfo;->mMiliaoIconUrl:Ljava/lang/String;

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/cloud/UserInfo;->mMiliaoIconUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMiliaoNick(Ljava/lang/String;)V
    .locals 1
    .param p1, "miliaoNick"    # Ljava/lang/String;

    .prologue
    .line 122
    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/UserInfo;->mMiliaoNick:Ljava/lang/String;

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/cloud/UserInfo;->mMiliaoNick:Ljava/lang/String;

    goto :goto_0
.end method
