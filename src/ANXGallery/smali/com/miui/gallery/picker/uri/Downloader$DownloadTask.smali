.class public Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/uri/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadTask"
.end annotation


# instance fields
.field public mPosition:I

.field public mSize:I

.field public mType:Lcom/miui/gallery/sdk/download/DownloadType;

.field public mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;II)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "size"    # I
    .param p4, "position"    # I

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p1, p0, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;->mUri:Landroid/net/Uri;

    .line 227
    iput-object p2, p0, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 228
    iput p3, p0, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;->mSize:I

    .line 229
    iput p4, p0, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;->mPosition:I

    .line 230
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadTask{mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPosition ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/picker/uri/Downloader$DownloadTask;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
