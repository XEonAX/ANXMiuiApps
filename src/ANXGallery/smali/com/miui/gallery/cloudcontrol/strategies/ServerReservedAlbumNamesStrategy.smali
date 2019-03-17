.class public Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;
.super Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;
.source "ServerReservedAlbumNamesStrategy.java"


# instance fields
.field private mReservedAlbumNames:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reserved-names"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;-><init>()V

    return-void
.end method

.method public static createDefault()Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;
    .locals 4

    .prologue
    .line 38
    new-instance v0, Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;

    invoke-direct {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;-><init>()V

    .line 39
    .local v0, "strategy":Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;
    const/16 v1, 0x16

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "\u6211\u7684\u7167\u7247"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "\u622a\u5c4f"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "\u622a\u56fe"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "my photo"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "my photos"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "screenshot"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "screenshots"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "\u6211\u7684\u7167\u7247"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "\u622a\u5716"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "camera photos"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "\u76f8\u673a"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "\u76f8\u6a5f"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "\u6240\u6709\u89c6\u9891"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "\u6240\u6709\u5f71\u7247"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "All videos"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "\u5ba0\u7269\u76f8\u518c"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "Pet Album"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string/jumbo v3, "\u89c6\u9891"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string/jumbo v3, "\u5168\u666f"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string/jumbo v3, "\u8996\u983b"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "Videos"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "Panoramas"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;->mReservedAlbumNames:Ljava/util/List;

    .line 42
    return-object v0
.end method


# virtual methods
.method public containsName(Ljava/lang/String;)Z
    .locals 5
    .param p1, "albumName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    :goto_0
    return v1

    .line 26
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;->mReservedAlbumNames:Ljava/util/List;

    invoke-static {v3}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;->mReservedAlbumNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    .local v0, "reservedAlbumName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .end local v0    # "reservedAlbumName":Ljava/lang/String;
    :cond_3
    move v1, v2

    .line 34
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerReservedAlbumNamesStrategy{mReservedAlbumNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ServerReservedAlbumNamesStrategy;->mReservedAlbumNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
