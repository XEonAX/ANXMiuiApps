.class public Lcom/miui/gallery/util/ShortcutUtil;
.super Ljava/lang/Object;
.source "ShortcutUtil.java"


# direct methods
.method public static createShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILandroid/content/Intent;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "defResId"    # I
    .param p5, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1a

    if-ge v8, v9, :cond_2

    .line 22
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    .local v5, "shortcutIntent":Landroid/content/Intent;
    const-string v8, "ro.miui.product.home"

    const-string v9, "com.miui.home"

    invoke-static {v8, v9}, Lcom/android/internal/SystemPropertiesCompat;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    const-string v8, "duplicate"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 25
    const-string v8, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v5, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    if-eqz p3, :cond_1

    .line 27
    const-string v8, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v5, v8, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 32
    :goto_0
    const-string v8, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v5, v8, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 59
    .end local v5    # "shortcutIntent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 29
    .restart local v5    # "shortcutIntent":Landroid/content/Intent;
    :cond_1
    invoke-static {p0, p4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 30
    .local v0, "defaultIcon":Landroid/os/Parcelable;
    const-string v8, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 36
    .end local v0    # "defaultIcon":Landroid/os/Parcelable;
    .end local v5    # "shortcutIntent":Landroid/content/Intent;
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutManager;

    .line 37
    .local v6, "shortcutManager":Landroid/content/pm/ShortcutManager;
    invoke-virtual {v6}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 38
    invoke-virtual {v6}, Landroid/content/pm/ShortcutManager;->getPinnedShortcuts()Ljava/util/List;

    move-result-object v7

    .line 39
    .local v7, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 40
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 41
    .local v3, "info":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    .line 46
    .end local v3    # "info":Landroid/content/pm/ShortcutInfo;
    :cond_4
    if-eqz p3, :cond_5

    invoke-static {p3}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 48
    .local v2, "icon":Landroid/graphics/drawable/Icon;
    :goto_2
    new-instance v8, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-direct {v8, p0, p1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v8, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v8

    .line 50
    invoke-virtual {v8, p2}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v8

    .line 51
    invoke-virtual {v8, p5}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v8

    .line 52
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    .line 53
    .local v4, "pinShortcutInfo":Landroid/content/pm/ShortcutInfo;
    const/4 v8, 0x0

    invoke-virtual {v6, v4, v8}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 55
    .end local v2    # "icon":Landroid/graphics/drawable/Icon;
    .end local v4    # "pinShortcutInfo":Landroid/content/pm/ShortcutInfo;
    .end local v6    # "shortcutManager":Landroid/content/pm/ShortcutManager;
    .end local v7    # "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "ShortcutUtil"

    const-string v9, "createShortcut error.\n"

    invoke-static {v8, v9, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 47
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "shortcutManager":Landroid/content/pm/ShortcutManager;
    .restart local v7    # "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :cond_5
    :try_start_1
    invoke-static {p0, p4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_2
.end method
