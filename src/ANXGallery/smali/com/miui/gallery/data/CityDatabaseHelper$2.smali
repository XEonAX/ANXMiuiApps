.class Lcom/miui/gallery/data/CityDatabaseHelper$2;
.super Ljava/lang/Object;
.source "CityDatabaseHelper.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/data/CityDatabaseHelper;->queryCityBoundary(Ljava/util/ArrayList;)Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;
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
        "Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;",
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
    .line 301
    iput-object p1, p0, Lcom/miui/gallery/data/CityDatabaseHelper$2;->this$0:Lcom/miui/gallery/data/CityDatabaseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/database/Cursor;)Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 304
    new-instance v3, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;

    invoke-direct {v3}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;-><init>()V

    .line 305
    .local v3, "result":Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;
    if-nez p1, :cond_1

    .line 306
    const-string v4, "CityDatabaseHelper"

    const-string v5, "queryCityBoundary fails, the returned cursor is null"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_0
    return-object v3

    .line 310
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 311
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "cityId":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 314
    .local v1, "bytes":[B
    invoke-static {v1}, Lcom/miui/gallery/data/CityDatabaseUtils$PolygonHelper;->parseFromByteArray([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary$Boundary;

    .line 315
    .local v0, "boundaryArray":[Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary$Boundary;
    new-instance v4, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v0, v5}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary;-><init>(Ljava/lang/String;[Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundary$Boundary;Lcom/miui/gallery/data/CityDatabaseHelper$1;)V

    invoke-virtual {v3, v2, v4}, Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/CityDatabaseHelper$2;->handle(Landroid/database/Cursor;)Lcom/miui/gallery/data/CityDatabaseHelper$CityBoundaryList;

    move-result-object v0

    return-object v0
.end method
