.class Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$3;
.super Ljava/lang/Object;
.source "MosaicMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$3;->this$0:Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$3;->this$0:Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->access$000(Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 129
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$3;->this$0:Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->access$200(Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;)Lcom/miui/gallery/editor/photo/app/mosaic/MosaicAdapter;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicAdapter;->setSelection(I)V

    .line 130
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$3;->this$0:Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->access$400(Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractMosaicFragment;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$3;->this$0:Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->access$300(Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;)Lcom/miui/gallery/editor/photo/core/common/model/MosaicData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractMosaicFragment;->setMosaicData(Lcom/miui/gallery/editor/photo/core/common/model/MosaicData;)V

    .line 131
    return-void
.end method
