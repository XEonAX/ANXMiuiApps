.class public Lcom/miui/gallery/provider/ProcessingMedia;
.super Ljava/lang/Object;
.source "ProcessingMedia.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;,
        Lcom/miui/gallery/provider/ProcessingMedia$Factory;
    }
.end annotation


# instance fields
.field private final mMediaStoreId:J

.field private final mMediaType:I

.field private final mPath:Ljava/lang/String;

.field private final mProcessingMetadata:Lcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;

.field private final mSpecialTypeId:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;JLjava/lang/String;Ljava/lang/String;ILcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mediaStoreId"    # J
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "specialTypeId"    # Ljava/lang/String;
    .param p6, "mediaType"    # I
    .param p7, "processingMetadata"    # Lcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/miui/gallery/provider/ProcessingMedia;->mUri:Landroid/net/Uri;

    .line 25
    iput-wide p2, p0, Lcom/miui/gallery/provider/ProcessingMedia;->mMediaStoreId:J

    .line 26
    iput-object p4, p0, Lcom/miui/gallery/provider/ProcessingMedia;->mPath:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/miui/gallery/provider/ProcessingMedia;->mSpecialTypeId:Ljava/lang/String;

    .line 28
    iput p6, p0, Lcom/miui/gallery/provider/ProcessingMedia;->mMediaType:I

    .line 29
    iput-object p7, p0, Lcom/miui/gallery/provider/ProcessingMedia;->mProcessingMetadata:Lcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;JLjava/lang/String;Ljava/lang/String;ILcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;Lcom/miui/gallery/provider/ProcessingMedia$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/Uri;
    .param p2, "x1"    # J
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # Ljava/lang/String;
    .param p6, "x4"    # I
    .param p7, "x5"    # Lcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;
    .param p8, "x6"    # Lcom/miui/gallery/provider/ProcessingMedia$1;

    .prologue
    .line 12
    invoke-direct/range {p0 .. p7}, Lcom/miui/gallery/provider/ProcessingMedia;-><init>(Landroid/net/Uri;JLjava/lang/String;Ljava/lang/String;ILcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;)V

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/provider/ProcessingMedia;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessingMetadata()Lcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/provider/ProcessingMedia;->mProcessingMetadata:Lcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/provider/ProcessingMedia;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProcessingMedia{mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/ProcessingMedia;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMediaStoreId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/provider/ProcessingMedia;->mMediaStoreId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/ProcessingMedia;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSpecialTypeId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/ProcessingMedia;->mSpecialTypeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMediaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/provider/ProcessingMedia;->mMediaType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProcessingMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/ProcessingMedia;->mProcessingMetadata:Lcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
