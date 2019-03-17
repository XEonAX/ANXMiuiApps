.class Lcom/miui/gallery/data/CityDatabaseHelper$1;
.super Ljava/lang/Object;
.source "CityDatabaseHelper.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/data/CityDatabaseHelper;->loadCityBoundRects()Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler",
        "<",
        "Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/data/CityDatabaseHelper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/data/CityDatabaseHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/data/CityDatabaseHelper;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/miui/gallery/data/CityDatabaseHelper$1;->this$0:Lcom/miui/gallery/data/CityDatabaseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/database/Cursor;)Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x0

    .line 252
    if-nez p1, :cond_1

    .line 253
    const-string v8, "CityDatabaseHelper"

    const-string v9, "loadCityBoundRects fails, the returned cursor is null"

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .line 268
    :cond_0
    return-object v6

    .line 256
    :cond_1
    new-instance v6, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;

    invoke-direct {v6}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;-><init>()V

    .line 257
    .local v6, "result":Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;
    const-string v8, "cityid"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 258
    .local v2, "cityIDIndex":I
    const-string v8, "rect"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 259
    .local v4, "cityRectIndex":I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 260
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, "cityId":Ljava/lang/String;
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 263
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/miui/gallery/data/CityDatabaseUtils$PolygonHelper;->parseFromByteArray([B)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect$BoundRect;

    .line 264
    .local v5, "rectArray":[Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect$BoundRect;
    new-instance v1, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect;

    invoke-direct {v1, v3, v5, v7}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect;-><init>(Ljava/lang/String;[Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect$BoundRect;Lcom/miui/gallery/data/CityDatabaseHelper$1;)V

    .line 265
    .local v1, "cityBoundRect":Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRect;
    invoke-virtual {v6, v3, v1}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/CityDatabaseHelper$1;->handle(Landroid/database/Cursor;)Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundRectList;

    move-result-object v0

    return-object v0
.end method
