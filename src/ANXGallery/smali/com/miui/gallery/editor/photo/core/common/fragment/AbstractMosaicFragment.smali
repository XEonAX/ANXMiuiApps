.class public abstract Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractMosaicFragment;
.super Lcom/miui/gallery/editor/photo/core/RenderFragment;
.source "AbstractMosaicFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/RenderFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract canRevert()Z
.end method

.method public abstract canRevoke()Z
.end method

.method public abstract doRevert()V
.end method

.method public abstract doRevoke()V
.end method

.method public abstract setMosaicData(Lcom/miui/gallery/editor/photo/core/common/model/MosaicData;)V
.end method

.method public abstract setMosaicPaintSize(I)V
.end method

.method public abstract setOperationUpdateListener(Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;)V
.end method
