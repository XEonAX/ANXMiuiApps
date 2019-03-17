.class Luk/co/senab/photoview/PhotoViewAttacher$Transition$1;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/senab/photoview/PhotoViewAttacher$Transition;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Luk/co/senab/photoview/PhotoViewAttacher$Transition;


# direct methods
.method constructor <init>(Luk/co/senab/photoview/PhotoViewAttacher$Transition;)V
    .locals 0
    .param p1, "this$1"    # Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    .prologue
    .line 2024
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition$1;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2027
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition$1;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    iget-object v0, v0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mListener:Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;

    if-eqz v0, :cond_0

    .line 2028
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition$1;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    iget-object v0, v0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mListener:Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;

    invoke-interface {v0}, Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;->onTransitEnd()V

    .line 2029
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$Transition$1;->this$1:Luk/co/senab/photoview/PhotoViewAttacher$Transition;

    const/4 v1, 0x0

    iput-object v1, v0, Luk/co/senab/photoview/PhotoViewAttacher$Transition;->mListener:Luk/co/senab/photoview/PhotoViewAttacher$TransitionListener;

    .line 2031
    :cond_0
    return-void
.end method
