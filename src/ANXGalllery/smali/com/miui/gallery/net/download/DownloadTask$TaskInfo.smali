.class Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/net/download/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskInfo"
.end annotation


# instance fields
.field mContentLength:J

.field mDigest:Ljava/security/MessageDigest;

.field mDownloadSize:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/net/download/DownloadTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/net/download/DownloadTask$1;

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/miui/gallery/net/download/DownloadTask$TaskInfo;-><init>()V

    return-void
.end method
