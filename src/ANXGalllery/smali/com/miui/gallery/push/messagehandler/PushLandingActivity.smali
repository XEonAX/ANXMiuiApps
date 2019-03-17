.class public Lcom/miui/gallery/push/messagehandler/PushLandingActivity;
.super Landroid/app/Activity;
.source "PushLandingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/miui/gallery/push/messagehandler/PushLandingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 26
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 27
    const-string v5, "notification_content_intent"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 28
    .local v0, "contentIntent":Landroid/content/Intent;
    const-string v5, "notification_content_id"

    invoke-virtual {v3, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 29
    .local v2, "id":I
    if-eqz v0, :cond_1

    .line 31
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery/push/messagehandler/PushLandingActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 37
    .local v4, "param":Ljava/util/Map;
    const-string v5, "pushContent"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%d_%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    const/4 v9, 0x1

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v5, "push_notification"

    const-string v6, "notification_click"

    invoke-static {v5, v6, v4}, Lcom/miui/gallery/util/GalleryStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 44
    .end local v0    # "contentIntent":Landroid/content/Intent;
    .end local v2    # "id":I
    .end local v4    # "param":Ljava/util/Map;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/miui/gallery/push/messagehandler/PushLandingActivity;->finish()V

    .line 45
    return-void

    .line 32
    .restart local v0    # "contentIntent":Landroid/content/Intent;
    .restart local v2    # "id":I
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "PushLandingActivity"

    const-string v6, "failed to start activity: %s"

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 41
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v5, "PushLandingActivity"

    const-string v6, "empty content intent"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
