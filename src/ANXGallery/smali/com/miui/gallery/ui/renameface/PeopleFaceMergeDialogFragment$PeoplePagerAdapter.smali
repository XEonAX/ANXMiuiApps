.class Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeoplePagerAdapter;
.super Lcom/miui/gallery/widget/PagerAdapter;
.source "PeopleFaceMergeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeoplePagerAdapter"
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter;

.field final synthetic this$0:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;)V
    .locals 3

    .prologue
    .line 141
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeoplePagerAdapter;->this$0:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;

    invoke-direct {p0}, Lcom/miui/gallery/widget/PagerAdapter;-><init>()V

    .line 142
    new-instance v0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter;

    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeoplePagerAdapter;->this$0:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;

    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeoplePagerAdapter;->this$0:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->access$500(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter;-><init>(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeoplePagerAdapter;->mAdapter:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$1;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeoplePagerAdapter;-><init>(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;)V

    return-void
.end method

.method private getPagerLayout()Lcom/miui/gallery/widget/PagerGridLayout;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 184
    new-instance v1, Lcom/miui/gallery/widget/PagerGridLayout;

    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeoplePagerAdapter;->this$0:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/gallery/widget/PagerGridLayout;-><init>(Landroid/content/Context;)V

    .line 185
    .local v1, "pager":Lcom/miui/gallery/widget/PagerGridLayout;
    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeoplePagerAdapter;->this$0:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0257

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 186
    .local v0, "padding":I
    invoke-virtual {v1, v0, v4, v0, v4}, Lcom/miui/gallery/widget/PagerGridLayout;->setPaddingRelative(IIII)V

    .line 187
    return-object v1
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 157
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 158
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeoplePagerAdapter;->this$0:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->access$500(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeoplePagerAdapter;->this$0:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->access$500(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;I)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "position"    # I

    .prologue
    .line 170
    if-lez p2, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeoplePagerAdapter;->getCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 171
    const/4 v0, -0x3

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeoplePagerAdapter;->getPagerLayout()Lcom/miui/gallery/widget/PagerGridLayout;

    move-result-object v0

    .line 163
    .local v0, "pager":Lcom/miui/gallery/widget/PagerGridLayout;
    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeoplePagerAdapter;->mAdapter:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter;

    invoke-virtual {v0, v1, p2}, Lcom/miui/gallery/widget/PagerGridLayout;->setAdapter(Lcom/miui/gallery/widget/PagerGridLayout$BaseAdapter;I)V

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 165
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 146
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateItems(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 178
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/model/DisplayFolderItem;>;"
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeoplePagerAdapter;->this$0:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->access$500(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 179
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeoplePagerAdapter;->mAdapter:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter;

    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeoplePagerAdapter;->this$0:Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;->access$500(Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PagerGridLayoutAdapter;->updateItems(Ljava/util/ArrayList;)V

    .line 180
    invoke-virtual {p0}, Lcom/miui/gallery/ui/renameface/PeopleFaceMergeDialogFragment$PeoplePagerAdapter;->notifyDataSetChanged()V

    .line 181
    return-void
.end method
