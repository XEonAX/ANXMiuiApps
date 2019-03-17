.class Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment$1;
.super Ljava/lang/Object;
.source "AdjustFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)Z
    .locals 3
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->access$000(Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;)Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustAdapter;->getSelection()I

    move-result v0

    if-ne v0, p3, :cond_0

    .line 100
    :goto_0
    return v2

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;->access$100(Lcom/miui/gallery/editor/photo/app/adjust/AdjustFragment;IZ)V

    goto :goto_0
.end method
