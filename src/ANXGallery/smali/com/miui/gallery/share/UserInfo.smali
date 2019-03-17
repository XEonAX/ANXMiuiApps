.class public Lcom/miui/gallery/share/UserInfo;
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
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/share/UserInfo;->mId:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private convertUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 85
    iget-object v1, p0, Lcom/miui/gallery/share/UserInfo;->mMiliaoIconUrl:Ljava/lang/String;

    .line 86
    .local v1, "url":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 87
    const/4 v1, 0x0

    .line 95
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 90
    .restart local v1    # "url":Ljava/lang/String;
    :cond_1
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 91
    .local v0, "lastDot":I
    if-lez v0, :cond_0

    .line 92
    const-string v2, "%s_%s%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getAliasNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/share/UserInfo;->mAliasNick:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/miui/gallery/share/UserInfo;->getReadableName()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "readable":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .end local v0    # "readable":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "readable":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/share/UserInfo;->mId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMiliaoIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/gallery/share/UserInfo;->mMiliaoIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMiliaoIconUrl150()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "150"

    invoke-direct {p0, v0}, Lcom/miui/gallery/share/UserInfo;->convertUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMiliaoNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/share/UserInfo;->mMiliaoNick:Ljava/lang/String;

    return-object v0
.end method

.method public getReadableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/miui/gallery/share/UserInfo;->mMiliaoNick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/miui/gallery/share/UserInfo;->mMiliaoNick:Ljava/lang/String;

    .line 112
    :goto_0
    return-object v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/share/UserInfo;->mAliasNick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/miui/gallery/share/UserInfo;->mAliasNick:Ljava/lang/String;

    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/gallery/share/UserInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public setAliasNick(Ljava/lang/String;)V
    .locals 1
    .param p1, "aliasNick"    # Ljava/lang/String;

    .prologue
    .line 116
    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/share/UserInfo;->mAliasNick:Ljava/lang/String;

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/share/UserInfo;->mAliasNick:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMiliaoIconUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "miliaoIconUrl"    # Ljava/lang/String;

    .prologue
    .line 132
    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/share/UserInfo;->mMiliaoIconUrl:Ljava/lang/String;

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/share/UserInfo;->mMiliaoIconUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMiliaoNick(Ljava/lang/String;)V
    .locals 1
    .param p1, "miliaoNick"    # Ljava/lang/String;

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/share/UserInfo;->mMiliaoNick:Ljava/lang/String;

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/share/UserInfo;->mMiliaoNick:Ljava/lang/String;

    goto :goto_0
.end method
