.class public Lcom/miui/gallery/search/core/suggestion/RankInfo;
.super Ljava/lang/Object;
.source "RankInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mName:Ljava/lang/String;

.field private mOrder:Ljava/lang/String;

.field private mStyle:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "style"    # Ljava/lang/String;
    .param p4, "order"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/miui/gallery/search/core/suggestion/RankInfo;->mTitle:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/miui/gallery/search/core/suggestion/RankInfo;->mName:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/miui/gallery/search/core/suggestion/RankInfo;->mStyle:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/miui/gallery/search/core/suggestion/RankInfo;->mOrder:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 42
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/miui/gallery/search/core/suggestion/RankInfo;

    if-nez v2, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 46
    check-cast v0, Lcom/miui/gallery/search/core/suggestion/RankInfo;

    .line 47
    .local v0, "another":Lcom/miui/gallery/search/core/suggestion/RankInfo;
    iget-object v2, p0, Lcom/miui/gallery/search/core/suggestion/RankInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/suggestion/RankInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/search/core/suggestion/RankInfo;->mOrder:Ljava/lang/String;

    .line 48
    invoke-virtual {v0}, Lcom/miui/gallery/search/core/suggestion/RankInfo;->getOrder()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/search/core/suggestion/RankInfo;->mStyle:Ljava/lang/String;

    .line 49
    invoke-virtual {v0}, Lcom/miui/gallery/search/core/suggestion/RankInfo;->getStyle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/search/core/suggestion/RankInfo;->mTitle:Ljava/lang/String;

    .line 50
    invoke-virtual {v0}, Lcom/miui/gallery/search/core/suggestion/RankInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/RankInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/RankInfo;->mOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/RankInfo;->mStyle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/search/core/suggestion/RankInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 55
    const-string v0, "RankInfo: [name=%s, order=%s, title=%s, style=%s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/search/core/suggestion/RankInfo;->mName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/gallery/search/core/suggestion/RankInfo;->mOrder:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/miui/gallery/search/core/suggestion/RankInfo;->mTitle:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/miui/gallery/search/core/suggestion/RankInfo;->mStyle:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
