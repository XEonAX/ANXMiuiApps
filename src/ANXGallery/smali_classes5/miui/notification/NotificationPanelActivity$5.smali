.class Lmiui/notification/NotificationPanelActivity$5;
.super Ljava/lang/Object;
.source "NotificationPanelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/notification/NotificationPanelActivity;->clearAllNotification(Landroid/widget/ScrollView;Lmiui/notification/NotificationRowLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/notification/NotificationPanelActivity;

.field final synthetic val$clearableViews:Ljava/util/ArrayList;

.field final synthetic val$list:Lmiui/notification/NotificationRowLayout;

.field final synthetic val$snapshot:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lmiui/notification/NotificationPanelActivity;Lmiui/notification/NotificationRowLayout;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/notification/NotificationPanelActivity;

    .line 342
    iput-object p1, p0, Lmiui/notification/NotificationPanelActivity$5;->this$0:Lmiui/notification/NotificationPanelActivity;

    iput-object p2, p0, Lmiui/notification/NotificationPanelActivity$5;->val$list:Lmiui/notification/NotificationRowLayout;

    iput-object p3, p0, Lmiui/notification/NotificationPanelActivity$5;->val$clearableViews:Ljava/util/ArrayList;

    iput-object p4, p0, Lmiui/notification/NotificationPanelActivity$5;->val$snapshot:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 347
    const/16 v0, 0xa

    .line 348
    .local v0, "ROW_DELAY_DECREMENT":I
    const/16 v1, 0x8c

    .line 349
    .local v1, "currentDelay":I
    const/4 v2, 0x0

    .line 354
    .local v2, "totalDelay":I
    iget-object v3, p0, Lmiui/notification/NotificationPanelActivity$5;->val$list:Lmiui/notification/NotificationRowLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmiui/notification/NotificationRowLayout;->setViewRemoval(Z)V

    .line 356
    iget-object v3, p0, Lmiui/notification/NotificationPanelActivity$5;->this$0:Lmiui/notification/NotificationPanelActivity;

    new-instance v5, Lmiui/notification/NotificationPanelActivity$5$1;

    invoke-direct {v5, p0}, Lmiui/notification/NotificationPanelActivity$5$1;-><init>(Lmiui/notification/NotificationPanelActivity$5;)V

    iput-object v5, v3, Lmiui/notification/NotificationPanelActivity;->mPostCollapseCleanup:Ljava/lang/Runnable;

    .line 369
    iget-object v3, p0, Lmiui/notification/NotificationPanelActivity$5;->val$snapshot:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 370
    .local v3, "sampleView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 371
    .local v4, "width":I
    mul-int/lit8 v5, v4, 0x8

    .line 372
    .local v5, "velocity":I
    iget-object v6, p0, Lmiui/notification/NotificationPanelActivity$5;->val$snapshot:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 373
    .local v7, "_v":Landroid/view/View;
    iget-object v8, p0, Lmiui/notification/NotificationPanelActivity$5;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v8, v8, Lmiui/notification/NotificationPanelActivity;->mHandler:Landroid/os/Handler;

    new-instance v9, Lmiui/notification/NotificationPanelActivity$5$2;

    invoke-direct {v9, p0, v7, v5}, Lmiui/notification/NotificationPanelActivity$5$2;-><init>(Lmiui/notification/NotificationPanelActivity$5;Landroid/view/View;I)V

    int-to-long v10, v2

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 379
    const/16 v8, 0x32

    add-int/lit8 v9, v1, -0xa

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 380
    add-int/2addr v2, v1

    .line 381
    .end local v7    # "_v":Landroid/view/View;
    goto :goto_0

    .line 387
    :cond_0
    iget-object v6, p0, Lmiui/notification/NotificationPanelActivity$5;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v6, v6, Lmiui/notification/NotificationPanelActivity;->mHandler:Landroid/os/Handler;

    new-instance v7, Lmiui/notification/NotificationPanelActivity$5$3;

    invoke-direct {v7, p0}, Lmiui/notification/NotificationPanelActivity$5$3;-><init>(Lmiui/notification/NotificationPanelActivity$5;)V

    add-int/lit16 v8, v2, 0xe1

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 393
    return-void
.end method
