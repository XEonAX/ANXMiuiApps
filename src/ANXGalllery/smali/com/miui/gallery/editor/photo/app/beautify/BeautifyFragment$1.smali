.class Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment$1;
.super Ljava/lang/Object;
.source "BeautifyFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)Z
    .locals 4
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    const/4 v3, 0x1

    .line 71
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->access$000(Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;)Lcom/miui/gallery/editor/photo/app/beautify/BeautifyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyAdapter;->getSelection()I

    move-result v0

    if-ne v0, p3, :cond_0

    .line 76
    :goto_0
    return v3

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->access$100(Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;)[I

    move-result-object v1

    aget v1, v1, p3

    const/4 v2, 0x0

    invoke-static {v0, p3, v1, v2}, Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;->access$200(Lcom/miui/gallery/editor/photo/app/beautify/BeautifyFragment;IIZ)V

    goto :goto_0
.end method
