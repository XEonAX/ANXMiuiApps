.class public Lcom/miui/extraphoto/sdk/ExtraPhotoSDK;
.super Ljava/lang/Object;
.source "ExtraPhotoSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/extraphoto/sdk/ExtraPhotoSDK$DeviceSupportMotionPhoto;,
        Lcom/miui/extraphoto/sdk/ExtraPhotoSDK$DeviceSupportRefocus;
    }
.end annotation


# static fields
.field private static final DEVICE_SUPPORT_MOTION_PHOTO:Lcom/miui/extraphoto/sdk/ExtraPhotoSDK$DeviceSupportMotionPhoto;

.field private static final DEVICE_SUPPORT_REFOCUS:Lcom/miui/extraphoto/sdk/ExtraPhotoSDK$DeviceSupportRefocus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    new-instance v0, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK$DeviceSupportRefocus;

    invoke-direct {v0, v1}, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK$DeviceSupportRefocus;-><init>(Lcom/miui/extraphoto/sdk/ExtraPhotoSDK$1;)V

    sput-object v0, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK;->DEVICE_SUPPORT_REFOCUS:Lcom/miui/extraphoto/sdk/ExtraPhotoSDK$DeviceSupportRefocus;

    .line 34
    new-instance v0, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK$DeviceSupportMotionPhoto;

    invoke-direct {v0, v1}, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK$DeviceSupportMotionPhoto;-><init>(Lcom/miui/extraphoto/sdk/ExtraPhotoSDK$1;)V

    sput-object v0, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK;->DEVICE_SUPPORT_MOTION_PHOTO:Lcom/miui/extraphoto/sdk/ExtraPhotoSDK$DeviceSupportMotionPhoto;

    return-void
.end method

.method private static getType(J)Ljava/lang/String;
    .locals 6
    .param p0, "flag"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "type":Ljava/lang/String;
    const-wide/16 v2, 0x20

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 89
    const-string v0, "motion"

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 90
    :cond_1
    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 91
    const-string v0, "refocus"

    goto :goto_0
.end method

.method public static isDeviceSupportMotionPhoto(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isInternational()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK;->DEVICE_SUPPORT_MOTION_PHOTO:Lcom/miui/extraphoto/sdk/ExtraPhotoSDK$DeviceSupportMotionPhoto;

    invoke-virtual {v0, p0}, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK$DeviceSupportMotionPhoto;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDeviceSupportRefocus(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    sget-object v0, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK;->DEVICE_SUPPORT_REFOCUS:Lcom/miui/extraphoto/sdk/ExtraPhotoSDK$DeviceSupportRefocus;

    invoke-virtual {v0, p0}, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK$DeviceSupportRefocus;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static sendDeletePhotoStatic(J)V
    .locals 2
    .param p0, "flag"    # J

    .prologue
    .line 63
    const-string v0, "extra_photo_delete"

    invoke-static {v0, p0, p1}, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK;->sendTypedPhotoStatic(Ljava/lang/String;J)V

    .line 64
    return-void
.end method

.method public static sendEnterStatic()V
    .locals 2

    .prologue
    .line 59
    const-string v0, "photo_extra"

    const-string v1, "refocus_enter"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static sendExposureStatic()V
    .locals 2

    .prologue
    .line 55
    const-string v0, "photo_extra"

    const-string v1, "refocus_exposure"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static sendNewPhotoStatic(J)V
    .locals 2
    .param p0, "flag"    # J

    .prologue
    .line 71
    const-string v0, "extra_photo_new"

    invoke-static {v0, p0, p1}, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK;->sendTypedPhotoStatic(Ljava/lang/String;J)V

    .line 72
    return-void
.end method

.method public static sendResultStatic(Landroid/content/Intent;)V
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 38
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 39
    const-string v3, "save_type"

    const-string v4, "NONE"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {v1}, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK;->sendResultStatic(Ljava/util/Map;)V

    .line 48
    :goto_0
    return-void

    .line 43
    :cond_0
    const-string v3, "save_type"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "type":Ljava/lang/String;
    const-string v3, "save_explain"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "explain":Ljava/lang/String;
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v3, "save_type"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {v1}, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK;->sendResultStatic(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private static sendResultStatic(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "photo_extra"

    const-string v1, "refocus_save"

    invoke-static {v0, v1, p0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 52
    return-void
.end method

.method public static sendSharePhotoStatic(J)V
    .locals 2
    .param p0, "flag"    # J

    .prologue
    .line 67
    const-string v0, "extra_photo_share"

    invoke-static {v0, p0, p1}, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK;->sendTypedPhotoStatic(Ljava/lang/String;J)V

    .line 68
    return-void
.end method

.method private static sendTypedPhotoStatic(Ljava/lang/String;J)V
    .locals 5
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "flag"    # J

    .prologue
    .line 75
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-static {p1, p2}, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK;->getType(J)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "type":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v2, "photo_extra"

    invoke-static {v2, p0, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
