.class public Lcom/miui/gallery/ui/AddPhotosFragment;
.super Landroid/app/Fragment;
.source "AddPhotosFragment.java"


# instance fields
.field private mAlbumId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/AddPhotosFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/ui/AddPhotosFragment;

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/miui/gallery/ui/AddPhotosFragment;->mAlbumId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/AddPhotosFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/AddPhotosFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AddPhotosFragment;->recordCopyMoveAction(Z)V

    return-void
.end method

.method public static addPhotos(Landroid/app/Fragment;J)V
    .locals 5
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "albumId"    # J

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 29
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    new-instance v1, Lcom/miui/gallery/ui/AddPhotosFragment;

    invoke-direct {v1}, Lcom/miui/gallery/ui/AddPhotosFragment;-><init>()V

    .line 30
    .local v1, "tar":Landroid/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "key_album_id"

    invoke-virtual {v0, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 32
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 33
    const-string v3, "AddPhotosFragment"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 34
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 35
    return-void
.end method

.method private doAddPhotos([J)V
    .locals 4
    .param p1, "ids"    # [J

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddPhotosFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 52
    .local v1, "fragment":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 53
    new-instance v0, Lcom/miui/gallery/ui/CopyOrMoveDialog;

    invoke-direct {v0}, Lcom/miui/gallery/ui/CopyOrMoveDialog;-><init>()V

    .line 54
    .local v0, "dialog":Lcom/miui/gallery/ui/CopyOrMoveDialog;
    new-instance v2, Lcom/miui/gallery/ui/AddPhotosFragment$1;

    invoke-direct {v2, p0, p1}, Lcom/miui/gallery/ui/AddPhotosFragment$1;-><init>(Lcom/miui/gallery/ui/AddPhotosFragment;[J)V

    invoke-virtual {v0, v2}, Lcom/miui/gallery/ui/CopyOrMoveDialog;->setOnOperationSelectedListener(Lcom/miui/gallery/ui/CopyOrMoveDialog$OnOperationSelectedListener;)V

    .line 78
    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "CopyOrMoveDialog"

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/ui/CopyOrMoveDialog;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 85
    .end local v0    # "dialog":Lcom/miui/gallery/ui/CopyOrMoveDialog;
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string v2, "AddPhotosFragment"

    const-string v3, "Add photo show CopyOrMoveDialog fail,Do copy operation for default!"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/AddPhotosFragment;->recordCopyMoveAction(Z)V

    goto :goto_0
.end method

.method private pickPhotos()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddPhotosFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pick-upper-bound"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    const-string v1, "pick-need-id"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/ui/AddPhotosFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 48
    return-void
.end method

.method private recordCopyMoveAction(Z)V
    .locals 3
    .param p1, "deleteOrigin"    # Z

    .prologue
    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "move"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "from"

    const-string v2, "AddPhotosFragment"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "organize_photos"

    const-string v2, "move_or_copy"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 92
    return-void
.end method

.method private setResult(I)V
    .locals 4
    .param p1, "resultCode"    # I

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddPhotosFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 129
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 130
    const/16 v2, 0x21

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddPhotosFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddPhotosFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, p1, v1}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddPhotosFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 133
    return-void

    .line 130
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, 0x0

    .line 117
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddPhotosFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 119
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "key_album_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lcom/miui/gallery/ui/AddPhotosFragment;->mAlbumId:J

    .line 120
    iget-wide v2, p0, Lcom/miui/gallery/ui/AddPhotosFragment;->mAlbumId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 121
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/AddPhotosFragment;->setResult(I)V

    .line 125
    :goto_1
    return-void

    :cond_0
    move-wide v2, v4

    .line 119
    goto :goto_0

    .line 123
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/AddPhotosFragment;->pickPhotos()V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 96
    if-ne p2, v6, :cond_3

    if-eqz p3, :cond_3

    .line 97
    const-string v3, "pick-result-data"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 99
    .local v1, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    :cond_0
    invoke-direct {p0, v4}, Lcom/miui/gallery/ui/AddPhotosFragment;->setResult(I)V

    .line 113
    .end local v1    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_0
    return-void

    .line 104
    .restart local v1    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [J

    .line 105
    .local v2, "ids":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 106
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    :cond_2
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/AddPhotosFragment;->doAddPhotos([J)V

    .line 109
    invoke-direct {p0, v6}, Lcom/miui/gallery/ui/AddPhotosFragment;->setResult(I)V

    goto :goto_0

    .line 111
    .end local v0    # "i":I
    .end local v1    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v2    # "ids":[J
    :cond_3
    invoke-direct {p0, v4}, Lcom/miui/gallery/ui/AddPhotosFragment;->setResult(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AddPhotosFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method
