.class Lcom/miui/gallery/card/CardManager$1;
.super Ljava/lang/Object;
.source "CardManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/card/CardManager;->addInternal(Lcom/miui/gallery/card/Card;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/card/CardManager;

.field final synthetic val$card:Lcom/miui/gallery/card/Card;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/CardManager;Lcom/miui/gallery/card/Card;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/card/CardManager;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/miui/gallery/card/CardManager$1;->this$0:Lcom/miui/gallery/card/CardManager;

    iput-object p2, p0, Lcom/miui/gallery/card/CardManager$1;->val$card:Lcom/miui/gallery/card/Card;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 136
    iget-object v1, p0, Lcom/miui/gallery/card/CardManager$1;->this$0:Lcom/miui/gallery/card/CardManager;

    invoke-static {v1}, Lcom/miui/gallery/card/CardManager;->access$100(Lcom/miui/gallery/card/CardManager;)Lcom/miui/gallery/card/CardManager$CardCache;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/card/CardManager$1;->val$card:Lcom/miui/gallery/card/Card;

    invoke-virtual {v1}, Lcom/miui/gallery/card/Card;->isIgnored()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/card/CardManager$1;->val$card:Lcom/miui/gallery/card/Card;

    invoke-virtual {v1}, Lcom/miui/gallery/card/Card;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/card/CardManager$1;->val$card:Lcom/miui/gallery/card/Card;

    invoke-virtual {v1}, Lcom/miui/gallery/card/Card;->isOutofDate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/miui/gallery/card/CardManager$1;->this$0:Lcom/miui/gallery/card/CardManager;

    invoke-static {v1}, Lcom/miui/gallery/card/CardManager;->access$100(Lcom/miui/gallery/card/CardManager;)Lcom/miui/gallery/card/CardManager$CardCache;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/card/CardManager$1;->val$card:Lcom/miui/gallery/card/Card;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/card/CardManager$CardCache;->addCard(Lcom/miui/gallery/card/Card;)I

    move-result v0

    .line 138
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/miui/gallery/card/CardManager$1;->this$0:Lcom/miui/gallery/card/CardManager;

    invoke-static {v1}, Lcom/miui/gallery/card/CardManager;->access$200(Lcom/miui/gallery/card/CardManager;)Lcom/miui/gallery/card/CardManager$CardObserverHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/card/CardManager$1;->val$card:Lcom/miui/gallery/card/Card;

    invoke-virtual {v1, v0, v2}, Lcom/miui/gallery/card/CardManager$CardObserverHolder;->onCardAdded(ILcom/miui/gallery/card/Card;)V

    .line 142
    .end local v0    # "index":I
    :cond_0
    return-void
.end method
