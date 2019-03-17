.class public Lcom/miui/gallery/ui/AddRemoveFavoritesTask;
.super Lcom/miui/gallery/ui/ProcessTask;
.source "AddRemoveFavoritesTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;,
        Lcom/miui/gallery/ui/AddRemoveFavoritesTask$OnCompleteListenerAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/ui/ProcessTask",
        "<",
        "Lcom/miui/gallery/ui/AddRemoveFavoritesTask$Param;",
        "[J>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$1;

    invoke-direct {v0}, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/ProcessTask;-><init>(Lcom/miui/gallery/ui/ProcessTask$ProcessCallback;)V

    .line 41
    return-void
.end method


# virtual methods
.method public setOperationCompleteListener(Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;

    .prologue
    .line 44
    if-eqz p1, :cond_0

    .line 45
    new-instance v0, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$OnCompleteListenerAdapter;

    invoke-direct {v0, p1}, Lcom/miui/gallery/ui/AddRemoveFavoritesTask$OnCompleteListenerAdapter;-><init>(Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AddRemoveFavoritesTask;->setCompleteListener(Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener;)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AddRemoveFavoritesTask;->setCompleteListener(Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener;)V

    goto :goto_0
.end method
