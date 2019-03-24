.class Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/hybrid/HybridManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncInvocation"
.end annotation


# instance fields
.field private fh:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/internal/hybrid/HybridManager;",
            ">;"
        }
    .end annotation
.end field

.field private fi:Lmiui/hybrid/HybridFeature;

.field private fj:Ljava/lang/String;

.field private fk:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/HybridFeature;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;->fh:Ljava/lang/ref/WeakReference;

    .line 278
    iput-object p2, p0, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;->fi:Lmiui/hybrid/HybridFeature;

    .line 279
    iput-object p3, p0, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;->fj:Ljava/lang/String;

    .line 280
    iput-object p4, p0, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;->fk:Ljava/lang/String;

    .line 281
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 285
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;->fh:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/hybrid/HybridManager;

    .line 286
    if-nez v0, :cond_0

    .line 287
    return-void

    .line 289
    :cond_0
    invoke-static {v0}, Lcom/miui/internal/hybrid/HybridManager;->a(Lcom/miui/internal/hybrid/HybridManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;->fj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/hybrid/Request;

    .line 290
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 293
    :cond_1
    iget-object v2, p0, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;->fi:Lmiui/hybrid/HybridFeature;

    invoke-interface {v2, v1}, Lmiui/hybrid/HybridFeature;->invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object v2

    .line 294
    iget-object v3, p0, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;->fi:Lmiui/hybrid/HybridFeature;

    invoke-interface {v3, v1}, Lmiui/hybrid/HybridFeature;->getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;

    move-result-object v3

    sget-object v4, Lmiui/hybrid/HybridFeature$Mode;->ASYNC:Lmiui/hybrid/HybridFeature$Mode;

    if-ne v3, v4, :cond_2

    .line 295
    invoke-virtual {v1}, Lmiui/hybrid/Request;->getPageContext()Lmiui/hybrid/PageContext;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/internal/hybrid/HybridManager$AsyncInvocation;->fk:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Lcom/miui/internal/hybrid/HybridManager;->callback(Lmiui/hybrid/Response;Lmiui/hybrid/PageContext;Ljava/lang/String;)V

    .line 297
    :cond_2
    return-void

    .line 291
    :cond_3
    :goto_0
    return-void
.end method
