.class Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment$1;
.super Ljava/lang/Object;
.source "MosaicFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;->access$100(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment;)Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment$MosaicContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicFragment$MosaicContext;->surfaceCreated()V

    .line 52
    return-void
.end method
