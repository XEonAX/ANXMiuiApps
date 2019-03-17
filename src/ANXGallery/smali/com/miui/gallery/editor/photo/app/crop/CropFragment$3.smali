.class Lcom/miui/gallery/editor/photo/app/crop/CropFragment$3;
.super Ljava/lang/Object;
.source "CropFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/crop/CropFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$3;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 169
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$3;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$800(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/core/RenderFragment;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractCropFragment;->restore()V

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 171
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "photo_editor"

    const-string v2, "crop_restore_click"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 173
    return-void
.end method
