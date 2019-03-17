.class Lcom/miui/gallery/ui/PhotoPageGifItem$4;
.super Ljava/lang/Object;
.source "PhotoPageGifItem.java"

# interfaces
.implements Lcom/miui/gallery/util/gifdecoder/NSGifDecode$GifFrameUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageGifItem;->getGifUpdateListener()Lcom/miui/gallery/util/gifdecoder/NSGifDecode$GifFrameUpdateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageGifItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageGifItem;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$4;->this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateGifFrame(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "frame"    # Landroid/graphics/Bitmap;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem$4;->this$0:Lcom/miui/gallery/ui/PhotoPageGifItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->access$300(Lcom/miui/gallery/ui/PhotoPageGifItem;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 224
    return-void
.end method
