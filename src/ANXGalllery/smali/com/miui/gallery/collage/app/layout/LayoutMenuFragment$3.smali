.class Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$3;
.super Ljava/lang/Object;
.source "LayoutMenuFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$3;->this$0:Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;

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
    .line 119
    invoke-static {p1, p3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->onItemClick(Landroid/support/v7/widget/RecyclerView;I)V

    .line 120
    iget-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$3;->this$0:Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->access$400(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;)Lcom/miui/gallery/collage/app/layout/LayoutMenuAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/gallery/collage/app/layout/LayoutMenuAdapter;->setSelection(I)V

    .line 121
    iget-object v0, p0, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment$3;->this$0:Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;

    invoke-static {v0, p3}, Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;->access$500(Lcom/miui/gallery/collage/app/layout/LayoutMenuFragment;I)V

    .line 122
    const/4 v0, 0x1

    return v0
.end method
