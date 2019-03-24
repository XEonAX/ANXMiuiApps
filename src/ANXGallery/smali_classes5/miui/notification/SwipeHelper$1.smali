.class Lmiui/notification/SwipeHelper$1;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/notification/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/notification/SwipeHelper;


# direct methods
.method constructor <init>(Lmiui/notification/SwipeHelper;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/notification/SwipeHelper;

    .line 209
    iput-object p1, p0, Lmiui/notification/SwipeHelper$1;->this$0:Lmiui/notification/SwipeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 212
    iget-object v0, p0, Lmiui/notification/SwipeHelper$1;->this$0:Lmiui/notification/SwipeHelper;

    invoke-static {v0}, Lmiui/notification/SwipeHelper;->access$000(Lmiui/notification/SwipeHelper;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/notification/SwipeHelper$1;->this$0:Lmiui/notification/SwipeHelper;

    invoke-static {v0}, Lmiui/notification/SwipeHelper;->access$100(Lmiui/notification/SwipeHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lmiui/notification/SwipeHelper$1;->this$0:Lmiui/notification/SwipeHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/notification/SwipeHelper;->access$102(Lmiui/notification/SwipeHelper;Z)Z

    .line 214
    iget-object v0, p0, Lmiui/notification/SwipeHelper$1;->this$0:Lmiui/notification/SwipeHelper;

    invoke-static {v0}, Lmiui/notification/SwipeHelper;->access$000(Lmiui/notification/SwipeHelper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 215
    iget-object v0, p0, Lmiui/notification/SwipeHelper$1;->this$0:Lmiui/notification/SwipeHelper;

    invoke-static {v0}, Lmiui/notification/SwipeHelper;->access$200(Lmiui/notification/SwipeHelper;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lmiui/notification/SwipeHelper$1;->this$0:Lmiui/notification/SwipeHelper;

    invoke-static {v1}, Lmiui/notification/SwipeHelper;->access$000(Lmiui/notification/SwipeHelper;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 217
    :cond_0
    return-void
.end method
