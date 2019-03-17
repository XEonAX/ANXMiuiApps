.class Lcom/miui/gallery/ui/AlbumPageFragment$OnCreateNewAlbumListener;
.super Ljava/lang/Object;
.source "AlbumPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCreateNewAlbumListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumPageFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/AlbumPageFragment;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumPageFragment$OnCreateNewAlbumListener;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/AlbumPageFragment;Lcom/miui/gallery/ui/AlbumPageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/AlbumPageFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/AlbumPageFragment$1;

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumPageFragment$OnCreateNewAlbumListener;-><init>(Lcom/miui/gallery/ui/AlbumPageFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 191
    new-instance v0, Lcom/miui/gallery/ui/AlbumCreatorDialogFragment;

    invoke-direct {v0}, Lcom/miui/gallery/ui/AlbumCreatorDialogFragment;-><init>()V

    .line 192
    .local v0, "creator":Lcom/miui/gallery/ui/AlbumCreatorDialogFragment;
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment$OnCreateNewAlbumListener;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumPageFragment;->access$300(Lcom/miui/gallery/ui/AlbumPageFragment;)Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumCreatorDialogFragment;->setOnAlbumOperationDoneListener(Lcom/miui/gallery/ui/BaseAlbumOperationDialogFragment$OnAlbumOperationDoneListener;)V

    .line 193
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumPageFragment$OnCreateNewAlbumListener;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumPageFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "AlbumCreatorDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/AlbumCreatorDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 195
    const-string v1, "album"

    const-string v2, "create_album"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method
