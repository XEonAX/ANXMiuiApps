.class Lcom/miui/gallery/ui/AlbumPageFragment$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "AlbumPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/AlbumPageFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumPageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/AlbumPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/AlbumPageFragment;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumPageFragment$1;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumPageFragment$1;->this$0:Lcom/miui/gallery/ui/AlbumPageFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->closeContextMenu()V

    .line 126
    return-void
.end method
