.class public Lcom/miui/gallery/assistant/manager/result/ClusterFeatureResult;
.super Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;
.source "ClusterFeatureResult.java"


# instance fields
.field private mClusterFeature:[F


# direct methods
.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "imageId"    # J

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;-><init>(IJ)V

    .line 17
    return-void
.end method

.method public constructor <init>([FJ)V
    .locals 2
    .param p1, "clusterFeature"    # [F
    .param p2, "imageId"    # J

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p3}, Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;-><init>(IJ)V

    .line 12
    iput-object p1, p0, Lcom/miui/gallery/assistant/manager/result/ClusterFeatureResult;->mClusterFeature:[F

    .line 13
    return-void
.end method


# virtual methods
.method public getClusterFeature()[F
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/result/ClusterFeatureResult;->mClusterFeature:[F

    return-object v0
.end method

.method public updateImageFeature(Lcom/miui/gallery/assistant/model/ImageFeature;)V
    .locals 1
    .param p1, "feature"    # Lcom/miui/gallery/assistant/model/ImageFeature;

    .prologue
    .line 21
    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/manager/result/ClusterFeatureResult;->getClusterFeature()[F

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/gallery/assistant/model/ImageFeature;->setClusterFeature([F)V

    .line 24
    :cond_0
    return-void
.end method
