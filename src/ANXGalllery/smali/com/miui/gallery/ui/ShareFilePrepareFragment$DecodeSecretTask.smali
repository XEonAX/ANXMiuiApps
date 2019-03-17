.class Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;
.super Landroid/os/AsyncTask;
.source "ShareFilePrepareFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/ShareFilePrepareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecodeSecretTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask$DecodeSecretListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mCacheFolder:Ljava/io/File;

.field private mDecodeSecretListener:Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask$DecodeSecretListener;

.field private mFinalUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mFormat:Ljava/text/SimpleDateFormat;

.field private mKeys:[[B

.field private mSecretIds:[J

.field private mUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/util/List;[[B[JLcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask$DecodeSecretListener;)V
    .locals 3
    .param p1, "cacheFolder"    # Ljava/io/File;
    .param p3, "keys"    # [[B
    .param p4, "secretIds"    # [J
    .param p5, "decodeSecretListener"    # Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask$DecodeSecretListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;[[B[J",
            "Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask$DecodeSecretListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 510
    .local p2, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->mFinalUris:Ljava/util/List;

    .line 508
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd_HH-mm-ss_SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->mFormat:Ljava/text/SimpleDateFormat;

    .line 511
    iput-object p2, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->mUris:Ljava/util/List;

    .line 512
    iput-object p3, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->mKeys:[[B

    .line 513
    iput-object p4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->mSecretIds:[J

    .line 514
    iput-object p1, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->mCacheFolder:Ljava/io/File;

    .line 515
    iput-object p5, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->mDecodeSecretListener:Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask$DecodeSecretListener;

    .line 516
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 500
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 520
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->mFinalUris:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 521
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->mUris:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 522
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 523
    const/4 v4, 0x0

    .line 542
    :goto_1
    return-object v4

    .line 525
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->mCacheFolder:Ljava/io/File;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s.jpg"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->mFormat:Ljava/text/SimpleDateFormat;

    new-instance v10, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v10, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 526
    .local v1, "target":Ljava/io/File;
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->mUris:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 527
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 528
    .local v2, "targetPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->mKeys:[[B

    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    .line 529
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->mKeys:[[B

    aget-object v5, v5, v0

    const/4 v6, 0x0

    invoke-static {v4, v2, v5, v6}, Lcom/miui/gallery/cloud/CloudUtils$SecretAlbumUtils;->decodeFile(Ljava/lang/String;Ljava/lang/String;[BZ)Ljava/lang/String;

    move-result-object v2

    .line 534
    :goto_2
    if-eqz v2, :cond_2

    .line 535
    iget-object v4, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->mFinalUris:Ljava/util/List;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    const-string v4, "ShareFilePrepareFragment"

    const-string v5, "decode %s is success:%s"

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 540
    :goto_3
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->publishProgress([Ljava/lang/Object;)V

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->mSecretIds:[J

    aget-wide v6, v5, v0

    const/4 v5, 0x0

    invoke-static {v4, v2, v6, v7, v5}, Lcom/miui/gallery/cloud/CloudUtils$SecretAlbumUtils;->decodeFile(Ljava/lang/String;Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v2

    .line 532
    const-string v4, "ShareFilePrepareFragment"

    const-string v5, "decode %s and secret key is null"

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 538
    :cond_2
    const-string v4, "ShareFilePrepareFragment"

    const-string v5, "decode %s is failed"

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 542
    .end local v1    # "target":Ljava/io/File;
    .end local v2    # "targetPath":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 500
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 555
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->mDecodeSecretListener:Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask$DecodeSecretListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->mDecodeSecretListener:Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask$DecodeSecretListener;

    iget-object v1, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->mFinalUris:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask$DecodeSecretListener;->onEnd(Ljava/util/List;)V

    .line 558
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 547
    iget-object v1, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->mDecodeSecretListener:Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask$DecodeSecretListener;

    if-eqz v1, :cond_0

    .line 548
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 549
    .local v0, "size":I
    iget-object v1, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->mDecodeSecretListener:Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask$DecodeSecretListener;

    int-to-float v2, v0

    iget-object v3, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->mUris:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask$DecodeSecretListener;->onItemFinish(F)V

    .line 551
    .end local v0    # "size":I
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 500
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/ShareFilePrepareFragment$DecodeSecretTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
