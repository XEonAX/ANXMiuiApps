.class public Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;
.super Ljava/lang/Object;
.source "AIAlbumDisplayHelper.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AIAlbumDisplayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeakReferencedAIAlbumDisplayStatusObserver"
.end annotation


# instance fields
.field private mCallbackRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/ui/AIAlbumDisplayHelper$DisplayStatusCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/AIAlbumDisplayHelper$DisplayStatusCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/miui/gallery/ui/AIAlbumDisplayHelper$DisplayStatusCallback;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;->mCallbackRef:Ljava/lang/ref/WeakReference;

    .line 37
    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/util/Observable;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 41
    iget-object v1, p0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper$WeakReferencedAIAlbumDisplayStatusObserver;->mCallbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/AIAlbumDisplayHelper$DisplayStatusCallback;

    .line 42
    .local v0, "callback":Lcom/miui/gallery/ui/AIAlbumDisplayHelper$DisplayStatusCallback;
    if-eqz v0, :cond_0

    instance-of v1, p2, Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_0

    .line 43
    check-cast p2, Landroid/util/SparseBooleanArray;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-interface {v0, p2}, Lcom/miui/gallery/ui/AIAlbumDisplayHelper$DisplayStatusCallback;->onStatusChanged(Landroid/util/SparseBooleanArray;)V

    .line 45
    :cond_0
    return-void
.end method
