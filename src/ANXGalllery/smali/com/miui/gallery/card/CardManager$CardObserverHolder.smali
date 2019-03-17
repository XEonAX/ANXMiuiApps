.class Lcom/miui/gallery/card/CardManager$CardObserverHolder;
.super Ljava/lang/Object;
.source "CardManager.java"

# interfaces
.implements Lcom/miui/gallery/card/CardManager$CardObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/CardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CardObserverHolder"
.end annotation


# instance fields
.field final observers:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/miui/gallery/card/CardManager$CardObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1009
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/card/CardManager$CardObserverHolder;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/card/CardManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/card/CardManager$1;

    .prologue
    .line 1008
    invoke-direct {p0}, Lcom/miui/gallery/card/CardManager$CardObserverHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public onCardAdded(ILcom/miui/gallery/card/Card;)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "card"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 1015
    iget-object v1, p0, Lcom/miui/gallery/card/CardManager$CardObserverHolder;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/card/CardManager$CardObserver;

    .line 1016
    .local v0, "observer":Lcom/miui/gallery/card/CardManager$CardObserver;
    invoke-interface {v0, p1, p2}, Lcom/miui/gallery/card/CardManager$CardObserver;->onCardAdded(ILcom/miui/gallery/card/Card;)V

    goto :goto_0

    .line 1018
    .end local v0    # "observer":Lcom/miui/gallery/card/CardManager$CardObserver;
    :cond_0
    return-void
.end method

.method public onCardDeleted(ILcom/miui/gallery/card/Card;)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "card"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 1022
    iget-object v1, p0, Lcom/miui/gallery/card/CardManager$CardObserverHolder;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/card/CardManager$CardObserver;

    .line 1023
    .local v0, "observer":Lcom/miui/gallery/card/CardManager$CardObserver;
    invoke-interface {v0, p1, p2}, Lcom/miui/gallery/card/CardManager$CardObserver;->onCardDeleted(ILcom/miui/gallery/card/Card;)V

    goto :goto_0

    .line 1025
    .end local v0    # "observer":Lcom/miui/gallery/card/CardManager$CardObserver;
    :cond_0
    return-void
.end method

.method public onCardUpdated(ILcom/miui/gallery/card/Card;)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "card"    # Lcom/miui/gallery/card/Card;

    .prologue
    .line 1029
    iget-object v1, p0, Lcom/miui/gallery/card/CardManager$CardObserverHolder;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/card/CardManager$CardObserver;

    .line 1030
    .local v0, "observer":Lcom/miui/gallery/card/CardManager$CardObserver;
    invoke-interface {v0, p1, p2}, Lcom/miui/gallery/card/CardManager$CardObserver;->onCardUpdated(ILcom/miui/gallery/card/Card;)V

    goto :goto_0

    .line 1032
    .end local v0    # "observer":Lcom/miui/gallery/card/CardManager$CardObserver;
    :cond_0
    return-void
.end method
