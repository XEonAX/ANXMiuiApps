.class Lcom/miui/extraphoto/sdk/ExtraPhotoSDK$DeviceSupportMotionPhoto;
.super Lcom/miui/gallery/util/LazyValue;
.source "ExtraPhotoSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/sdk/ExtraPhotoSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceSupportMotionPhoto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/util/LazyValue",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/miui/gallery/util/LazyValue;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/extraphoto/sdk/ExtraPhotoSDK$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/extraphoto/sdk/ExtraPhotoSDK$1;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK$DeviceSupportMotionPhoto;-><init>()V

    return-void
.end method


# virtual methods
.method protected onInit(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.extraphoto.action.MOTION_PHOTO_REPICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, "target":Landroid/content/Intent;
    const-string v2, "com.miui.extraphoto"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 120
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onInit(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 114
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK$DeviceSupportMotionPhoto;->onInit(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
