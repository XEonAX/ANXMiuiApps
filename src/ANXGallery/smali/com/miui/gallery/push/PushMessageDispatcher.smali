.class public Lcom/miui/gallery/push/PushMessageDispatcher;
.super Ljava/lang/Object;
.source "PushMessageDispatcher.java"


# direct methods
.method public static dispatch(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/xiaomi/mipush/sdk/MiPushMessage;

    .prologue
    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "content":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 27
    const-string v10, "PushMessageDispatcher"

    const-string v11, "Message content is empty"

    invoke-static {v10, v11}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v10, "mipush"

    const-string v11, "message_content_is_empty"

    invoke-static {v10, v11}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-static {v1}, Lcom/miui/gallery/push/GalleryPushMessage;->fromJson(Ljava/lang/String;)Lcom/miui/gallery/push/GalleryPushMessage;

    move-result-object v2

    .line 36
    .local v2, "galleryMsg":Lcom/miui/gallery/push/GalleryPushMessage;
    if-nez v2, :cond_1

    .line 37
    const-string v10, "PushMessageDispatcher"

    const-string v11, "Parse message content failed: %s"

    invoke-static {v10, v11, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    const-string v10, "mipush"

    const-string v11, "message_content_parse_failed"

    invoke-static {v10, v11}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v2}, Lcom/miui/gallery/push/GalleryPushMessage;->getMessageScope()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/miui/gallery/push/PushConstants$MessageScope;->getScope(Ljava/lang/String;)Lcom/miui/gallery/push/PushConstants$MessageScope;

    move-result-object v5

    .line 46
    .local v5, "messageScope":Lcom/miui/gallery/push/PushConstants$MessageScope;
    sget-object v10, Lcom/miui/gallery/push/PushConstants$MessageScope;->RELEASE:Lcom/miui/gallery/push/PushConstants$MessageScope;

    if-eq v5, v10, :cond_3

    sget-object v10, Lcom/miui/gallery/push/PushConstants$MessageScope;->DEBUG:Lcom/miui/gallery/push/PushConstants$MessageScope;

    if-ne v5, v10, :cond_2

    sget-boolean v10, Lcom/miui/os/Rom;->IS_DEBUGGABLE:Z

    if-nez v10, :cond_3

    .line 47
    :cond_2
    const-string v10, "PushMessageDispatcher"

    const-string v11, "Message scope does not match: %s"

    invoke-virtual {v2}, Lcom/miui/gallery/push/GalleryPushMessage;->getMessageScope()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v7, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "msg_scope"

    invoke-virtual {v2}, Lcom/miui/gallery/push/GalleryPushMessage;->getMessageScope()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v10, "mipush"

    const-string/jumbo v11, "unknown_message_scope_doesnt_match"

    invoke-static {v10, v11, v7}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 58
    .end local v7    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v2}, Lcom/miui/gallery/push/GalleryPushMessage;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/miui/gallery/push/PushConstants$MessageType;->getType(Ljava/lang/String;)Lcom/miui/gallery/push/PushConstants$MessageType;

    move-result-object v6

    .line 59
    .local v6, "messageType":Lcom/miui/gallery/push/PushConstants$MessageType;
    if-nez v6, :cond_4

    .line 60
    const-string v10, "PushMessageDispatcher"

    const-string v11, "Unknown message type: %s"

    invoke-virtual {v2}, Lcom/miui/gallery/push/GalleryPushMessage;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 62
    .restart local v7    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "msg_type"

    invoke-virtual {v2}, Lcom/miui/gallery/push/GalleryPushMessage;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v10, "mipush"

    const-string/jumbo v11, "unknown_message_type"

    invoke-static {v10, v11, v7}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 72
    .end local v7    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getUserAccount()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v9, 0x0

    .line 73
    .local v9, "pushAccount":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccount()Landroid/accounts/Account;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccount()Landroid/accounts/Account;

    move-result-object v10

    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/miui/gallery/util/Encode;->SHA1Encode([B)Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "localAccount":Ljava/lang/String;
    :goto_2
    if-eqz v9, :cond_7

    invoke-static {v9, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 75
    const-string v10, "PushMessageDispatcher"

    const-string v11, "UserAccount doesn\'t match, skip handle"

    invoke-static {v10, v11}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v8, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "pushAccount_localAccount"

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "%s_%s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    const/4 v14, 0x1

    aput-object v4, v13, v14

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v10, "mipush"

    const-string v11, "push_user_account_doesnt_match"

    invoke-static {v10, v11, v8}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 72
    .end local v4    # "localAccount":Ljava/lang/String;
    .end local v8    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "pushAccount":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getUserAccount()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 73
    .restart local v9    # "pushAccount":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 86
    .restart local v4    # "localAccount":Ljava/lang/String;
    :cond_7
    invoke-virtual {v2}, Lcom/miui/gallery/push/GalleryPushMessage;->getBusinessModule()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "businessModule":Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/gallery/push/MessageHandlerFactory;->create(Ljava/lang/String;)Lcom/miui/gallery/push/messagehandler/MessageHandler;

    move-result-object v3

    .line 88
    .local v3, "handler":Lcom/miui/gallery/push/messagehandler/MessageHandler;
    if-nez v3, :cond_8

    .line 89
    const-string v10, "PushMessageDispatcher"

    const-string v11, "MessageHandler is undefined: %s"

    invoke-static {v10, v11, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 93
    :cond_8
    sget-object v10, Lcom/miui/gallery/push/PushMessageDispatcher$1;->$SwitchMap$com$miui$gallery$push$PushConstants$MessageType:[I

    invoke-virtual {v6}, Lcom/miui/gallery/push/PushConstants$MessageType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_0

    .line 95
    :pswitch_0
    invoke-virtual {v3, p0, v2}, Lcom/miui/gallery/push/messagehandler/MessageHandler;->handlePull(Landroid/content/Context;Lcom/miui/gallery/push/GalleryPushMessage;)V

    goto/16 :goto_0

    .line 98
    :pswitch_1
    invoke-virtual {v3, p0, v2}, Lcom/miui/gallery/push/messagehandler/MessageHandler;->handleDirect(Landroid/content/Context;Lcom/miui/gallery/push/GalleryPushMessage;)V

    goto/16 :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
