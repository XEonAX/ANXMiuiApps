.class Lmiui/notification/NotificationPanelActivity$LoadDataTask;
.super Landroid/os/AsyncTask;
.source "NotificationPanelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/notification/NotificationPanelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/notification/NotificationPanelActivity;


# direct methods
.method constructor <init>(Lmiui/notification/NotificationPanelActivity;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/notification/NotificationPanelActivity;

    .line 81
    iput-object p1, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 81
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .line 85
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    invoke-virtual {v1}, Lmiui/notification/NotificationPanelActivity;->getData()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lmiui/notification/NotificationPanelActivity;->mData:Ljava/util/List;

    .line 86
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    invoke-virtual {v1}, Lmiui/notification/NotificationPanelActivity;->getAppTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/notification/NotificationPanelActivity;->mAppTitle:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 81
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "params"    # Ljava/lang/Void;

    .line 92
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v0, v0, Lmiui/notification/NotificationPanelActivity;->mAppInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v1, v1, Lmiui/notification/NotificationPanelActivity;->mAppTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v0, v0, Lmiui/notification/NotificationPanelActivity;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v0, v0, Lmiui/notification/NotificationPanelActivity;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 94
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v0, v0, Lmiui/notification/NotificationPanelActivity;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/notification/NotificationItem;

    .line 95
    .local v1, "item":Lmiui/notification/NotificationItem;
    iget-object v2, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v2, v2, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    iget-object v3, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    invoke-static {v3, v1}, Lmiui/notification/NotificationPanelActivity;->access$000(Lmiui/notification/NotificationPanelActivity;Lmiui/notification/NotificationItem;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/notification/NotificationRowLayout;->addView(Landroid/view/View;)V

    .line 96
    .end local v1    # "item":Lmiui/notification/NotificationItem;
    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v0, v0, Lmiui/notification/NotificationPanelActivity;->mNoNotificationTips:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v0, v0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmiui/notification/NotificationRowLayout;->setVisibility(I)V

    .line 102
    :cond_1
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v0, v0, Lmiui/notification/NotificationPanelActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v1, v1, Lmiui/notification/NotificationPanelActivity;->mOpenAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    return-void
.end method
