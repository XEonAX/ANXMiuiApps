.class Lcom/miui/gallery/ui/AddRemoveFavoritesTask$OnCompleteListenerAdapter;
.super Ljava/lang/Object;
.source "AddRemoveFavoritesTask.java"

# interfaces
.implements Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AddRemoveFavoritesTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnCompleteListenerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener",
        "<[J>;"
    }
.end annotation


# instance fields
.field private mListenerRef:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>(Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$OnCompleteListenerAdapter;->mListenerRef:Ljava/lang/ref/WeakReference;

    .line 56
    return-void
.end method


# virtual methods
.method public bridge synthetic onCompleteProcess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$OnCompleteListenerAdapter;->onCompleteProcess([J)V

    return-void
.end method

.method public onCompleteProcess([J)V
    .locals 2
    .param p1, "result"    # [J

    .prologue
    .line 60
    iget-object v1, p0, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$OnCompleteListenerAdapter;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    .line 61
    .local v0, "listener":Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;
    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0, p1}, Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;->onComplete([J)V

    .line 64
    :cond_0
    return-void
.end method
