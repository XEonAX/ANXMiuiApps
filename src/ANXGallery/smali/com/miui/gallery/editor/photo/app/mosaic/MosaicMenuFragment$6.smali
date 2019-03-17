.class Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$6;
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
    .line 162
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$6;->this$0:Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 173
    :goto_0
    return-void

    .line 167
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$6;->this$0:Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->access$1000(Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractMosaicFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractMosaicFragment;->doRevoke()V

    goto :goto_0

    .line 170
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment$6;->this$0:Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;->access$1100(Lcom/miui/gallery/editor/photo/app/mosaic/MosaicMenuFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractMosaicFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractMosaicFragment;->doRevert()V

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x7f12013f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
