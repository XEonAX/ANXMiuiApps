.class Lmiui/notification/NotificationPanelActivity$NotificationActionClicker;
.super Ljava/lang/Object;
.source "NotificationPanelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/notification/NotificationPanelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationActionClicker"
.end annotation


# instance fields
.field private mIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lmiui/notification/NotificationPanelActivity;


# direct methods
.method public constructor <init>(Lmiui/notification/NotificationPanelActivity;Landroid/app/PendingIntent;)V
    .locals 0
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .line 179
    iput-object p1, p0, Lmiui/notification/NotificationPanelActivity$NotificationActionClicker;->this$0:Lmiui/notification/NotificationPanelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p2, p0, Lmiui/notification/NotificationPanelActivity$NotificationActionClicker;->mIntent:Landroid/app/PendingIntent;

    .line 181
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 184
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$NotificationActionClicker;->mIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 186
    :try_start_0
    sget-object v0, Lmiui/notification/NotificationPanelActivity;->TAG:Ljava/lang/String;

    const-string v1, "NotificationClicker ActionClick "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$NotificationActionClicker;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    sget-object v1, Lmiui/notification/NotificationPanelActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending contentIntent failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_0
    :goto_0
    return-void
.end method
