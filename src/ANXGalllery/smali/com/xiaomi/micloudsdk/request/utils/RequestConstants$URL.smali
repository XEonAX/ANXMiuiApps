.class public Lcom/xiaomi/micloudsdk/request/utils/RequestConstants$URL;
.super Ljava/lang/Object;
.source "RequestConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/request/utils/RequestConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "URL"
.end annotation


# static fields
.field private static final CURRENT_VERSION:Ljava/lang/String;

.field public static final URL_GALLERY_BASE:Ljava/lang/String;

.field public static final URL_MICLOUD_MEMBER_STATUS_QUERY:Ljava/lang/String;

.field private static final URL_MICLOUD_STATUS_BASE:Ljava/lang/String;

.field public static final URL_MICLOUD_STATUS_QUERY:Ljava/lang/String;

.field public static final URL_RELOCATION_BASE:Ljava/lang/String;

.field public static final URL_RICH_MEDIA_BASE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    sget-boolean v0, Lcom/xiaomi/micloudsdk/request/utils/RequestConstants;->USE_PREVIEW:Z

    if-eqz v0, :cond_0

    const-string v0, "http://statusapi.micloud.preview.n.xiaomi.net"

    :goto_0
    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/RequestConstants$URL;->URL_MICLOUD_STATUS_BASE:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/RequestConstants$URL;->URL_MICLOUD_STATUS_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mic/status/v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/RequestConstants$URL;->CURRENT_VERSION:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/RequestConstants$URL;->CURRENT_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/overview"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/RequestConstants$URL;->URL_MICLOUD_STATUS_QUERY:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/micloudsdk/request/utils/RequestConstants$URL;->CURRENT_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/level"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/RequestConstants$URL;->URL_MICLOUD_MEMBER_STATUS_QUERY:Ljava/lang/String;

    .line 41
    sget-boolean v0, Lcom/xiaomi/micloudsdk/request/utils/RequestConstants;->USE_PREVIEW:Z

    if-eqz v0, :cond_1

    const-string v0, "http://micloud.preview.n.xiaomi.net"

    :goto_1
    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/RequestConstants$URL;->URL_GALLERY_BASE:Ljava/lang/String;

    .line 44
    sget-boolean v0, Lcom/xiaomi/micloudsdk/request/utils/RequestConstants;->USE_PREVIEW:Z

    if-eqz v0, :cond_2

    const-string v0, "http://api.micloud.preview.n.xiaomi.net"

    :goto_2
    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/RequestConstants$URL;->URL_RICH_MEDIA_BASE:Ljava/lang/String;

    .line 47
    sget-boolean v0, Lcom/xiaomi/micloudsdk/request/utils/RequestConstants;->USE_PREVIEW:Z

    if-eqz v0, :cond_3

    const-string v0, "http://relocationapi.micloud.preview.n.xiaomi.net"

    :goto_3
    sput-object v0, Lcom/xiaomi/micloudsdk/request/utils/RequestConstants$URL;->URL_RELOCATION_BASE:Ljava/lang/String;

    return-void

    .line 27
    :cond_0
    const-string v0, "http://statusapi.micloud.xiaomi.net"

    goto :goto_0

    .line 41
    :cond_1
    const-string v0, "http://galleryapi.micloud.xiaomi.net"

    goto :goto_1

    .line 44
    :cond_2
    const-string v0, "http://fileapi.micloud.xiaomi.net"

    goto :goto_2

    .line 47
    :cond_3
    const-string v0, "http://relocationapi.micloud.xiaomi.net"

    goto :goto_3
.end method
