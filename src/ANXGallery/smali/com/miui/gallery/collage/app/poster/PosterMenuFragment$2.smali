.class Lcom/miui/gallery/collage/app/poster/PosterMenuFragment$2;
.super Ljava/lang/Object;
.source "PosterMenuFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment$2;->this$0:Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)Z
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    .line 84
    invoke-static {p1, p3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->onItemClick(Landroid/support/v7/widget/RecyclerView;I)V

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment$2;->this$0:Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->access$300(Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;)Lcom/miui/gallery/collage/app/poster/PosterMenuAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/gallery/collage/app/poster/PosterMenuAdapter;->setSelection(I)V

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment$2;->this$0:Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;

    invoke-static {v0, p3}, Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;->access$400(Lcom/miui/gallery/collage/app/poster/PosterMenuFragment;I)V

    .line 87
    const/4 v0, 0x1

    return v0
.end method
