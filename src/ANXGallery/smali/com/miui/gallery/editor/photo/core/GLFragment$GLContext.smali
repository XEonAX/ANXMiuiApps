.class public abstract Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;
.super Ljava/lang/Object;
.source "GLFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/GLFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GLContext"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext$OnCreatedListener;
    }
.end annotation


# instance fields
.field private mCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mListener:Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext$OnCreatedListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;->mCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;)Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext$OnCreatedListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;->mListener:Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext$OnCreatedListener;

    return-object v0
.end method


# virtual methods
.method protected abstract onPause()V
.end method

.method protected abstract onResume()V
.end method

.method protected final performCreated()V
    .locals 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;->mCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;->mListener:Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext$OnCreatedListener;

    if-eqz v0, :cond_0

    .line 18
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext$1;-><init>(Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 25
    :cond_0
    return-void
.end method

.method protected final performDestroyed()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;->mCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 29
    return-void
.end method

.method public final performPause()V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;->onPause()V

    .line 37
    return-void
.end method

.method public final performResume()V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;->onResume()V

    .line 33
    return-void
.end method

.method public final setOnCreatedListener(Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext$OnCreatedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext$OnCreatedListener;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;->mListener:Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext$OnCreatedListener;

    .line 41
    return-void
.end method
