.class Lmiui/notification/SwipeHelper$4;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/notification/SwipeHelper;->snapChild(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/notification/SwipeHelper;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$canAnimViewBeDismissed:Z


# direct methods
.method constructor <init>(Lmiui/notification/SwipeHelper;ZLandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/notification/SwipeHelper;

    .line 307
    iput-object p1, p0, Lmiui/notification/SwipeHelper$4;->this$0:Lmiui/notification/SwipeHelper;

    iput-boolean p2, p0, Lmiui/notification/SwipeHelper$4;->val$canAnimViewBeDismissed:Z

    iput-object p3, p0, Lmiui/notification/SwipeHelper$4;->val$animView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 309
    iget-boolean v0, p0, Lmiui/notification/SwipeHelper$4;->val$canAnimViewBeDismissed:Z

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lmiui/notification/SwipeHelper$4;->val$animView:Landroid/view/View;

    iget-object v1, p0, Lmiui/notification/SwipeHelper$4;->this$0:Lmiui/notification/SwipeHelper;

    iget-object v2, p0, Lmiui/notification/SwipeHelper$4;->val$animView:Landroid/view/View;

    invoke-static {v1, v2}, Lmiui/notification/SwipeHelper;->access$400(Lmiui/notification/SwipeHelper;Landroid/view/View;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 312
    :cond_0
    iget-object v0, p0, Lmiui/notification/SwipeHelper$4;->val$animView:Landroid/view/View;

    invoke-static {v0}, Lmiui/notification/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    .line 313
    return-void
.end method
