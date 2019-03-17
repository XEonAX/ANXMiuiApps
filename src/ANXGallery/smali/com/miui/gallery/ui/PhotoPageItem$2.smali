.class Lcom/miui/gallery/ui/PhotoPageItem$2;
.super Ljava/lang/Object;
.source "PhotoPageItem.java"

# interfaces
.implements Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageItem;->getCacheImageLoadingListener()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageItem;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageItem;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem$2;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoadFinish(ZLjava/lang/String;)V
    .locals 2
    .param p1, "cancelled"    # Z
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$2;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->onCacheImageLoadFinish(Z)V

    .line 237
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/PhotoPageItem$2$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem$2$1;-><init>(Lcom/miui/gallery/ui/PhotoPageItem$2;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 245
    return-void
.end method
