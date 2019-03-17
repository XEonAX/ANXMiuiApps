.class Lcom/miui/gallery/provider/GalleryDBHelper$1;
.super Ljava/lang/Object;
.source "GalleryDBHelper.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/provider/GalleryDBHelper;->upgradeTo74(Landroid/database/sqlite/SQLiteDatabase;Z)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/provider/GalleryDBHelper;

.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/miui/gallery/provider/GalleryDBHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/provider/GalleryDBHelper;

    .prologue
    .line 2494
    iput-object p1, p0, Lcom/miui/gallery/provider/GalleryDBHelper$1;->this$0:Lcom/miui/gallery/provider/GalleryDBHelper;

    iput-object p2, p0, Lcom/miui/gallery/provider/GalleryDBHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2494
    invoke-virtual {p0, p1}, Lcom/miui/gallery/provider/GalleryDBHelper$1;->handle(Landroid/database/Cursor;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public handle(Landroid/database/Cursor;)Ljava/lang/Void;
    .locals 12
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 2498
    if-eqz p1, :cond_5

    .line 2499
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2500
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 2501
    .local v2, "id":I
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2502
    .local v9, "description":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2503
    .local v6, "albumName":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2504
    .local v7, "appKey":Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2506
    .local v11, "serverId":Ljava/lang/String;
    invoke-static {v9}, Lcom/miui/gallery/cloud/CloudUtils;->getLocalFileFromDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2507
    .local v3, "localFile":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2508
    invoke-static {v6, v7}, Lcom/miui/gallery/cloud/CloudUtils;->getOwnerAlbumLocalFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2511
    :cond_0
    const/4 v5, 0x0

    .line 2512
    .local v5, "showInPhotosTab":Z
    invoke-static {v9}, Lcom/miui/gallery/cloud/CloudUtils;->getAutoUploadAttributeFromDescription(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    .line 2513
    .local v8, "autoUpload":Ljava/lang/Boolean;
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2514
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getScreenshotsLocalFile()Ljava/lang/String;

    move-result-object v3

    .line 2515
    if-nez v8, :cond_1

    .line 2516
    invoke-static {}, Lcom/miui/gallery/util/deprecated/Preference;->sGetIsScreenShotAutoUploadOpen()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 2518
    :cond_1
    const/4 v5, 0x1

    .line 2530
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/miui/gallery/provider/GalleryDBHelper$1;->this$0:Lcom/miui/gallery/provider/GalleryDBHelper;

    iget-object v1, p0, Lcom/miui/gallery/provider/GalleryDBHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/provider/GalleryDBHelper;->access$000(Lcom/miui/gallery/provider/GalleryDBHelper;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;ZZ)V

    goto :goto_0

    .line 2519
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2520
    if-nez v8, :cond_2

    .line 2521
    invoke-static {v7}, Lcom/miui/gallery/util/deprecated/Preference;->sGetIsAlbumAutoUploadOpen(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_1

    .line 2524
    :cond_4
    const-string v0, "MIUI/Gallery/cloud"

    invoke-static {v3, v0}, Lcom/miui/gallery/util/ExtraTextUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 2525
    .local v10, "pureCloudAlbum":Z
    if-nez v8, :cond_2

    .line 2526
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_1

    .line 2534
    .end local v2    # "id":I
    .end local v3    # "localFile":Ljava/lang/String;
    .end local v5    # "showInPhotosTab":Z
    .end local v6    # "albumName":Ljava/lang/String;
    .end local v7    # "appKey":Ljava/lang/String;
    .end local v8    # "autoUpload":Ljava/lang/Boolean;
    .end local v9    # "description":Ljava/lang/String;
    .end local v10    # "pureCloudAlbum":Z
    .end local v11    # "serverId":Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method
