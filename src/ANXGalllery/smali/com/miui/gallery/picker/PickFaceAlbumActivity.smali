.class public Lcom/miui/gallery/picker/PickFaceAlbumActivity;
.super Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;
.source "PickFaceAlbumActivity.java"


# instance fields
.field private mParseTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;-><init>()V

    .line 62
    new-instance v0, Lcom/miui/gallery/picker/PickFaceAlbumActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/picker/PickFaceAlbumActivity$1;-><init>(Lcom/miui/gallery/picker/PickFaceAlbumActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/picker/PickFaceAlbumActivity;->mParseTask:Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/picker/PickFaceAlbumActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/picker/PickFaceAlbumActivity;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/miui/gallery/picker/PickFaceAlbumActivity;->parseResult()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private parseResult()Landroid/content/Intent;
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v11, 0x0

    .line 85
    const-string v0, "\',\'"

    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickFaceAlbumActivity;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    .line 86
    .local v8, "pickResults":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickFaceAlbumActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_PICKER:Landroid/net/Uri;

    const-string/jumbo v2, "sha1"

    .line 87
    invoke-static {v1, v2, v4}, Lcom/miui/gallery/util/UriUtil;->appendGroupBy(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/picker/PickFaceAlbumActivity;->PICKABLE_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "sha1 IN (\'%s\') AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v8, v5, v11

    .line 89
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "INSTR(\"\'%s\'\", sha1)"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v11

    .line 91
    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 93
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 106
    :goto_0
    return-object v4

    .line 98
    :cond_0
    :try_start_0
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v7, "data":Landroid/content/Intent;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 106
    .end local v7    # "data":Landroid/content/Intent;
    .end local v9    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 103
    .restart local v7    # "data":Landroid/content/Intent;
    .restart local v9    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1
    :try_start_1
    const-string v0, "pick-result-data"

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v4, v7

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 24
    iget-object v2, p0, Lcom/miui/gallery/picker/PickFaceAlbumActivity;->mPicker:Lcom/miui/gallery/picker/helper/Picker;

    if-nez v2, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    const v2, 0x7f040107

    invoke-virtual {p0, v2}, Lcom/miui/gallery/picker/PickFaceAlbumActivity;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickFaceAlbumActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f12008e

    .line 29
    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/picker/PickFaceAlbumFragment;

    iput-object v2, p0, Lcom/miui/gallery/picker/PickFaceAlbumActivity;->mAlbumDetailFragment:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;

    .line 30
    iget-object v2, p0, Lcom/miui/gallery/picker/PickFaceAlbumActivity;->mAlbumDetailFragment:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;

    iget-object v3, p0, Lcom/miui/gallery/picker/PickFaceAlbumActivity;->mItemStateListener:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$ItemStateListener;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->setItemStateListener(Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$ItemStateListener;)V

    .line 31
    iget-object v2, p0, Lcom/miui/gallery/picker/PickFaceAlbumActivity;->mAlbumDetailFragment:Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;

    invoke-virtual {v2}, Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase;->setSelectionCloudNotContainUnique()V

    .line 32
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickFaceAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 33
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "album_name"

    .line 34
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "albumName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    invoke-virtual {p0, v0}, Lcom/miui/gallery/picker/PickFaceAlbumActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDone()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickFaceAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "pick_face_direct"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 44
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickFaceAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "need_pick_face_id"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickFaceAlbumActivity;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v3

    invoke-interface {v3}, Lcom/miui/gallery/picker/helper/Picker;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 47
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 49
    .local v0, "data":Landroid/content/Intent;
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 50
    .local v1, "faceId":Ljava/lang/String;
    const-string v3, "picked_face_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v0}, Lcom/miui/gallery/picker/PickFaceAlbumActivity;->setResult(ILandroid/content/Intent;)V

    .line 53
    .end local v0    # "data":Landroid/content/Intent;
    .end local v1    # "faceId":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/picker/PickFaceAlbumActivity;->finish()V

    .line 60
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/picker/PickFaceAlbumActivity;->mParseTask:Landroid/os/AsyncTask;

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 58
    :cond_2
    invoke-super {p0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;->onDone()V

    goto :goto_0
.end method
