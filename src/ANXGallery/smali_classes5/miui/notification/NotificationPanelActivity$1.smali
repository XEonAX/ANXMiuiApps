.class Lmiui/notification/NotificationPanelActivity$1;
.super Ljava/lang/Object;
.source "NotificationPanelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/notification/NotificationPanelActivity;->updateNotificationVetoButton(Landroid/view/View;Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/notification/NotificationPanelActivity;

.field final synthetic val$clearIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lmiui/notification/NotificationPanelActivity;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/notification/NotificationPanelActivity;

    .line 217
    iput-object p1, p0, Lmiui/notification/NotificationPanelActivity$1;->this$0:Lmiui/notification/NotificationPanelActivity;

    iput-object p2, p0, Lmiui/notification/NotificationPanelActivity$1;->val$clearIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 219
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$1;->val$clearIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 221
    :try_start_0
    sget-object v0, Lmiui/notification/NotificationPanelActivity;->TAG:Ljava/lang/String;

    const-string v1, "NotificationClicker clear "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$1;->val$clearIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 227
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$1;->this$0:Lmiui/notification/NotificationPanelActivity;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lmiui/notification/NotificationPanelActivity;->access$100(Lmiui/notification/NotificationPanelActivity;Landroid/view/View;)V

    .line 228
    return-void
.end method
