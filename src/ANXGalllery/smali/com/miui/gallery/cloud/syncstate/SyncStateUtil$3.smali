.class final Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$3;
.super Ljava/lang/Object;
.source "SyncStateUtil.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/syncstate/SyncStateUtil;->querySyncedCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler",
        "<[I>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/syncstate/SyncStateUtil$3;->handle(Landroid/database/Cursor;)[I

    move-result-object v0

    return-object v0
.end method

.method public handle(Landroid/database/Cursor;)[I
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 171
    const/4 v3, 0x2

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    .line 174
    .local v1, "queryCount":[I
    if-eqz p1, :cond_1

    .line 175
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 177
    .local v0, "count":I
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 178
    .local v2, "serverType":I
    if-ne v2, v4, :cond_0

    .line 179
    aput v0, v1, v5

    goto :goto_0

    .line 181
    :cond_0
    aput v0, v1, v4

    goto :goto_0

    .line 185
    .end local v0    # "count":I
    .end local v2    # "serverType":I
    :cond_1
    return-object v1

    .line 171
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
