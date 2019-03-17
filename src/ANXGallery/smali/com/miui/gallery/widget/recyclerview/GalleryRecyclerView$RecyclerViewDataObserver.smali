.class Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerViewDataObserver;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "GalleryRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;
    .param p2, "x1"    # Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$1;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerViewDataObserver;-><init>(Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 225
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-static {v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->access$100(Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;)V

    .line 226
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 230
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 231
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-static {v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->access$100(Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;)V

    .line 232
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 236
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(IILjava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-static {v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->access$100(Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;)V

    .line 238
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 242
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 243
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-static {v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->access$100(Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;)V

    .line 244
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 254
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 255
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-static {v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->access$100(Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;)V

    .line 256
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 248
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 249
    iget-object v0, p0, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView$RecyclerViewDataObserver;->this$0:Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;

    invoke-static {v0}, Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;->access$100(Lcom/miui/gallery/widget/recyclerview/GalleryRecyclerView;)V

    .line 250
    return-void
.end method
