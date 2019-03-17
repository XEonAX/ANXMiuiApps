.class Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$3;
.super Ljava/lang/Object;
.source "AssistantPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/card/CardManager$CardObserver;


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
    .line 113
    iput-object p1, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$3;->this$0:Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCardAdded(ILcom/miui/gallery/card/Card;)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "card"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$3;->this$0:Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->access$200(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;)V

    .line 117
    return-void
.end method

.method public onCardDeleted(ILcom/miui/gallery/card/Card;)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "card"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$3;->this$0:Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    invoke-static {v0}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->access$200(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;)V

    .line 122
    return-void
.end method

.method public onCardUpdated(ILcom/miui/gallery/card/Card;)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "card"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment$3;->this$0:Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;

    invoke-static {v0, p1, p2}, Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;->access$300(Lcom/miui/gallery/card/ui/cardlist/AssistantPageFragment;ILcom/miui/gallery/card/Card;)V

    .line 127
    return-void
.end method
