.class public final Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;
.super Ljava/lang/Object;
.source "AlbumShareOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/share/AlbumShareOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IncomingInvitation"
.end annotation


# instance fields
.field private mAlbumName:Ljava/lang/String;

.field private mHasSharerInfo:Z

.field private mOwnerName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 153
    .local v0, "pair":Lorg/apache/http/NameValuePair;
    const-string v2, "albumName"

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 154
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/share/AlbumShareOperations;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;->mAlbumName:Ljava/lang/String;

    .line 161
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;->mAlbumName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;->mOwnerName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;->mHasSharerInfo:Z

    if-eqz v2, :cond_0

    .line 165
    .end local v0    # "pair":Lorg/apache/http/NameValuePair;
    :cond_2
    return-void

    .line 155
    .restart local v0    # "pair":Lorg/apache/http/NameValuePair;
    :cond_3
    const-string/jumbo v2, "userName"

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 156
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/share/AlbumShareOperations;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;->mOwnerName:Ljava/lang/String;

    goto :goto_0

    .line 157
    :cond_4
    const-string/jumbo v2, "sharerInfo"

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    const-string/jumbo v2, "true"

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;->mHasSharerInfo:Z

    goto :goto_0
.end method


# virtual methods
.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;->mOwnerName:Ljava/lang/String;

    return-object v0
.end method

.method public hasSharerInfo()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/miui/gallery/share/AlbumShareOperations$IncomingInvitation;->mHasSharerInfo:Z

    return v0
.end method
