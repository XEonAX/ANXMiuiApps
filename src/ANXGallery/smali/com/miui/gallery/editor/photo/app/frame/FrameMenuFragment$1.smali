.class Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment$1;
.super Ljava/lang/Object;
.source "FrameMenuFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;

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
    .line 70
    invoke-static {p1, p3}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/ScrollControlLinearLayoutManager;->onItemClick(Landroid/support/v7/widget/RecyclerView;I)V

    .line 71
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->access$000(Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;)Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/gallery/editor/photo/app/frame/FrameAdapter;->setSelection(I)V

    .line 72
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;

    invoke-static {v0, p3}, Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;->access$100(Lcom/miui/gallery/editor/photo/app/frame/FrameMenuFragment;I)V

    .line 73
    const/4 v0, 0x1

    return v0
.end method
