.class Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment$2;
.super Ljava/lang/Object;
.source "StitchingMenuFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment$2;->this$0:Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;

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
    .line 82
    invoke-static {p1, p3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->onItemClick(Landroid/support/v7/widget/RecyclerView;I)V

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment$2;->this$0:Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->access$300(Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;)Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/gallery/collage/app/stitching/StitchingAdapter;->setSelection(I)V

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment$2;->this$0:Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;

    invoke-static {v0, p3}, Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;->access$400(Lcom/miui/gallery/collage/app/stitching/StitchingMenuFragment;I)V

    .line 85
    const/4 v0, 0x1

    return v0
.end method
