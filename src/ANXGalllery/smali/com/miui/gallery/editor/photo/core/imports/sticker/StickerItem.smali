.class Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;
.super Lcom/miui/gallery/editor/photo/core/common/model/StickerData;
.source "StickerItem.java"


# instance fields
.field cateName:Ljava/lang/String;

.field content:Ljava/lang/String;

.field id:J


# direct methods
.method public constructor <init>(SLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "priority"    # S
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # J
    .param p5, "icon"    # Ljava/lang/String;
    .param p6, "main"    # Ljava/lang/String;
    .param p7, "cateName"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p5}, Lcom/miui/gallery/editor/photo/core/common/model/StickerData;-><init>(SLjava/lang/String;Ljava/lang/String;)V

    .line 18
    iput-object p6, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;->content:Ljava/lang/String;

    .line 19
    iput-wide p3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;->id:J

    .line 20
    iput-object p7, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;->cateName:Ljava/lang/String;

    .line 21
    return-void
.end method

.method static fromJson(Lorg/json/JSONObject;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;
    .locals 9
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 57
    const-string v0, "priority"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-short v2, v0

    .line 58
    .local v2, "priority":S
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "name":Ljava/lang/String;
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 60
    .local v4, "id":J
    const-string v0, "icon"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, "icon":Ljava/lang/String;
    const-string v0, "content"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 62
    .local v7, "content":Ljava/lang/String;
    const-string v0, "cateName"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 63
    .local v8, "cateName":Ljava/lang/String;
    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;

    invoke-direct/range {v1 .. v8}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;-><init>(SLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method static toJson(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "item"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;

    .prologue
    .line 42
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 43
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "priority"

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;->priority:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 44
    const-string v2, "name"

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v2, "id"

    iget-wide v4, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;->id:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 46
    const-string v2, "icon"

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;->icon:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v2, "content"

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;->content:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v2, "cateName"

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;->cateName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "StickerItem"

    invoke-static {v2, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25
    if-ne p0, p1, :cond_1

    .line 31
    :cond_0
    :goto_0
    return v1

    .line 27
    :cond_1
    instance-of v3, p1, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;

    if-nez v3, :cond_2

    move v1, v2

    .line 28
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 30
    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;

    .line 31
    .local v0, "other":Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;
    iget-wide v4, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;->id:J

    iget-wide v6, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;->id:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;->id:J

    iget-wide v2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;->id:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
