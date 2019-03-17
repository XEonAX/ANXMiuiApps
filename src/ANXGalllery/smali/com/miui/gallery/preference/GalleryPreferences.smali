.class public Lcom/miui/gallery/preference/GalleryPreferences;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/preference/GalleryPreferences$HomePage;,
        Lcom/miui/gallery/preference/GalleryPreferences$Assistant;,
        Lcom/miui/gallery/preference/GalleryPreferences$SmartVideoGuide;,
        Lcom/miui/gallery/preference/GalleryPreferences$SettingsSync;,
        Lcom/miui/gallery/preference/GalleryPreferences$PhotoPrint;,
        Lcom/miui/gallery/preference/GalleryPreferences$PhotoSlim;,
        Lcom/miui/gallery/preference/GalleryPreferences$Favorites;,
        Lcom/miui/gallery/preference/GalleryPreferences$UUID;,
        Lcom/miui/gallery/preference/GalleryPreferences$FeatureRedDot;,
        Lcom/miui/gallery/preference/GalleryPreferences$TopBar;,
        Lcom/miui/gallery/preference/GalleryPreferences$FileDownload;,
        Lcom/miui/gallery/preference/GalleryPreferences$CloudControl;,
        Lcom/miui/gallery/preference/GalleryPreferences$LocationManager;,
        Lcom/miui/gallery/preference/GalleryPreferences$PhotoEditor;,
        Lcom/miui/gallery/preference/GalleryPreferences$HiddenAlbum;,
        Lcom/miui/gallery/preference/GalleryPreferences$SlideShow;,
        Lcom/miui/gallery/preference/GalleryPreferences$DataBase;,
        Lcom/miui/gallery/preference/GalleryPreferences$LocalMode;,
        Lcom/miui/gallery/preference/GalleryPreferences$MediaScanner;,
        Lcom/miui/gallery/preference/GalleryPreferences$Delete;,
        Lcom/miui/gallery/preference/GalleryPreferences$Secret;,
        Lcom/miui/gallery/preference/GalleryPreferences$Search;,
        Lcom/miui/gallery/preference/GalleryPreferences$Face;,
        Lcom/miui/gallery/preference/GalleryPreferences$Baby;,
        Lcom/miui/gallery/preference/GalleryPreferences$CloudGuide;,
        Lcom/miui/gallery/preference/GalleryPreferences$Sync;,
        Lcom/miui/gallery/preference/GalleryPreferences$CTA;,
        Lcom/miui/gallery/preference/GalleryPreferences$SampleStatistic;,
        Lcom/miui/gallery/preference/GalleryPreferences$Album;,
        Lcom/miui/gallery/preference/GalleryPreferences$PrefKeys;
    }
.end annotation


# direct methods
.method public static getAutoBackupPrefKeys()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 212
    const-class v4, Lcom/miui/gallery/preference/GalleryPreferences$PrefKeys;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 213
    .local v2, "fields":[Ljava/lang/reflect/Field;
    if-eqz v2, :cond_1

    .line 214
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 216
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v2, v4

    .line 217
    .local v1, "field":Ljava/lang/reflect/Field;
    const-class v6, Lcom/miui/gallery/preference/AutoBackup;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 218
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 216
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 221
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "GalleryPreferences"

    invoke-static {v4, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    return-object v3

    .line 223
    .restart local v3    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "GalleryPreferences"

    invoke-static {v4, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static sRemoveCloudSettings()V
    .locals 4

    .prologue
    .line 522
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Face;->remove()V

    .line 523
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->remove()V

    .line 524
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CloudGuide;->access$000()V

    .line 525
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$TopBar;->remove()V

    .line 526
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Search;->remove()V

    .line 527
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CloudControl;->remove()V

    .line 528
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$SettingsSync;->remove()V

    .line 529
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$LocationManager;->remove()V

    .line 531
    invoke-static {}, Lcom/miui/gallery/preference/PreferenceHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 532
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
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

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 533
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/gallery/preference/GalleryPreferences$Baby;->access$100(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 534
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 537
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 539
    invoke-static {}, Lcom/miui/gallery/preference/MemoryPreferenceHelper;->clear()V

    .line 540
    return-void
.end method
