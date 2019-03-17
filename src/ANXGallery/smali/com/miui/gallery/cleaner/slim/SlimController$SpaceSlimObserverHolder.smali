.class Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserverHolder;
.super Ljava/lang/Object;
.source "SlimController.java"

# interfaces
.implements Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cleaner/slim/SlimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpaceSlimObserverHolder"
.end annotation


# instance fields
.field observers:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserverHolder;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cleaner/slim/SlimController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cleaner/slim/SlimController$1;

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserverHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlimPaused()V
    .locals 3

    .prologue
    .line 639
    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserverHolder;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserver;

    .line 640
    .local v0, "observer":Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserver;
    invoke-interface {v0}, Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserver;->onSlimPaused()V

    goto :goto_0

    .line 642
    .end local v0    # "observer":Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserver;
    :cond_0
    return-void
.end method

.method public onSlimProgress(JJI)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "releaseSize"    # J
    .param p5, "remainCount"    # I

    .prologue
    .line 625
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserverHolder;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserver;

    .local v1, "observer":Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserver;
    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .line 626
    invoke-interface/range {v1 .. v6}, Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserver;->onSlimProgress(JJI)V

    goto :goto_0

    .line 628
    .end local v1    # "observer":Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserver;
    :cond_0
    return-void
.end method

.method public onSlimResumed()V
    .locals 3

    .prologue
    .line 632
    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserverHolder;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserver;

    .line 633
    .local v0, "observer":Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserver;
    invoke-interface {v0}, Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserver;->onSlimResumed()V

    goto :goto_0

    .line 635
    .end local v0    # "observer":Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserver;
    :cond_0
    return-void
.end method
