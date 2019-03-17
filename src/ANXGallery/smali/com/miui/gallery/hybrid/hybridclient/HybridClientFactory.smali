.class public Lcom/miui/gallery/hybrid/hybridclient/HybridClientFactory;
.super Ljava/lang/Object;
.source "HybridClientFactory.java"


# direct methods
.method public static createHybridClient(Landroid/content/Context;Landroid/content/Intent;)Lcom/miui/gallery/hybrid/hybridclient/HybridClient;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 17
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-object v3

    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 23
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 24
    .local v1, "uri":Landroid/net/Uri;
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 26
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 28
    :cond_2
    new-instance v3, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;

    invoke-direct {v3, p0, v2}, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "url":Ljava/lang/String;
    :cond_3
    const-string v4, "com.miui.gallery.action.VIEW_WEB"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 30
    const-string/jumbo v3, "url"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    .restart local v2    # "url":Ljava/lang/String;
    new-instance v3, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;

    invoke-direct {v3, p0, v2}, Lcom/miui/gallery/hybrid/hybridclient/GalleryHybridClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 32
    .end local v2    # "url":Ljava/lang/String;
    :cond_4
    const-string v4, "com.miui.gallery.action.VIEW_WEB_DEVICE_ID"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 33
    const-string/jumbo v3, "url"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .restart local v2    # "url":Ljava/lang/String;
    new-instance v3, Lcom/miui/gallery/hybrid/hybridclient/DeviceIdHybridClient;

    invoke-direct {v3, p0, v2}, Lcom/miui/gallery/hybrid/hybridclient/DeviceIdHybridClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    .end local v2    # "url":Ljava/lang/String;
    :cond_5
    const-string v4, "com.miui.gallery.action.VIEW_WEB_LOGIN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 36
    const-string/jumbo v3, "url"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .restart local v2    # "url":Ljava/lang/String;
    new-instance v3, Lcom/miui/gallery/hybrid/hybridclient/LoginHybridClient;

    invoke-direct {v3, p0, v2}, Lcom/miui/gallery/hybrid/hybridclient/LoginHybridClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    .end local v2    # "url":Ljava/lang/String;
    :cond_6
    const-string v4, "com.miui.gallery.action.VIEW_WEB_OPERATION_STORY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 39
    const-string/jumbo v3, "url"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .restart local v2    # "url":Ljava/lang/String;
    new-instance v3, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;

    invoke-direct {v3, p0, v2}, Lcom/miui/gallery/hybrid/hybridclient/OperationHybridClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    .end local v2    # "url":Ljava/lang/String;
    :cond_7
    const-string v4, "HybridClientFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not supported action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
