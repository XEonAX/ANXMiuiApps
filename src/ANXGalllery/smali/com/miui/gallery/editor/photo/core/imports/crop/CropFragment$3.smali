.class Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment$3;
.super Ljava/lang/Object;
.source "CropFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/core/imports/obsoletes/Crop$OnCropChangedListener;


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
    .line 227
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeRotationState(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 235
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->changeRotationState(Z)V

    .line 236
    return-void
.end method

.method public onChanged()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment$3;->this$0:Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/crop/CropFragment;->onChanged()V

    .line 231
    return-void
.end method
