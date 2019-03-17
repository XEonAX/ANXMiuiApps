.class public Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;
.super Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;
.source "BatchAlgorithmResult.java"


# instance fields
.field private final mAlgorithmResults:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJ)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "imageId"    # J

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;-><init>(IJ)V

    .line 15
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;->mAlgorithmResults:Landroid/util/SparseArray;

    .line 16
    return-void
.end method


# virtual methods
.method public add(ILcom/miui/gallery/assistant/manager/result/ImageFeatureResult;)V
    .locals 1
    .param p1, "algFlag"    # I
    .param p2, "result"    # Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;->mAlgorithmResults:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    return-void
.end method

.method public updateImageFeature(Lcom/miui/gallery/assistant/model/ImageFeature;)V
    .locals 3
    .param p1, "feature"    # Lcom/miui/gallery/assistant/model/ImageFeature;

    .prologue
    .line 28
    if-eqz p1, :cond_1

    .line 29
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;->mAlgorithmResults:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 30
    iget-object v2, p0, Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;->mAlgorithmResults:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;

    .line 31
    .local v0, "algorithmResult":Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0, p1}, Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;->updateImageFeature(Lcom/miui/gallery/assistant/model/ImageFeature;)V

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v0    # "algorithmResult":Lcom/miui/gallery/assistant/manager/result/ImageFeatureResult;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
