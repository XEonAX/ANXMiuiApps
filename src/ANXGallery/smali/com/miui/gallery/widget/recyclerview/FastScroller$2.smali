.class Lcom/miui/gallery/widget/recyclerview/FastScroller$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/recyclerview/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/recyclerview/FastScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/widget/recyclerview/FastScroller;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$2;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$2;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/FastScroller$2;->this$0:Lcom/miui/gallery/widget/recyclerview/FastScroller;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v1

    .line 163
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v2

    .line 162
    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/widget/recyclerview/FastScroller;->updateThumbPositionByScrolling(II)V

    .line 165
    :cond_0
    return-void
.end method
