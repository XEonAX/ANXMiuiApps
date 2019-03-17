.class public Lcom/miui/gallery/loader/AlbumConvertCallback;
.super Ljava/lang/Object;
.source "AlbumConvertCallback.java"

# interfaces
.implements Lcom/miui/gallery/loader/CursorConvertCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/loader/CursorConvertCallback",
        "<",
        "Lcom/miui/gallery/model/AlbumList;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Landroid/database/Cursor;)Lcom/miui/gallery/model/AlbumList;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 14
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 15
    new-instance v1, Lcom/miui/gallery/model/AlbumList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/miui/gallery/model/AlbumList;-><init>(I)V

    .line 16
    .local v1, "albums":Lcom/miui/gallery/model/AlbumList;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2

    .line 17
    invoke-static {p1}, Lcom/miui/gallery/model/Album;->fromCursor(Landroid/database/Cursor;)Lcom/miui/gallery/model/Album;

    move-result-object v0

    .line 18
    .local v0, "album":Lcom/miui/gallery/model/Album;
    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v1, v0}, Lcom/miui/gallery/model/AlbumList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 24
    .end local v0    # "album":Lcom/miui/gallery/model/Album;
    .end local v1    # "albums":Lcom/miui/gallery/model/AlbumList;
    :cond_1
    const/4 v1, 0x0

    :cond_2
    return-object v1
.end method

.method public bridge synthetic convert(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/miui/gallery/loader/AlbumConvertCallback;->convert(Landroid/database/Cursor;)Lcom/miui/gallery/model/AlbumList;

    move-result-object v0

    return-object v0
.end method
