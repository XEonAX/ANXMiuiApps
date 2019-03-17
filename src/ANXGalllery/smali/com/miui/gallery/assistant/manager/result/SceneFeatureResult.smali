.class public Lcom/miui/gallery/assistant/manager/result/SceneFeatureResult;
.super Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;
.source "SceneFeatureResult.java"


# instance fields
.field private mSceneResult:Lcom/miui/gallery/assistant/jni/filter/SceneResult;


# direct methods
.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "imageId"    # J

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;-><init>(IJ)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/assistant/jni/filter/SceneResult;J)V
    .locals 2
    .param p1, "sceneResult"    # Lcom/miui/gallery/assistant/jni/filter/SceneResult;
    .param p2, "imageId"    # J

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p3}, Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;-><init>(IJ)V

    .line 13
    iput-object p1, p0, Lcom/miui/gallery/assistant/manager/result/SceneFeatureResult;->mSceneResult:Lcom/miui/gallery/assistant/jni/filter/SceneResult;

    .line 14
    return-void
.end method


# virtual methods
.method public getSceneResult()Lcom/miui/gallery/assistant/jni/filter/SceneResult;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/result/SceneFeatureResult;->mSceneResult:Lcom/miui/gallery/assistant/jni/filter/SceneResult;

    return-object v0
.end method

.method public updateImageFeature(Lcom/miui/gallery/assistant/model/ImageFeature;)V
    .locals 1
    .param p1, "feature"    # Lcom/miui/gallery/assistant/model/ImageFeature;

    .prologue
    .line 22
    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/manager/result/SceneFeatureResult;->getSceneResult()Lcom/miui/gallery/assistant/jni/filter/SceneResult;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/gallery/assistant/model/ImageFeature;->setSceneResult(Lcom/miui/gallery/assistant/jni/filter/SceneResult;)V

    .line 25
    :cond_0
    return-void
.end method
