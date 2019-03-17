.class synthetic Lcom/miui/gallery/cloud/download/BatchDownloadUtil$1;
.super Ljava/lang/Object;
.source "BatchDownloadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/download/BatchDownloadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$miui$gallery$sdk$download$DownloadType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    invoke-static {}, Lcom/miui/gallery/sdk/download/DownloadType;->values()[Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/gallery/cloud/download/BatchDownloadUtil$1;->$SwitchMap$com$miui$gallery$sdk$download$DownloadType:[I

    :try_start_0
    sget-object v0, Lcom/miui/gallery/cloud/download/BatchDownloadUtil$1;->$SwitchMap$com$miui$gallery$sdk$download$DownloadType:[I

    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL_BATCH:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual {v1}, Lcom/miui/gallery/sdk/download/DownloadType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/miui/gallery/cloud/download/BatchDownloadUtil$1;->$SwitchMap$com$miui$gallery$sdk$download$DownloadType:[I

    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN_BATCH:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual {v1}, Lcom/miui/gallery/sdk/download/DownloadType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
