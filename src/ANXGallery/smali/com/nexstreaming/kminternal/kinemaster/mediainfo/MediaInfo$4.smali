.class final Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$4;
.super Ljava/lang/Object;
.source "MediaInfo.java"

# interfaces
.implements Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIII[BIII)V
    .locals 10

    .prologue
    .line 1762
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->K()Landroid/util/SparseArray;

    move-result-object v1

    move/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    .line 1763
    const-string v2, "MediaInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sThumbDoneListener onGetThumbDoneListener : tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    if-eqz v1, :cond_0

    .line 1765
    const-string v2, "MediaInfo"

    const-string v3, "sThumbDoneListener NOTIFY TASK!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 1767
    invoke-static/range {v1 .. v9}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->a(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;IIIII[BII)V

    .line 1769
    :cond_0
    return-void
.end method
