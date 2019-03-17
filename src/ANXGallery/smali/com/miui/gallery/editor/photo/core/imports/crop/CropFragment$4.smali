.class Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment$4;
.super Ljava/lang/Object;
.source "CropFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment$4;->this$0:Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 242
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment$4;->this$0:Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->access$200(Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;)Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop;->start()V

    .line 243
    return-void
.end method
