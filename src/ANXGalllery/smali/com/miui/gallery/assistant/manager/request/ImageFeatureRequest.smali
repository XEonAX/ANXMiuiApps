.class public abstract Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;
.super Lcom/miui/gallery/assistant/manager/AlgorithmRequest;
.source "ImageFeatureRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;",
        ">",
        "Lcom/miui/gallery/assistant/manager/AlgorithmRequest",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final mImageDateTime:J

.field protected final mImageId:J

.field protected final mSha1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;J)V
    .locals 0
    .param p1, "priority"    # Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;
    .param p2, "imageId"    # J
    .param p4, "sha1"    # Ljava/lang/String;
    .param p5, "imageDateTime"    # J

    .prologue
    .line 23
    .local p0, "this":Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;, "Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest<TT;>;"
    invoke-direct {p0, p1}, Lcom/miui/gallery/assistant/manager/AlgorithmRequest;-><init>(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;)V

    .line 24
    iput-wide p2, p0, Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;->mImageId:J

    .line 25
    iput-object p4, p0, Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;->mSha1:Ljava/lang/String;

    .line 26
    iput-wide p5, p0, Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;->mImageDateTime:J

    .line 27
    return-void
.end method


# virtual methods
.method protected bridge synthetic onSaveResult(Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;)V
    .locals 0

    .prologue
    .line 15
    .local p0, "this":Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;, "Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest<TT;>;"
    check-cast p1, Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;->onSaveResult(Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;)V

    return-void
.end method

.method protected onSaveResult(Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;, "Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest<TT;>;"
    .local p1, "algorithmResult":Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;, "TT;"
    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;->mImageId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;->mSha1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;->updateFeatureToDb(Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;)Z

    .line 58
    :cond_0
    return-void
.end method

.method protected bridge synthetic process()Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;
    .locals 1

    .prologue
    .line 15
    .local p0, "this":Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;, "Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest<TT;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;->process()Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;

    move-result-object v0

    return-object v0
.end method

.method protected process()Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;, "Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateFeatureToDb(Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;, "Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest<TT;>;"
    .local p1, "algorithmResult":Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;, "TT;"
    const/4 v9, 0x0

    .line 31
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v6

    .line 32
    .local v6, "em":Lcom/miui/gallery/dao/GalleryEntityManager;
    const-string v1, "%s=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "imageId"

    aput-object v3, v2, v9

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;->mImageId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 33
    .local v8, "selection":Ljava/lang/String;
    const-class v1, Lcom/miui/gallery/assistant/model/ImageFeature;

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v8, v2}, Lcom/miui/gallery/dao/GalleryEntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 34
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/ImageFeature;>;"
    const/4 v0, 0x0

    .line 35
    .local v0, "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    check-cast v0, Lcom/miui/gallery/assistant/model/ImageFeature;

    .line 37
    .restart local v0    # "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;->updateImageFeature(Lcom/miui/gallery/assistant/model/ImageFeature;Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;)V

    .line 38
    iget-object v1, p0, Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "update image %d feature,flag:%d"

    invoke-virtual {v0}, Lcom/miui/gallery/assistant/model/ImageFeature;->getImageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/gallery/assistant/model/ImageFeature;->getFeatureFlag()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    invoke-virtual {v6, v0}, Lcom/miui/gallery/dao/GalleryEntityManager;->update(Lcom/miui/gallery/dao/base/Entity;)Z

    move-result v1

    .line 44
    :goto_0
    return v1

    .line 41
    :cond_0
    new-instance v0, Lcom/miui/gallery/assistant/model/ImageFeature;

    .end local v0    # "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    iget-wide v1, p0, Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;->mImageId:J

    iget-object v3, p0, Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;->mSha1:Ljava/lang/String;

    iget-wide v4, p0, Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;->mImageDateTime:J

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/assistant/model/ImageFeature;-><init>(JLjava/lang/String;J)V

    .line 42
    .restart local v0    # "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;->updateImageFeature(Lcom/miui/gallery/assistant/model/ImageFeature;Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;)V

    .line 43
    iget-object v1, p0, Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;->TAG:Ljava/lang/String;

    const-string v2, "insert image %d feature,flag:%d"

    invoke-virtual {v0}, Lcom/miui/gallery/assistant/model/ImageFeature;->getImageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/gallery/assistant/model/ImageFeature;->getFeatureFlag()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v6, v0}, Lcom/miui/gallery/dao/GalleryEntityManager;->insert(Lcom/miui/gallery/dao/base/Entity;)Z

    move-result v1

    goto :goto_0
.end method

.method protected updateImageFeature(Lcom/miui/gallery/assistant/model/ImageFeature;Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;)V
    .locals 1
    .param p1, "feature"    # Lcom/miui/gallery/assistant/model/ImageFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/assistant/model/ImageFeature;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest;, "Lcom/miui/gallery/assistant/manager/request/ImageFeatureRequest<TT;>;"
    .local p2, "algorithmResult":Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;, "TT;"
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 62
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/miui/gallery/assistant/model/ImageFeature;->setVersion(I)V

    .line 63
    invoke-virtual {p2, p1}, Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;->updateImageFeature(Lcom/miui/gallery/assistant/model/ImageFeature;)V

    .line 65
    :cond_0
    return-void
.end method
