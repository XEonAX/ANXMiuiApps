.class Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment$MosaicContext;
.super Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;
.source "MosaicFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MosaicContext"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment$MosaicContext;->this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;

    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;
    .param p2, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment$1;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment$MosaicContext;-><init>(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;)V

    return-void
.end method


# virtual methods
.method protected onPause()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method surfaceCreated()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;->performCreated()V

    .line 150
    return-void
.end method

.method surfaceDestroyed()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/GLFragment$GLContext;->performDestroyed()V

    .line 154
    return-void
.end method
