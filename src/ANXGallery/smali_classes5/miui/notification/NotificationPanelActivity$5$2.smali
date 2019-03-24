.class Lmiui/notification/NotificationPanelActivity$5$2;
.super Ljava/lang/Object;
.source "NotificationPanelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/notification/NotificationPanelActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/notification/NotificationPanelActivity$5;

.field final synthetic val$_v:Landroid/view/View;

.field final synthetic val$velocity:I


# direct methods
.method constructor <init>(Lmiui/notification/NotificationPanelActivity$5;Landroid/view/View;I)V
    .locals 0
    .param p1, "this$1"    # Lmiui/notification/NotificationPanelActivity$5;

    .line 373
    iput-object p1, p0, Lmiui/notification/NotificationPanelActivity$5$2;->this$1:Lmiui/notification/NotificationPanelActivity$5;

    iput-object p2, p0, Lmiui/notification/NotificationPanelActivity$5$2;->val$_v:Landroid/view/View;

    iput p3, p0, Lmiui/notification/NotificationPanelActivity$5$2;->val$velocity:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 376
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$5$2;->this$1:Lmiui/notification/NotificationPanelActivity$5;

    iget-object v0, v0, Lmiui/notification/NotificationPanelActivity$5;->val$list:Lmiui/notification/NotificationRowLayout;

    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity$5$2;->val$_v:Landroid/view/View;

    iget v2, p0, Lmiui/notification/NotificationPanelActivity$5$2;->val$velocity:I

    invoke-virtual {v0, v1, v2}, Lmiui/notification/NotificationRowLayout;->dismissRowAnimated(Landroid/view/View;I)V

    .line 377
    return-void
.end method
