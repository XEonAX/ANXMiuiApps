.class Lcom/miui/gallery/editor/photo/sdk/RenderTask$PrepareTask;
.super Landroid/os/AsyncTask;
.source "RenderTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/sdk/RenderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrepareTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;",
        "Ljava/lang/Void;",
        "Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/sdk/RenderTask;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/editor/photo/sdk/RenderTask;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask$PrepareTask;->this$0:Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/sdk/RenderTask;Lcom/miui/gallery/editor/photo/sdk/RenderTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/sdk/RenderTask;
    .param p2, "x1"    # Lcom/miui/gallery/editor/photo/sdk/RenderTask$1;

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/sdk/RenderTask$PrepareTask;-><init>(Lcom/miui/gallery/editor/photo/sdk/RenderTask;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;)Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;
    .locals 12
    .param p1, "params"    # [Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;

    .prologue
    const/4 v9, 0x0

    .line 169
    const/4 v10, 0x0

    aget-object v3, p1, v10

    .line 171
    .local v3, "info":Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;
    const/4 v8, 0x0

    .line 173
    .local v8, "source":Landroid/graphics/Bitmap;
    iget-object v10, v3, Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;->mOutput:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, "outPut":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v2, "file":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v5, "parent":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 177
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v10

    if-nez v10, :cond_1

    move-object v3, v9

    .line 205
    .end local v3    # "info":Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;
    :cond_0
    :goto_0
    return-object v3

    .line 181
    .restart local v3    # "info":Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;
    :cond_1
    new-instance v1, Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-direct {v1}, Lcom/miui/gallery3d/exif/ExifInterface;-><init>()V

    .line 183
    .local v1, "exif":Lcom/miui/gallery3d/exif/ExifInterface;
    :try_start_0
    iget-object v10, v3, Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;->mSource:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/miui/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/miui/gallery3d/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    :goto_1
    :try_start_1
    iget-object v10, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask$PrepareTask;->this$0:Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    iget-object v11, v3, Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;->mSource:Landroid/net/Uri;

    invoke-virtual {v10, v11, v1}, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->decodeOrigin(Landroid/net/Uri;Lcom/miui/gallery3d/exif/ExifInterface;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v8

    .line 194
    :goto_2
    if-eqz v8, :cond_0

    .line 195
    new-instance v7, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;

    iget-object v10, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask$PrepareTask;->this$0:Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    invoke-static {v10}, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->access$500(Lcom/miui/gallery/editor/photo/sdk/RenderTask;)Landroid/content/Context;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;-><init>(Landroid/content/Context;)V

    .line 196
    .local v7, "renderer":Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;
    invoke-virtual {v7, v8}, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;->render(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 198
    .local v6, "render":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_2

    iget-object v10, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask$PrepareTask;->this$0:Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    iget-object v11, v3, Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;->mOutput:Landroid/net/Uri;

    invoke-static {v10, v6, v11, v1}, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->access$600(Lcom/miui/gallery/editor/photo/sdk/RenderTask;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/miui/gallery3d/exif/ExifInterface;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 199
    iget-object v9, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask$PrepareTask;->this$0:Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    iget-object v10, v3, Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;->mOutput:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->performItemFinish(Landroid/net/Uri;)V

    .line 203
    :goto_3
    invoke-virtual {v7}, Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;->release()V

    goto :goto_0

    .line 184
    .end local v6    # "render":Landroid/graphics/Bitmap;
    .end local v7    # "renderer":Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    const-string v10, "RenderTask"

    invoke-static {v10, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 186
    .end local v0    # "e":Lcom/miui/gallery3d/exif/ExifInvalidFormatException;
    :catch_1
    move-exception v0

    .line 187
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "RenderTask"

    invoke-static {v10, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 191
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 201
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "render":Landroid/graphics/Bitmap;
    .restart local v7    # "renderer":Lcom/miui/gallery/editor/photo/sdk/AutoRenderer;
    :cond_2
    iget-object v10, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask$PrepareTask;->this$0:Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    invoke-virtual {v10, v9}, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->performItemFinish(Landroid/net/Uri;)V

    goto :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 165
    check-cast p1, [Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/sdk/RenderTask$PrepareTask;->doInBackground([Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;)Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;)V
    .locals 4
    .param p1, "info"    # Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 211
    if-nez p1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/RenderTask$PrepareTask;->this$0:Lcom/miui/gallery/editor/photo/sdk/RenderTask;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/sdk/RenderTask;->access$100(Lcom/miui/gallery/editor/photo/sdk/RenderTask;)Lcom/miui/gallery/editor/photo/sdk/RenderTask$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/sdk/RenderTask$Callback;->onTaskError()V

    .line 216
    :goto_0
    return-void

    .line 215
    :cond_0
    const-string v0, "RenderTask"

    const-string v1, "schedule for %s -> %s"

    iget-object v2, p1, Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;->mSource:Landroid/net/Uri;

    iget-object v3, p1, Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;->mOutput:Landroid/net/Uri;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 165
    check-cast p1, Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/sdk/RenderTask$PrepareTask;->onPostExecute(Lcom/miui/gallery/editor/photo/sdk/RenderTask$Parameter;)V

    return-void
.end method
