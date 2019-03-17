.class Lcom/miui/gallery/card/CardManager$4;
.super Ljava/lang/Object;
.source "CardManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/card/CardManager;->updateInternal(Lcom/miui/gallery/card/Card;)V
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
    .line 265
    iput-object p1, p0, Lcom/miui/gallery/card/CardManager$4;->this$0:Lcom/miui/gallery/card/CardManager;

    iput-object p2, p0, Lcom/miui/gallery/card/CardManager$4;->val$card:Lcom/miui/gallery/card/Card;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 268
    iget-object v1, p0, Lcom/miui/gallery/card/CardManager$4;->this$0:Lcom/miui/gallery/card/CardManager;

    invoke-static {v1}, Lcom/miui/gallery/card/CardManager;->access$100(Lcom/miui/gallery/card/CardManager;)Lcom/miui/gallery/card/CardManager$CardCache;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/miui/gallery/card/CardManager$4;->this$0:Lcom/miui/gallery/card/CardManager;

    invoke-static {v1}, Lcom/miui/gallery/card/CardManager;->access$100(Lcom/miui/gallery/card/CardManager;)Lcom/miui/gallery/card/CardManager$CardCache;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/card/CardManager$4;->val$card:Lcom/miui/gallery/card/Card;

    invoke-virtual {v2}, Lcom/miui/gallery/card/Card;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/card/CardManager$CardCache;->findIndexOfCard(J)I

    move-result v0

    .line 270
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 271
    iget-object v1, p0, Lcom/miui/gallery/card/CardManager$4;->val$card:Lcom/miui/gallery/card/Card;

    invoke-virtual {v1}, Lcom/miui/gallery/card/Card;->isLocalDeleted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/miui/gallery/card/CardManager$4;->this$0:Lcom/miui/gallery/card/CardManager;

    invoke-static {v1}, Lcom/miui/gallery/card/CardManager;->access$100(Lcom/miui/gallery/card/CardManager;)Lcom/miui/gallery/card/CardManager$CardCache;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/card/CardManager$4;->val$card:Lcom/miui/gallery/card/Card;

    invoke-virtual {v2}, Lcom/miui/gallery/card/Card;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/card/CardManager$CardCache;->removeCard(J)V

    .line 274
    iget-object v1, p0, Lcom/miui/gallery/card/CardManager$4;->this$0:Lcom/miui/gallery/card/CardManager;

    invoke-static {v1}, Lcom/miui/gallery/card/CardManager;->access$200(Lcom/miui/gallery/card/CardManager;)Lcom/miui/gallery/card/CardManager$CardObserverHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/card/CardManager$4;->val$card:Lcom/miui/gallery/card/Card;

    invoke-virtual {v1, v0, v2}, Lcom/miui/gallery/card/CardManager$CardObserverHolder;->onCardDeleted(ILcom/miui/gallery/card/Card;)V

    .line 281
    .end local v0    # "index":I
    :cond_0
    :goto_0
    return-void

    .line 276
    .restart local v0    # "index":I
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/card/CardManager$4;->this$0:Lcom/miui/gallery/card/CardManager;

    invoke-static {v1}, Lcom/miui/gallery/card/CardManager;->access$100(Lcom/miui/gallery/card/CardManager;)Lcom/miui/gallery/card/CardManager$CardCache;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/card/CardManager$4;->val$card:Lcom/miui/gallery/card/Card;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/card/CardManager$CardCache;->updateCard(Lcom/miui/gallery/card/Card;)V

    .line 277
    iget-object v1, p0, Lcom/miui/gallery/card/CardManager$4;->this$0:Lcom/miui/gallery/card/CardManager;

    invoke-static {v1}, Lcom/miui/gallery/card/CardManager;->access$200(Lcom/miui/gallery/card/CardManager;)Lcom/miui/gallery/card/CardManager$CardObserverHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/card/CardManager$4;->this$0:Lcom/miui/gallery/card/CardManager;

    invoke-static {v2}, Lcom/miui/gallery/card/CardManager;->access$100(Lcom/miui/gallery/card/CardManager;)Lcom/miui/gallery/card/CardManager$CardCache;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/card/CardManager$4;->val$card:Lcom/miui/gallery/card/Card;

    invoke-virtual {v3}, Lcom/miui/gallery/card/Card;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/miui/gallery/card/CardManager$CardCache;->findIndexOfCard(J)I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/card/CardManager$4;->val$card:Lcom/miui/gallery/card/Card;

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/card/CardManager$CardObserverHolder;->onCardUpdated(ILcom/miui/gallery/card/Card;)V

    goto :goto_0
.end method
