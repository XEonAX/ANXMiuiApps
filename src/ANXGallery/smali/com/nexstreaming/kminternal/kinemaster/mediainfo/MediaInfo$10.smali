.class Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$10;
.super Ljava/lang/Object;
.source "MediaInfo.java"

# interfaces
.implements Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->a(IIIIII[ILcom/nexstreaming/kminternal/kinemaster/mediainfo/c;)Lcom/nexstreaming/app/common/task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/c;

.field final synthetic b:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;Lcom/nexstreaming/kminternal/kinemaster/mediainfo/c;)V
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$10;->b:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    iput-object p2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$10;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIII[BII)V
    .locals 8

    .prologue
    .line 647
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 648
    const-string v0, "MediaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDetailThumbnails::onThumbDone() not video. mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :goto_0
    return-void

    .line 651
    :cond_0
    mul-int v0, p3, p4

    div-int v0, p5, v0

    mul-int/lit8 v4, v0, 0x8

    .line 653
    add-int/lit8 v5, p7, -0x1

    :try_start_0
    iget-object v7, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$10;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/c;

    move-object v0, p6

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v6, p8

    invoke-static/range {v0 .. v7}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g;->a([BIIIIIILcom/nexstreaming/kminternal/kinemaster/mediainfo/c;)Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 654
    :catch_0
    move-exception v0

    .line 655
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
