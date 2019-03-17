.class Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$SourceResultContentObserver;
.super Landroid/database/ContentObserver;
.source "QueryPackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SourceResultContentObserver"
.end annotation


# instance fields
.field private final mSourceResultWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/search/core/result/SourceResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;Lcom/miui/gallery/search/core/result/SourceResult;)V
    .locals 1
    .param p2, "sourceResult"    # Lcom/miui/gallery/search/core/result/SourceResult;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$SourceResultContentObserver;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    .line 339
    invoke-static {p1}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->access$700(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 340
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$SourceResultContentObserver;->mSourceResultWeakReference:Ljava/lang/ref/WeakReference;

    .line 341
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 345
    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$SourceResultContentObserver;->mSourceResultWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$SourceResultContentObserver;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    invoke-static {v0}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->access$000(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v1, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$SourceResultContentObserver;->this$0:Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;

    iget-object v0, p0, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask$SourceResultContentObserver;->mSourceResultWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/core/result/SourceResult;

    invoke-static {v1, v0}, Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;->access$900(Lcom/miui/gallery/search/core/query/QueryPackageHelper$BatchQueryTask;Lcom/miui/gallery/search/core/result/SourceResult;)V

    .line 348
    :cond_0
    return-void
.end method
