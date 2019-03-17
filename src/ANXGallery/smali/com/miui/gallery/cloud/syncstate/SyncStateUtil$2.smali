.class final Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$2;
.super Ljava/lang/Object;
.source "SyncStateUtil.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->queryDirtyCount(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/cloud/syncstate/DirtyCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler",
        "<",
        "Lcom/miui/gallery/cloud/syncstate/DirtyCount;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/database/Cursor;)Lcom/miui/gallery/cloud/syncstate/DirtyCount;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x1

    .line 135
    new-instance v1, Lcom/miui/gallery/cloud/syncstate/DirtyCount;

    invoke-direct {v1}, Lcom/miui/gallery/cloud/syncstate/DirtyCount;-><init>()V

    .line 136
    .local v1, "dirtyCount":Lcom/miui/gallery/cloud/syncstate/DirtyCount;
    if-eqz p1, :cond_4

    .line 137
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 138
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 139
    .local v0, "count":I
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 140
    .local v3, "serverType":I
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 141
    .local v2, "oversized":I
    if-ne v3, v5, :cond_2

    .line 142
    if-ne v2, v5, :cond_1

    .line 143
    invoke-virtual {v1, v0}, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->setOversizedImageCount(I)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {v1, v0}, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->setSyncableImageCount(I)V

    goto :goto_0

    .line 148
    :cond_2
    if-ne v2, v5, :cond_3

    .line 149
    invoke-virtual {v1, v0}, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->setOversizedVideoCount(I)V

    goto :goto_0

    .line 150
    :cond_3
    if-nez v2, :cond_0

    .line 151
    invoke-virtual {v1, v0}, Lcom/miui/gallery/cloud/syncstate/DirtyCount;->setSyncableVideoCount(I)V

    goto :goto_0

    .line 156
    .end local v0    # "count":I
    .end local v2    # "oversized":I
    .end local v3    # "serverType":I
    :cond_4
    return-object v1
.end method

.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$2;->handle(Landroid/database/Cursor;)Lcom/miui/gallery/cloud/syncstate/DirtyCount;

    move-result-object v0

    return-object v0
.end method
