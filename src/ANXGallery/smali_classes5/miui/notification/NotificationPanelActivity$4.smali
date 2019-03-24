.class Lmiui/notification/NotificationPanelActivity$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationPanelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/notification/NotificationPanelActivity;->closeAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/notification/NotificationPanelActivity;


# direct methods
.method constructor <init>(Lmiui/notification/NotificationPanelActivity;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/notification/NotificationPanelActivity;

    .line 284
    iput-object p1, p0, Lmiui/notification/NotificationPanelActivity$4;->this$0:Lmiui/notification/NotificationPanelActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 286
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$4;->this$0:Lmiui/notification/NotificationPanelActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/notification/NotificationPanelActivity;->access$200(Lmiui/notification/NotificationPanelActivity;Z)V

    .line 287
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$4;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v0, v0, Lmiui/notification/NotificationPanelActivity;->mAppInfo:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 288
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$4;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v0, v0, Lmiui/notification/NotificationPanelActivity;->mAppInfo:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$4;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v0, v0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v0}, Lmiui/notification/NotificationRowLayout;->removeAllViews()V

    .line 290
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$4;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v0, v0, Lmiui/notification/NotificationPanelActivity;->mPostCollapseCleanup:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$4;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v0, v0, Lmiui/notification/NotificationPanelActivity;->mPostCollapseCleanup:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 292
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$4;->this$0:Lmiui/notification/NotificationPanelActivity;

    iput-object v2, v0, Lmiui/notification/NotificationPanelActivity;->mPostCollapseCleanup:Ljava/lang/Runnable;

    .line 294
    :cond_0
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$4;->this$0:Lmiui/notification/NotificationPanelActivity;

    iput-boolean v1, v0, Lmiui/notification/NotificationPanelActivity;->mClosing:Z

    .line 295
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$4;->this$0:Lmiui/notification/NotificationPanelActivity;

    invoke-virtual {v0}, Lmiui/notification/NotificationPanelActivity;->finish()V

    .line 296
    return-void
.end method
