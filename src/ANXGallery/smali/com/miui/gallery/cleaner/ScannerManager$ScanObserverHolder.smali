.class Lcom/miui/gallery/cleaner/ScannerManager$ScanObserverHolder;
.super Ljava/lang/Object;
.source "ScannerManager.java"

# interfaces
.implements Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cleaner/ScannerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScanObserverHolder"
.end annotation


# instance fields
.field observers:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cleaner/ScannerManager$ScanObserverHolder;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cleaner/ScannerManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cleaner/ScannerManager$1;

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/miui/gallery/cleaner/ScannerManager$ScanObserverHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCanceled()V
    .locals 3

    .prologue
    .line 332
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScannerManager$ScanObserverHolder;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;

    .line 333
    .local v0, "observer":Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;
    invoke-interface {v0}, Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;->onScanCanceled()V

    goto :goto_0

    .line 335
    .end local v0    # "observer":Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;
    :cond_0
    return-void
.end method

.method public onScanFinish(J)V
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 346
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScannerManager$ScanObserverHolder;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;

    .line 347
    .local v0, "observer":Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;
    invoke-interface {v0, p1, p2}, Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;->onScanFinish(J)V

    goto :goto_0

    .line 349
    .end local v0    # "observer":Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;
    :cond_0
    return-void
.end method

.method public onScanProgress(J)V
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 339
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScannerManager$ScanObserverHolder;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;

    .line 340
    .local v0, "observer":Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;
    invoke-interface {v0, p1, p2}, Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;->onScanProgress(J)V

    goto :goto_0

    .line 342
    .end local v0    # "observer":Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;
    :cond_0
    return-void
.end method

.method public onScanResultUpdate(J)V
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 353
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScannerManager$ScanObserverHolder;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;

    .line 354
    .local v0, "observer":Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;
    invoke-interface {v0, p1, p2}, Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;->onScanResultUpdate(J)V

    goto :goto_0

    .line 356
    .end local v0    # "observer":Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;
    :cond_0
    return-void
.end method

.method public onScanStart()V
    .locals 3

    .prologue
    .line 325
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScannerManager$ScanObserverHolder;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;

    .line 326
    .local v0, "observer":Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;
    invoke-interface {v0}, Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;->onScanStart()V

    goto :goto_0

    .line 328
    .end local v0    # "observer":Lcom/miui/gallery/cleaner/ScannerManager$ScanObserver;
    :cond_0
    return-void
.end method
