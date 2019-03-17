.class Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;
.super Ljava/lang/Object;
.source "CloudItem.java"

# interfaces
.implements Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/model/CloudItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnCompleteListenerWrapper"
.end annotation


# instance fields
.field private final mCloudItemRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/model/CloudItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mOperationType:I

.field private final mWrappedRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;Lcom/miui/gallery/model/CloudItem;I)V
    .locals 1
    .param p1, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;
    .param p2, "dataItem"    # Lcom/miui/gallery/model/CloudItem;
    .param p3, "operationType"    # I

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;->mWrappedRef:Ljava/lang/ref/WeakReference;

    .line 368
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;->mCloudItemRef:Ljava/lang/ref/WeakReference;

    .line 369
    iput p3, p0, Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;->mOperationType:I

    .line 370
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;->mWrappedRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public onComplete([J)V
    .locals 8
    .param p1, "result"    # [J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 374
    if-eqz p1, :cond_0

    aget-wide v4, p1, v3

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 375
    iget-object v4, p0, Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;->mCloudItemRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/model/CloudItem;

    .line 376
    .local v0, "cloudItem":Lcom/miui/gallery/model/CloudItem;
    if-eqz v0, :cond_0

    .line 377
    iget v4, p0, Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;->mOperationType:I

    if-ne v4, v2, :cond_2

    :goto_0
    invoke-virtual {v0, v2}, Lcom/miui/gallery/model/CloudItem;->setIsFavorite(I)Lcom/miui/gallery/model/CloudItem;

    .line 383
    .end local v0    # "cloudItem":Lcom/miui/gallery/model/CloudItem;
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/model/CloudItem$OnCompleteListenerWrapper;->mWrappedRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    .line 384
    .local v1, "listener":Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;
    if-eqz v1, :cond_1

    .line 385
    invoke-interface {v1, p1}, Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;->onComplete([J)V

    .line 387
    :cond_1
    return-void

    .end local v1    # "listener":Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;
    .restart local v0    # "cloudItem":Lcom/miui/gallery/model/CloudItem;
    :cond_2
    move v2, v3

    .line 377
    goto :goto_0
.end method
