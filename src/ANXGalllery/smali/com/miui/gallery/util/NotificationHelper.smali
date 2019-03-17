.class public Lcom/miui/gallery/util/NotificationHelper;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# direct methods
.method private static addNotificationChannel(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "importance"    # I

    .prologue
    .line 106
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "channel":Landroid/app/NotificationChannel;
    packed-switch p1, :pswitch_data_0

    .line 133
    .end local v0    # "channel":Landroid/app/NotificationChannel;
    :cond_0
    :goto_0
    return-void

    .line 110
    .restart local v0    # "channel":Landroid/app/NotificationChannel;
    :pswitch_0
    new-instance v0, Landroid/app/NotificationChannel;

    .end local v0    # "channel":Landroid/app/NotificationChannel;
    const-string v2, "com.miui.gallery.MIN"

    const v3, 0x7f0c00d8

    .line 111
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 127
    .restart local v0    # "channel":Landroid/app/NotificationChannel;
    :goto_1
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 128
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_0

    .line 115
    .end local v1    # "notificationManager":Landroid/app/NotificationManager;
    :pswitch_1
    new-instance v0, Landroid/app/NotificationChannel;

    .end local v0    # "channel":Landroid/app/NotificationChannel;
    const-string v2, "com.miui.gallery.low"

    const v3, 0x7f0c00d7

    .line 116
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v0, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 118
    .restart local v0    # "channel":Landroid/app/NotificationChannel;
    goto :goto_1

    .line 120
    :pswitch_2
    new-instance v0, Landroid/app/NotificationChannel;

    .end local v0    # "channel":Landroid/app/NotificationChannel;
    const-string v2, "com.miui.gallery.default"

    const v3, 0x7f0c00d6

    .line 121
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v0, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 123
    .restart local v0    # "channel":Landroid/app/NotificationChannel;
    goto :goto_1

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getBabyAlbumNotificationId(ZI)I
    .locals 2
    .param p0, "isSharer"    # Z
    .param p1, "id"    # I

    .prologue
    const v1, 0x186a0

    .line 70
    if-eqz p0, :cond_0

    .line 71
    const v0, 0x30d40

    rem-int v1, p1, v1

    add-int/2addr v0, v1

    .line 73
    :goto_0
    return v0

    :cond_0
    rem-int v0, p1, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static getEmptyNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, "builder":Landroid/app/Notification$Builder;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 98
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/miui/gallery/util/NotificationHelper;->addNotificationChannel(Landroid/content/Context;I)V

    .line 99
    const-string v1, "com.miui.gallery.MIN"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 101
    :cond_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method public static getPushNotificationId(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 78
    const v0, 0x493e0

    const v1, 0x186a0

    rem-int v1, p0, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static setDefaultChannel(Landroid/content/Context;Landroid/app/Notification$Builder;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 83
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/miui/gallery/util/NotificationHelper;->addNotificationChannel(Landroid/content/Context;I)V

    .line 84
    const-string v0, "com.miui.gallery.default"

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 86
    :cond_0
    return-void
.end method

.method public static setLowChannel(Landroid/content/Context;Landroid/app/Notification$Builder;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 90
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/miui/gallery/util/NotificationHelper;->addNotificationChannel(Landroid/content/Context;I)V

    .line 91
    const-string v0, "com.miui.gallery.low"

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 93
    :cond_0
    return-void
.end method
