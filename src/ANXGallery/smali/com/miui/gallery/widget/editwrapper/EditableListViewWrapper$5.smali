.class Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$5;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "EditableListViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$5;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 1306
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 1307
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$5;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$2200(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)V

    .line 1308
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 1312
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 1313
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$5;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$2200(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)V

    .line 1314
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 1318
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(IILjava/lang/Object;)V

    .line 1319
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$5;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$2200(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)V

    .line 1320
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 1324
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 1325
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$5;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$2200(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)V

    .line 1326
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 1336
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 1337
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$5;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$2200(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)V

    .line 1338
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 1330
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 1331
    iget-object v0, p0, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper$5;->this$0:Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;

    invoke-static {v0}, Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;->access$2200(Lcom/miui/gallery/widget/editwrapper/EditableListViewWrapper;)V

    .line 1332
    return-void
.end method
