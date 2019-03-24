.class Lmiui/notification/SwipeHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/notification/SwipeHelper;->dismissChild(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/notification/SwipeHelper;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lmiui/notification/SwipeHelper;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/notification/SwipeHelper;

    .line 284
    iput-object p1, p0, Lmiui/notification/SwipeHelper$2;->this$0:Lmiui/notification/SwipeHelper;

    iput-object p2, p0, Lmiui/notification/SwipeHelper$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lmiui/notification/SwipeHelper$2;->val$animView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 286
    iget-object v0, p0, Lmiui/notification/SwipeHelper$2;->this$0:Lmiui/notification/SwipeHelper;

    invoke-static {v0}, Lmiui/notification/SwipeHelper;->access$300(Lmiui/notification/SwipeHelper;)Lmiui/notification/SwipeHelper$Callback;

    move-result-object v0

    iget-object v1, p0, Lmiui/notification/SwipeHelper$2;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Lmiui/notification/SwipeHelper$Callback;->onChildDismissed(Landroid/view/View;)V

    .line 287
    iget-object v0, p0, Lmiui/notification/SwipeHelper$2;->val$animView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 288
    return-void
.end method
