.class Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$4;
.super Ljava/lang/Object;
.source "AssistantPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->updateCard(ILcom/miui/gallery/card/Card;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$4;->this$0:Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    iput p2, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$4;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$4;->this$0:Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->access$100(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;)Lcom/miui/gallery/card/ui/cardlist/CardAdapter;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$4;->val$pos:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->refreshNotifyItemChanged(I)V

    .line 136
    return-void
.end method
