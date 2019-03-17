.class Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$1;
.super Ljava/lang/Object;
.source "RecommendFaceGroupAdapter.java"

# interfaces
.implements Lcom/miui/gallery/util/uil/CloudImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->setOnLoadingCompleteListener(Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$1;->this$0:Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "filePath"    # Ljava/lang/String;

    .prologue
    .line 297
    return-void
.end method

.method public onLoadingCancelled(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 302
    return-void
.end method

.method public onLoadingComplete(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$1;->this$0:Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;

    invoke-static {v0}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->access$100(Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;)Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$1;->this$0:Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;

    invoke-static {v0}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->access$100(Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;)Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;->onLoadingComplete()V

    .line 292
    :cond_0
    return-void
.end method

.method public onLoadingFailed(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;Lcom/miui/gallery/error/core/ErrorCode;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "code"    # Lcom/miui/gallery/error/core/ErrorCode;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$1;->this$0:Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;

    invoke-static {v0}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->access$100(Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;)Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$1;->this$0:Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;

    invoke-static {v0}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->access$100(Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;)Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;->onLoadingFailed()V

    .line 285
    :cond_0
    return-void
.end method

.method public onLoadingStarted(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/view/View;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 278
    return-void
.end method
