.class public abstract Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;
.super Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;
.source "ImageFeatureResult.java"


# instance fields
.field private final mImageId:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "imageId"    # J

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/miui/gallery/assistant/manager/result/AlgorithmResult;-><init>(I)V

    .line 11
    iput-wide p2, p0, Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;->mImageId:J

    .line 12
    return-void
.end method


# virtual methods
.method public abstract updateImageFeature(Lcom/miui/gallery/assistant/model/ImageFeature;)V
.end method
