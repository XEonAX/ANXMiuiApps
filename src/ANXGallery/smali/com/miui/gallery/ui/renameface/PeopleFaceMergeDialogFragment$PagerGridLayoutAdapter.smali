.class Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter;
.super Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;
.source "PeopleFaceMergeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerGridLayoutAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mGridLayoutItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/model/DisplayFolderItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/model/DisplayFolderItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/DisplayFolderItem;>;"
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter;->this$0:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;

    invoke-direct {p0}, Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;-><init>()V

    .line 195
    iput-object p2, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter;->mGridLayoutItems:Ljava/util/ArrayList;

    .line 196
    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter;Landroid/view/View;Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;

    .prologue
    .line 191
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter;->setItemClickListener(Landroid/view/View;Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;)V

    return-void
.end method

.method private setItemClickListener(Landroid/view/View;Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;

    .prologue
    .line 243
    new-instance v0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter$1;-><init>(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter;Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    return-void
.end method


# virtual methods
.method public bindData(ILandroid/view/View;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 227
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter$ViewHolder;

    .line 228
    .local v1, "viewItem":Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter$ViewHolder;
    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter;->mGridLayoutItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;

    .line 229
    .local v0, "item":Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;
    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter$ViewHolder;->bindView(Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;)V

    .line 230
    return-void
.end method

.method public freshView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 240
    return-void
.end method

.method public getColumnsCount()I
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x4

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter;->mGridLayoutItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter;->mGridLayoutItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getRowsCount()I
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x2

    return v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 220
    const v1, 0x7f0400e7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 221
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter$ViewHolder;-><init>(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 222
    return-object v0
.end method

.method public onPageChanged()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public updateItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/model/DisplayFolderItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/DisplayFolderItem;>;"
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter;->mGridLayoutItems:Ljava/util/ArrayList;

    .line 200
    invoke-virtual {p0}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter;->notifyDataSetChanged()V

    .line 201
    return-void
.end method
