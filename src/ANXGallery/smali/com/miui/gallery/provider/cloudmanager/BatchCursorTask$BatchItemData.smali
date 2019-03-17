.class Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;
.super Ljava/lang/Object;
.source "BatchCursorTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BatchItemData"
.end annotation


# instance fields
.field cursorIndex:I

.field result:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;->cursorIndex:I

    .line 258
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/gallery/provider/cloudmanager/BatchCursorTask$BatchItemData;->result:J

    return-void
.end method
