.class public Lcom/miui/gallery/util/GalleryStatHelper;
.super Ljava/lang/Object;
.source "GalleryStatHelper.java"


# static fields
.field private static sInitialized:Z


# direct methods
.method public static addHttpEvent(Ljava/lang/String;JJI)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "timeCost"    # J
    .param p3, "netFlow"    # J
    .param p5, "responseCode"    # I

    .prologue
    .line 272
    invoke-static {}, Lcom/miui/gallery/util/GalleryStatHelper;->isUsable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 275
    :cond_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;JJI)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->addHttpEvent(Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;)V

    goto :goto_0
.end method

.method public static addHttpEvent(Ljava/lang/String;JJILjava/lang/String;)V
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "timeCost"    # J
    .param p3, "netFlow"    # J
    .param p5, "responseCode"    # I
    .param p6, "exceptionName"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-static {}, Lcom/miui/gallery/util/GalleryStatHelper;->isUsable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 264
    :cond_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->addHttpEvent(Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;)V

    goto :goto_0
.end method

.method public static addHttpEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "exceptionName"    # Ljava/lang/String;

    .prologue
    .line 240
    invoke-static {}, Lcom/miui/gallery/util/GalleryStatHelper;->isUsable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 243
    :cond_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->addHttpEvent(Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;)V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    sget-boolean v1, Lcom/miui/gallery/util/GalleryStatHelper;->sInitialized:Z

    if-eqz v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-static {}, Lcom/miui/gallery/preference/BaseGalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const/4 v1, 0x1

    sput-boolean v1, Lcom/miui/gallery/util/GalleryStatHelper;->sInitialized:Z

    .line 88
    :try_start_0
    const-string v1, "2882303761517492012"

    const-string v2, "5601749292012"

    const-string v3, "com.miui.gallery"

    invoke-static {p0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v1, 0x0

    const-wide/32 v2, 0x493e0

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->setUploadPolicy(IJ)V

    .line 90
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->enableAutoRecord()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static isUsable()Z
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/miui/gallery/util/GalleryStatHelper;->sInitialized:Z

    return v0
.end method

.method public static recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {}, Lcom/miui/gallery/util/GalleryStatHelper;->isUsable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 113
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/gallery/util/GalleryStatHelper;->isUsable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 135
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 216
    invoke-static {}, Lcom/miui/gallery/util/GalleryStatHelper;->isUsable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    :goto_0
    return-void

    .line 220
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static recordPageEnd(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {}, Lcom/miui/gallery/util/GalleryStatHelper;->isUsable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 169
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-static {}, Lcom/miui/gallery/util/GalleryStatHelper;->isUsable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 186
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-static {}, Lcom/miui/gallery/util/GalleryStatHelper;->isUsable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    :goto_0
    return-void

    .line 203
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
