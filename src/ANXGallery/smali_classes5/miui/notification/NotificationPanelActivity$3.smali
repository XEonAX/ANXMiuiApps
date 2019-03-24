.class Lmiui/notification/NotificationPanelActivity$3;
.super Ljava/lang/Object;
.source "NotificationPanelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/notification/NotificationPanelActivity;
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

    .line 245
    iput-object p1, p0, Lmiui/notification/NotificationPanelActivity$3;->this$0:Lmiui/notification/NotificationPanelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 248
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 249
    .local v0, "set":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity$3;->this$0:Lmiui/notification/NotificationPanelActivity;

    invoke-virtual {v1}, Lmiui/notification/NotificationPanelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 250
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lmiui/notification/NotificationPanelActivity$3;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v2, v2, Lmiui/notification/NotificationPanelActivity;->mScrollView:Landroid/widget/ScrollView;

    const-string v3, "scaleY"

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    .line 251
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lmiui/notification/NotificationPanelActivity$3;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v2, v2, Lmiui/notification/NotificationPanelActivity;->mAppInfo:Landroid/widget/TextView;

    const-string v5, "translationY"

    new-array v6, v4, [F

    iget-object v7, p0, Lmiui/notification/NotificationPanelActivity$3;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget v7, v7, Lmiui/notification/NotificationPanelActivity;->mNotificationHeight:I

    iget-object v8, p0, Lmiui/notification/NotificationPanelActivity$3;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v8, v8, Lmiui/notification/NotificationPanelActivity;->mData:Ljava/util/List;

    .line 252
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    mul-int/2addr v7, v8

    div-int/2addr v7, v4

    int-to-float v7, v7

    aput v7, v6, v3

    const/4 v3, 0x1

    const/4 v7, 0x0

    aput v7, v6, v3

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    .line 253
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    .line 250
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 255
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 256
    new-instance v1, Lmiui/notification/NotificationPanelActivity$3$1;

    invoke-direct {v1, p0}, Lmiui/notification/NotificationPanelActivity$3$1;-><init>(Lmiui/notification/NotificationPanelActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 261
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 262
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
