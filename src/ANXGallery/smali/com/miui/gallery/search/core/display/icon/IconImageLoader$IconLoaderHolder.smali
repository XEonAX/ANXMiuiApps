.class Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;
.super Ljava/lang/Object;
.source "IconImageLoader.java"

# interfaces
.implements Lcom/miui/gallery/search/core/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/core/display/icon/IconImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconLoaderHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/search/core/Consumer",
        "<",
        "Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mImageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field private mImageType:Lcom/miui/gallery/sdk/download/DownloadType;

.field private mResult:Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;

.field private mTask:Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;

.field private mUri:Landroid/net/Uri;

.field private mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method public static getImageHolder(Landroid/widget/ImageView;)Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;
    .locals 2
    .param p0, "image"    # Landroid/widget/ImageView;

    .prologue
    const v1, 0x7f120020

    .line 199
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 200
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-direct {v0}, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;-><init>()V

    .line 202
    .local v0, "obj":Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;
    invoke-virtual {p0, v1, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 204
    .end local v0    # "obj":Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;
    :cond_0
    check-cast v0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;

    return-object v0
.end method


# virtual methods
.method public consume(Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;)Z
    .locals 4
    .param p1, "result"    # Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;

    .prologue
    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->mTask:Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;

    .line 145
    if-nez p1, :cond_1

    .line 146
    iput-object p1, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->mResult:Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;

    .line 152
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->displayResult()V

    .line 153
    const/4 v0, 0x1

    return v0

    .line 147
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;->iconUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "IconImageLoader"

    const-string v1, "Load task finished for uri %s, result is valid %s"

    iget-object v2, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->mUri:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;->isValid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    iput-object p1, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->mResult:Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;

    goto :goto_0
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 128
    check-cast p1, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->consume(Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;)Z

    move-result v0

    return v0
.end method

.method public displayResult()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->mResult:Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->mResult:Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;

    iget-object v0, v0, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;->localFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->mResult:Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;

    iget-object v1, v1, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;->downloadUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->mImageType:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual {p0}, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iget-object v5, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->mImageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iget-object v6, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->mResult:Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;

    iget-object v6, v6, Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;->facePositionRect:Landroid/graphics/RectF;

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/BindImageHelper;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-virtual {p0}, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    iget-object v3, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iget-object v4, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->mImageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    goto :goto_0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->mViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->mUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/search/core/display/icon/IconImageLoader;->access$000(Landroid/net/Uri;Landroid/widget/ImageView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTask()Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->mTask:Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;

    return-object v0
.end method

.method public hasResult()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->mResult:Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(Landroid/widget/ImageView;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "imageType"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p4, "displayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p5, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .prologue
    .line 169
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 170
    iput-object p2, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->mUri:Landroid/net/Uri;

    .line 171
    iput-object p4, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 172
    iput-object p5, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->mImageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 173
    iput-object p3, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->mImageType:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->mResult:Lcom/miui/gallery/search/core/display/icon/IconLoaderTask$IconLoaderResult;

    .line 176
    return-void
.end method

.method public setTask(Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;)V
    .locals 0
    .param p1, "task"    # Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/miui/gallery/search/core/display/icon/IconImageLoader$IconLoaderHolder;->mTask:Lcom/miui/gallery/search/core/display/icon/IconLoaderTask;

    .line 180
    return-void
.end method
