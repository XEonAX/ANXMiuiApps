.class final Lcom/miui/gallery/provider/RecentDiscoveryMediaManager$1;
.super Landroid/database/AbstractWindowedCursor;
.source "RecentDiscoveryMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/provider/RecentDiscoveryMediaManager;->queryAlbumCover(Landroid/database/sqlite/SQLiteDatabase;IZ)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method
