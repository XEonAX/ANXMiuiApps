.class public Lcom/miui/gallery/share/UIHelper;
.super Ljava/lang/Object;
.source "UIHelper.java"


# direct methods
.method public static showAlbumShareInfo(Landroid/app/Activity;Lcom/miui/gallery/share/Path;I)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "path"    # Lcom/miui/gallery/share/Path;
    .param p2, "requestCode"    # I

    .prologue
    .line 29
    if-nez p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/cloud/CloudUtils;->isActive(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 34
    const v2, 0x7f0c02f4

    invoke-static {p0, v2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 37
    :cond_2
    const/4 v0, 0x0

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 39
    .local v1, "targetActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lcom/miui/gallery/share/Path;->isOtherShared()Z

    move-result v2

    if-nez v2, :cond_5

    .line 40
    invoke-virtual {p1}, Lcom/miui/gallery/share/Path;->isBabyAlbum()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 41
    const-class v1, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity;

    .line 52
    :goto_1
    if-eqz v1, :cond_3

    .line 53
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "share_path"

    .line 55
    invoke-virtual {p1}, Lcom/miui/gallery/share/Path;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    :cond_3
    if-eqz v0, :cond_0

    .line 60
    :try_start_0
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v2

    goto :goto_0

    .line 43
    :cond_4
    const-class v1, Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity;

    goto :goto_1

    .line 46
    :cond_5
    invoke-virtual {p1}, Lcom/miui/gallery/share/Path;->isBabyAlbum()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 47
    const-class v1, Lcom/miui/gallery/share/baby/BabyShareAlbumSharerActivity;

    goto :goto_1

    .line 49
    :cond_6
    const-class v1, Lcom/miui/gallery/share/NormalShareAlbumSharerActivity;

    goto :goto_1
.end method

.method public static toast(I)V
    .locals 1
    .param p0, "textId"    # I

    .prologue
    .line 115
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/share/UIHelper;->toast(Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "activity"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 123
    invoke-static {p0, p1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 124
    return-void
.end method

.method private static toast(Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 120
    return-void
.end method

.method public static toastError(I)V
    .locals 1
    .param p0, "err"    # I

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/miui/gallery/share/UIHelper;->toastError(Landroid/content/Context;I)V

    .line 68
    return-void
.end method

.method public static toastError(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "err"    # I

    .prologue
    .line 71
    const v0, 0x7f0c0310

    .line 72
    .local v0, "resId":I
    sparse-switch p1, :sswitch_data_0

    .line 109
    :goto_0
    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/gallery/share/UIHelper;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    return-void

    .line 74
    :sswitch_0
    const v0, 0x7f0c0328

    .line 75
    goto :goto_0

    .line 77
    :sswitch_1
    const v0, 0x7f0c01b6

    .line 78
    goto :goto_0

    .line 80
    :sswitch_2
    const v0, 0x7f0c019d

    .line 81
    goto :goto_0

    .line 83
    :sswitch_3
    const v0, 0x7f0c019e

    .line 84
    goto :goto_0

    .line 86
    :sswitch_4
    const v0, 0x7f0c01b3

    .line 87
    goto :goto_0

    .line 89
    :sswitch_5
    const v0, 0x7f0c0189

    .line 90
    goto :goto_0

    .line 92
    :sswitch_6
    const v0, 0x7f0c0328

    .line 93
    goto :goto_0

    .line 95
    :sswitch_7
    const v0, 0x7f0c01c3

    .line 96
    goto :goto_0

    .line 98
    :sswitch_8
    const v0, 0x7f0c018f

    .line 99
    goto :goto_0

    .line 101
    :sswitch_9
    const v0, 0x7f0c01b5

    .line 102
    goto :goto_0

    .line 104
    :sswitch_a
    const v0, 0x7f0c02e9

    goto :goto_0

    .line 72
    :sswitch_data_0
    .sparse-switch
        -0x3ea -> :sswitch_a
        -0x70 -> :sswitch_7
        -0x6f -> :sswitch_1
        -0xa -> :sswitch_6
        -0x9 -> :sswitch_4
        -0x4 -> :sswitch_8
        0x0 -> :sswitch_0
        0xc35c -> :sswitch_5
        0xc363 -> :sswitch_2
        0xc369 -> :sswitch_3
        0xc36e -> :sswitch_9
    .end sparse-switch
.end method
