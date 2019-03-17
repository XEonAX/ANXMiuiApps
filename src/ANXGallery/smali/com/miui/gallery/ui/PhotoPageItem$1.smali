.class Lcom/miui/gallery/ui/PhotoPageItem$1;
.super Ljava/lang/Object;
.source "PhotoPageItem.java"

# interfaces
.implements Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageItem;->getImageLoadingListener()Lcom/miui/gallery/ui/PhotoPageItem$ImageLoadFinishListener;
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
    .line 215
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageItem$1;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoadFinish(ZLjava/lang/String;)V
    .locals 2
    .param p1, "cancelled"    # Z
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 218
    if-nez p1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$1;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    sget-object v1, Lcom/miui/gallery/error/core/ErrorCode;->DECODE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageItem;->onImageLoadFinish(Lcom/miui/gallery/error/core/ErrorCode;)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$1;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageItem;->access$100(Lcom/miui/gallery/ui/PhotoPageItem;)Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageItem$1;->this$0:Lcom/miui/gallery/ui/PhotoPageItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageItem;->access$100(Lcom/miui/gallery/ui/PhotoPageItem;)Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem$OnImageLoadFinishListener;->onImageLoadFinish(ZLjava/lang/String;)V

    .line 224
    :cond_1
    return-void
.end method
