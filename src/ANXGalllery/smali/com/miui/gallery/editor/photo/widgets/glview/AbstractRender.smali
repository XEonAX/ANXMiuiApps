.class public abstract Lcom/miui/gallery/editor/photo/widgets/glview/AbstractRender;
.super Ljava/lang/Object;
.source "AbstractRender.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private final mRunOnDraw:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/AbstractRender;->mRunOnDraw:Ljava/util/LinkedList;

    .line 14
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/glview/AbstractRender;->runPendingOnDrawTasks()V

    .line 33
    return-void
.end method

.method public runOnDraw(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 25
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/AbstractRender;->mRunOnDraw:Ljava/util/LinkedList;

    monitor-enter v1

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/AbstractRender;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 27
    monitor-exit v1

    .line 28
    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected runPendingOnDrawTasks()V
    .locals 2

    .prologue
    .line 17
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/AbstractRender;->mRunOnDraw:Ljava/util/LinkedList;

    monitor-enter v1

    .line 18
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/AbstractRender;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/AbstractRender;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    return-void
.end method
