.class public Lcom/miui/gallery/util/baby/FindFace2CreateBabyAlbum;
.super Ljava/lang/Object;
.source "FindFace2CreateBabyAlbum.java"


# direct methods
.method public static createBabyAlbumAndSaveBabyInfo(Ljava/lang/String;Lcom/miui/gallery/cloud/baby/BabyInfo;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .param p0, "babyName"    # Ljava/lang/String;
    .param p1, "babyInfo"    # Lcom/miui/gallery/cloud/baby/BabyInfo;
    .param p2, "faceMediaSet"    # Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "faceId"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-virtual {p2, p0, p1, p3}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->createBabyAlbumAndAddItems(Ljava/lang/String;Lcom/miui/gallery/cloud/baby/BabyInfo;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "localId":Ljava/lang/String;
    new-instance v1, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;-><init>(JZLjava/lang/String;)V

    .line 138
    .local v1, "thumbnailInfo":Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;
    invoke-virtual {v1, p4}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->setFaceId(Ljava/lang/String;)Z

    .line 140
    invoke-virtual {p2}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getBucketId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 139
    invoke-static {p1, v2, v3, v0, v1}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->saveInfo2Db(Lcom/miui/gallery/cloud/baby/BabyInfo;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;)V

    .line 143
    invoke-static {p0}, Lcom/miui/gallery/preference/GalleryPreferences$Baby;->recordBabyAlbumHasShortcut(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static gotoBabyAlbumInfoPage(Landroid/app/Activity;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;Lcom/miui/gallery/cloud/baby/BabyInfo;JLandroid/graphics/Bitmap;Z)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "thumbnailInfo"    # Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;
    .param p2, "babyInfo"    # Lcom/miui/gallery/cloud/baby/BabyInfo;
    .param p3, "babyAlbumLocalId"    # J
    .param p5, "faceBitmap"    # Landroid/graphics/Bitmap;
    .param p6, "isSharer"    # Z

    .prologue
    .line 110
    new-instance v1, Landroid/content/Intent;

    if-eqz p6, :cond_2

    const-class v2, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;

    :goto_0
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "baby_info"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 114
    const-string v2, "babyAlbumLocalId"

    invoke-virtual {v0, v2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 116
    if-eqz p1, :cond_0

    .line 117
    const-string/jumbo v2, "thumbnail_info_of_baby"

    .line 118
    invoke-virtual {p1}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    :cond_0
    if-eqz p5, :cond_1

    .line 121
    const-string v2, "face_bitmap"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 123
    :cond_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 124
    const/16 v2, 0xc

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 126
    return-void

    .line 110
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const-class v2, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    goto :goto_0
.end method

.method public static gotoFillBabyAlbumInfo(Landroid/app/Activity;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Ljava/lang/String;)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mediaSet"    # Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .param p2, "coverFaceServerID"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v4, Landroid/content/Intent;

    const-class v8, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    invoke-direct {v4, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v4, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v1, "bundle":Landroid/os/Bundle;
    move-object v6, p1

    .line 83
    .local v6, "set":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    const-string v8, "faceAlbumLocalId"

    .line 84
    invoke-virtual {v6}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getBucketId()J

    move-result-wide v10

    .line 83
    invoke-virtual {v1, v8, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 85
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 86
    const-string v8, "faceAlbumCoverFaceServerId"

    invoke-virtual {v1, v8, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    const-string v8, "faceAlbumServerId"

    .line 92
    invoke-virtual {v6}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getServerId()Ljava/lang/String;

    move-result-object v9

    .line 91
    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v8, "name"

    invoke-virtual {v6}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->getCurrentYearMonthDay(J)[I

    move-result-object v3

    .line 96
    .local v3, "days":[I
    const/4 v8, 0x0

    aget v7, v3, v8

    .line 97
    .local v7, "year":I
    const/4 v8, 0x1

    aget v5, v3, v8

    .line 98
    .local v5, "month":I
    const/4 v8, 0x2

    aget v2, v3, v8

    .line 99
    .local v2, "day":I
    invoke-static {v7, v5, v2}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->combine2Birthday(III)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "birthday":Ljava/lang/String;
    const-string v8, "birthday"

    invoke-virtual {v1, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 103
    const/16 v8, 0xd

    invoke-virtual {p0, v4, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 105
    return-void
.end method
