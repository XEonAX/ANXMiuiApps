.class Lcom/miui/gallery/cloud/UpDownloadManager$ThreadElement;
.super Ljava/lang/Object;
.source "UpDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/UpDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThreadElement"
.end annotation


# instance fields
.field batchSize:I

.field commandMaxSize:I

.field type:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "batchSize"    # I
    .param p3, "commandMaxSize"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/miui/gallery/cloud/UpDownloadManager$ThreadElement;->type:I

    .line 59
    iput p2, p0, Lcom/miui/gallery/cloud/UpDownloadManager$ThreadElement;->batchSize:I

    .line 60
    iput p3, p0, Lcom/miui/gallery/cloud/UpDownloadManager$ThreadElement;->commandMaxSize:I

    .line 61
    return-void
.end method
