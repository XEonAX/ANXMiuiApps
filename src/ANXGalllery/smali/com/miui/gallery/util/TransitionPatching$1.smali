.class final Lcom/miui/gallery/util/TransitionPatching$1;
.super Ljava/lang/Object;
.source "TransitionPatching.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/TransitionPatching;->setOnEnterStartedListener(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$decorView:Landroid/view/View;

.field final synthetic val$listener:Ljava/lang/Runnable;

.field final synthetic val$viewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Landroid/view/ViewTreeObserver;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/miui/gallery/util/TransitionPatching$1;->val$listener:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/miui/gallery/util/TransitionPatching$1;->val$viewTreeObserver:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lcom/miui/gallery/util/TransitionPatching$1;->val$decorView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    .line 81
    const-string v1, "TransitionPatching"

    const-string v2, "onEnterTransitionStarted"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/miui/gallery/util/TransitionPatching$1;->val$listener:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 83
    iget-object v1, p0, Lcom/miui/gallery/util/TransitionPatching$1;->val$viewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/miui/gallery/util/TransitionPatching$1;->val$viewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 91
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/util/TransitionPatching$1;->val$decorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 87
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method
