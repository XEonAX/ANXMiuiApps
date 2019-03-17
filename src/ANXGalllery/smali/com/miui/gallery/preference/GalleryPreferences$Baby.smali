.class public Lcom/miui/gallery/preference/GalleryPreferences$Baby;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Baby"
.end annotation


# direct methods
.method static synthetic access$100(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 572
    invoke-static {p0}, Lcom/miui/gallery/preference/GalleryPreferences$Baby;->isMinServerTagOfNewPhotoKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static createBabyShortcutKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "babyName"    # Ljava/lang/String;

    .prologue
    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "baby_shortcut_prefix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createServerIdKeyForSaveServerTagOfNewPhoto(J)Ljava/lang/String;
    .locals 2
    .param p0, "albumUniformLocalId"    # J

    .prologue
    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save_server_tag_of_new_image_prefix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBabyAlbumsHasShortcut()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 640
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 641
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/gallery/preference/PreferenceHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 642
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$Baby;->isBabyAlbumHasShortcutKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 643
    const-string v3, ""

    invoke-static {v0, v3}, Lcom/miui/gallery/preference/PreferenceHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 647
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static getHasShowAutoUpdateTipWithoutSelectingAll(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 597
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getLastClickBabyPhotosRecommandationTime(Ljava/lang/String;)J
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 605
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastClickPeopleRecommandationTime(Ljava/lang/String;)J
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 613
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMinServerTagOfNewPhoto(J)Ljava/lang/Long;
    .locals 4
    .param p0, "albumUniformLocalId"    # J

    .prologue
    .line 586
    .line 587
    invoke-static {p0, p1}, Lcom/miui/gallery/preference/GalleryPreferences$Baby;->createServerIdKeyForSaveServerTagOfNewPhoto(J)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 586
    invoke-static {v0, v2, v3}, Lcom/miui/gallery/preference/PreferenceHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private static isBabyAlbumHasShortcutKey(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 631
    if-eqz p0, :cond_0

    const-string v0, "baby_shortcut_prefix"

    .line 632
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMinServerTagOfNewPhotoKey(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 592
    if-eqz p0, :cond_0

    const-string v0, "save_server_tag_of_new_image_prefix"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static recordBabyAlbumHasShortcut(Ljava/lang/String;)V
    .locals 1
    .param p0, "babyName"    # Ljava/lang/String;

    .prologue
    .line 627
    invoke-static {p0}, Lcom/miui/gallery/preference/GalleryPreferences$Baby;->createBabyShortcutKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    return-void
.end method

.method public static removeBabyAlbumShortcut(Ljava/lang/String;)V
    .locals 1
    .param p0, "babyName"    # Ljava/lang/String;

    .prologue
    .line 636
    invoke-static {p0}, Lcom/miui/gallery/preference/GalleryPreferences$Baby;->createBabyShortcutKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/preference/PreferenceHelper;->removeKey(Ljava/lang/String;)V

    .line 637
    return-void
.end method

.method public static saveMinServerTagOfNewPhoto(JLjava/lang/Long;)V
    .locals 4
    .param p0, "albumUniformLocalId"    # J
    .param p2, "servertag"    # Ljava/lang/Long;

    .prologue
    .line 581
    invoke-static {p0, p1}, Lcom/miui/gallery/preference/GalleryPreferences$Baby;->createServerIdKeyForSaveServerTagOfNewPhoto(J)Ljava/lang/String;

    move-result-object v0

    .line 582
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 581
    invoke-static {v0, v2, v3}, Lcom/miui/gallery/preference/PreferenceHelper;->putLong(Ljava/lang/String;J)V

    .line 583
    return-void
.end method

.method public static setHasShowAutoUpdateTipWithoutSelectingAll(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 601
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 602
    return-void
.end method

.method public static setLastClickBabyPhotosRecommandationTime(Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 609
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putLong(Ljava/lang/String;J)V

    .line 610
    return-void
.end method

.method public static setLastClickPeopleRecommandationTime(Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 617
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putLong(Ljava/lang/String;J)V

    .line 618
    return-void
.end method
