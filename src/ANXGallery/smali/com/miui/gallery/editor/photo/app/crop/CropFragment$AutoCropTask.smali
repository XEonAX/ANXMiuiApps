.class Lcom/miui/gallery/editor/photo/app/crop/CropFragment$AutoCropTask;
.super Landroid/os/AsyncTask;
.source "CropFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/crop/CropFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoCropTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$AutoCropTask;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;Lcom/miui/gallery/editor/photo/app/crop/CropFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment;
    .param p2, "x1"    # Lcom/miui/gallery/editor/photo/app/crop/CropFragment$1;

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$AutoCropTask;-><init>(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 291
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$AutoCropTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 294
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$AutoCropTask;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$2200(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$AutoCropTask;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$2000(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/app/crop/AutoCropData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/editor/photo/app/crop/AutoCropUtils;->getAutoCropData(Landroid/graphics/Bitmap;Lcom/miui/gallery/editor/photo/app/crop/AutoCropData;)V

    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 296
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "result"

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$AutoCropTask;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$2000(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Lcom/miui/gallery/editor/photo/app/crop/AutoCropData;

    move-result-object v2

    iget v2, v2, Lcom/miui/gallery/editor/photo/app/crop/AutoCropData;->rotationResult:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v1, "photo_editor"

    const-string v2, "crop_auto_rotation_result"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 299
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 291
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$AutoCropTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$AutoCropTask;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$AutoCropTask;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    :cond_0
    const-string v0, "CropMenuFragment"

    const-string v1, "AutoCrop fragment isRemoved"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$AutoCropTask;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$200(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/crop/CropFragment$AutoCropTask;->this$0:Lcom/miui/gallery/editor/photo/app/crop/CropFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/crop/CropFragment;->access$400(Lcom/miui/gallery/editor/photo/app/crop/CropFragment;)V

    goto :goto_0
.end method
