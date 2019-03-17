.class public Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyOnScrollListener;
.super Ljava/lang/Object;
.source "BabyAlbumDetailFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/BabyAlbumDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyOnScrollListener;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 490
    if-lez p3, :cond_0

    if-nez p2, :cond_0

    .line 491
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyOnScrollListener;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v0, v2}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$502(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;Z)Z

    .line 496
    :goto_0
    if-lez p2, :cond_1

    add-int v0, p2, p3

    if-ne v0, p4, :cond_1

    .line 497
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyOnScrollListener;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v0, v2}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$402(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;Z)Z

    .line 501
    :goto_1
    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyOnScrollListener;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$502(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;Z)Z

    goto :goto_0

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyOnScrollListener;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$402(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;Z)Z

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 485
    return-void
.end method
