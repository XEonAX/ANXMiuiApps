.class Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$2;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "AssistantPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$2;->this$0:Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$2;->this$0:Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->access$100(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;)Lcom/miui/gallery/card/ui/cardlist/CardAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->getDataItemSize()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$2;->this$0:Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->access$000(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;)V

    .line 110
    :cond_0
    return-void
.end method
