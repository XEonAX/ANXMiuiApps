.class public Lcom/miui/gallery/util/ReceiverUtils;
.super Ljava/lang/Object;
.source "ReceiverUtils.java"


# direct methods
.method public static varargs registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "priority"    # I
    .param p3, "dataScheme"    # Ljava/lang/String;
    .param p4, "actions"    # [Ljava/lang/String;

    .prologue
    .line 31
    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    array-length v2, p4

    if-gtz v2, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    .local v1, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v1, p2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 36
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 37
    invoke-virtual {v1, p3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 39
    :cond_2
    array-length v3, p4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v0, p4, v2

    .line 40
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 42
    .end local v0    # "action":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static varargs registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "actions"    # [Ljava/lang/String;

    .prologue
    .line 26
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/miui/gallery/util/ReceiverUtils;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;[Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static safeUnregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 14
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 16
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    const/4 v1, 0x1

    .line 22
    :goto_0
    return v1

    .line 18
    :catch_0
    move-exception v0

    .line 19
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ReceiverUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to unregister receiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
