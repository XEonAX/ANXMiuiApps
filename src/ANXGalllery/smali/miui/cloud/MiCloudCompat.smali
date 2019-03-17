.class public Lmiui/cloud/MiCloudCompat;
.super Ljava/lang/Object;
.source "MiCloudCompat.java"


# static fields
.field public static final GALLERY_BASE_URL:Ljava/lang/String;

.field public static final URL_ACOUNT_API_BASE_SECURE:Ljava/lang/String;

.field public static final USE_PREVIEW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/xiaomi_account_preview"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lmiui/cloud/MiCloudCompat;->USE_PREVIEW:Z

    .line 45
    sget-boolean v0, Lmiui/cloud/MiCloudCompat;->USE_PREVIEW:Z

    if-eqz v0, :cond_0

    const-string v0, "http://galleryapi.micloud.preview.n.xiaomi.net"

    :goto_0
    sput-object v0, Lmiui/cloud/MiCloudCompat;->GALLERY_BASE_URL:Ljava/lang/String;

    .line 47
    sget-boolean v0, Lmiui/cloud/MiCloudCompat;->USE_PREVIEW:Z

    if-eqz v0, :cond_1

    const-string v0, "http://api.account.preview.n.xiaomi.net/pass"

    :goto_1
    sput-object v0, Lmiui/cloud/MiCloudCompat;->URL_ACOUNT_API_BASE_SECURE:Ljava/lang/String;

    .line 49
    return-void

    .line 45
    :cond_0
    const-string v0, "http://galleryapi.micloud.xiaomi.net"

    goto :goto_0

    .line 47
    :cond_1
    const-string v0, "https://api.account.xiaomi.com/pass"

    goto :goto_1
.end method

.method public static getQuantityStringWithUnit(J)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v3, 0x44800000    # 1024.0f

    .line 21
    const-string v0, ""

    .line 22
    .local v0, "result":Ljava/lang/String;
    long-to-float v1, p0

    .line 23
    .local v1, "v":F
    const v2, 0x4ccccccd    # 1.07374184E8f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 24
    div-float/2addr v1, v3

    .line 25
    div-float/2addr v1, v3

    .line 26
    div-float/2addr v1, v3

    .line 27
    const-string v2, "%1$.2fGB"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const v2, 0x47cccccd

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 29
    div-float/2addr v1, v3

    .line 30
    div-float/2addr v1, v3

    .line 31
    const-string v2, "%1$.2fMB"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 32
    :cond_1
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    .line 33
    const-string v0, "0.1MB"

    goto :goto_0

    .line 35
    :cond_2
    const-string v0, "0MB"

    goto :goto_0
.end method
