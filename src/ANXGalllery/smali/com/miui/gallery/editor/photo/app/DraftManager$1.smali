.class Lcom/miui/gallery/editor/photo/app/DraftManager$1;
.super Landroid/os/AsyncTask;
.source "DraftManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/DraftManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/DraftManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/DraftManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/DraftManager;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$1;->this$0:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 141
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 142
    .local v2, "opt":Landroid/graphics/BitmapFactory$Options;
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$1;->this$0:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/app/DraftManager;->access$000(Lcom/miui/gallery/editor/photo/app/DraftManager;)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 143
    const/4 v0, 0x0

    .line 145
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$1;->this$0:Lcom/miui/gallery/editor/photo/app/DraftManager;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$1;->this$0:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/app/DraftManager;->access$100(Lcom/miui/gallery/editor/photo/app/DraftManager;)Lcom/miui/gallery3d/exif/ExifInterface;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/util/ExifUtil;->getRotationDegrees(Lcom/miui/gallery3d/exif/ExifInterface;)I

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/miui/gallery/editor/photo/app/DraftManager;->access$200(Lcom/miui/gallery/editor/photo/app/DraftManager;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v3, "DraftManager"

    invoke-static {v3, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 148
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v3, "DraftManager"

    invoke-static {v3, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/app/DraftManager$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 157
    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$1;->this$0:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-static {v0, p1}, Lcom/miui/gallery/editor/photo/app/DraftManager;->access$302(Lcom/miui/gallery/editor/photo/app/DraftManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 159
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$1;->this$0:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/DraftManager;->access$400(Lcom/miui/gallery/editor/photo/app/DraftManager;)Lcom/miui/gallery/editor/photo/app/DraftManager$OnPreviewRefreshListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$1;->this$0:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/app/DraftManager;->access$400(Lcom/miui/gallery/editor/photo/app/DraftManager;)Lcom/miui/gallery/editor/photo/app/DraftManager$OnPreviewRefreshListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$1;->this$0:Lcom/miui/gallery/editor/photo/app/DraftManager;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/DraftManager;->access$300(Lcom/miui/gallery/editor/photo/app/DraftManager;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/gallery/editor/photo/app/DraftManager$OnPreviewRefreshListener;->onRefresh(Landroid/graphics/Bitmap;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/DraftManager$1;->this$0:Lcom/miui/gallery/editor/photo/app/DraftManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/app/DraftManager;->access$502(Lcom/miui/gallery/editor/photo/app/DraftManager;Z)Z

    .line 164
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 138
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/app/DraftManager$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
