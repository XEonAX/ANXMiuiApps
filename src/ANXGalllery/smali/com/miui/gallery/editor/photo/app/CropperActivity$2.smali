.class Lcom/miui/gallery/editor/photo/app/CropperActivity$2;
.super Ljava/lang/Object;
.source "CropperActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/CropperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/CropperActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/CropperActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/CropperActivity;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$2;->this$0:Lcom/miui/gallery/editor/photo/app/CropperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Lcom/miui/gallery/editor/photo/app/CropperActivity$PrepareLoader;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$2;->this$0:Lcom/miui/gallery/editor/photo/app/CropperActivity;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$2;->this$0:Lcom/miui/gallery/editor/photo/app/CropperActivity;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/app/CropperActivity;->access$200(Lcom/miui/gallery/editor/photo/app/CropperActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/app/CropperActivity$PrepareLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;)V
    .locals 3
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;

    .prologue
    .line 133
    iget-object v0, p2, Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$2;->this$0:Lcom/miui/gallery/editor/photo/app/CropperActivity;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/CropperActivity;->access$300(Lcom/miui/gallery/editor/photo/app/CropperActivity;)Lcom/edmodo/cropper/CropImageView;

    move-result-object v0

    iget-object v1, p2, Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/edmodo/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$2;->this$0:Lcom/miui/gallery/editor/photo/app/CropperActivity;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/CropperActivity;->access$100(Lcom/miui/gallery/editor/photo/app/CropperActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 144
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p2, Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 138
    const-string v0, "CropperActivity"

    iget-object v1, p2, Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;->mException:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$2;->this$0:Lcom/miui/gallery/editor/photo/app/CropperActivity;

    const v1, 0x7f0c025b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 142
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/CropperActivity$2;->this$0:Lcom/miui/gallery/editor/photo/app/CropperActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/app/CropperActivity;->finish()V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 125
    check-cast p2, Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/CropperActivity$2;->onLoadFinished(Landroid/content/Loader;Lcom/miui/gallery/editor/photo/app/CropperActivity$DecodeResult;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;

    .prologue
    .line 148
    return-void
.end method
