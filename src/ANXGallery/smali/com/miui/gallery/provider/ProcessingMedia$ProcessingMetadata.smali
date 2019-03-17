.class public final Lcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;
.super Ljava/lang/Object;
.source "ProcessingMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/ProcessingMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessingMetadata"
.end annotation


# instance fields
.field private final mProgressPercentage:I

.field private final mProgressStatus:Lcom/miui/gallery/photosapi/ProcessingMetadataQuery$ProgressStatus;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photosapi/ProcessingMetadataQuery$ProgressStatus;I)V
    .locals 0
    .param p1, "progressStatus"    # Lcom/miui/gallery/photosapi/ProcessingMetadataQuery$ProgressStatus;
    .param p2, "progressPercentage"    # I

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;->mProgressStatus:Lcom/miui/gallery/photosapi/ProcessingMetadataQuery$ProgressStatus;

    .line 119
    iput p2, p0, Lcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;->mProgressPercentage:I

    .line 120
    return-void
.end method


# virtual methods
.method public getProgressPercentage()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;->mProgressPercentage:I

    return v0
.end method

.method public getProgressStatus()Lcom/miui/gallery/photosapi/ProcessingMetadataQuery$ProgressStatus;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;->mProgressStatus:Lcom/miui/gallery/photosapi/ProcessingMetadataQuery$ProgressStatus;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProcessingMetadata{mProgressStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;->mProgressStatus:Lcom/miui/gallery/photosapi/ProcessingMetadataQuery$ProgressStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProgressPercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;->mProgressPercentage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
