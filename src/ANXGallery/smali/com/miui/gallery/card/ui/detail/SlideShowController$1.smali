.class Lcom/miui/gallery/card/ui/detail/SlideShowController$1;
.super Ljava/lang/Object;
.source "SlideShowController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/card/ui/detail/SlideShowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;


# direct methods
.method constructor <init>(Lcom/miui/gallery/card/ui/detail/SlideShowController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/card/ui/detail/SlideShowController;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$1;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 55
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 67
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 57
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 58
    .local v0, "item":Lcom/miui/gallery/card/ui/detail/SlideShowController$ShowItem;
    :goto_1
    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$1;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->access$000(Lcom/miui/gallery/card/ui/detail/SlideShowController;)Lcom/miui/gallery/widget/SlideShowView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/gallery/card/ui/detail/SlideShowController$ShowItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/widget/SlideShowView;->next(Landroid/graphics/Bitmap;I)V

    .line 60
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$1;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->access$200(Lcom/miui/gallery/card/ui/detail/SlideShowController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$1;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    invoke-static {v3}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->access$100(Lcom/miui/gallery/card/ui/detail/SlideShowController;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 57
    .end local v0    # "item":Lcom/miui/gallery/card/ui/detail/SlideShowController$ShowItem;
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/miui/gallery/card/ui/detail/SlideShowController$ShowItem;

    move-object v0, v1

    goto :goto_1

    .line 64
    :pswitch_1
    iget-object v1, p0, Lcom/miui/gallery/card/ui/detail/SlideShowController$1;->this$0:Lcom/miui/gallery/card/ui/detail/SlideShowController;

    invoke-static {v1}, Lcom/miui/gallery/card/ui/detail/SlideShowController;->access$300(Lcom/miui/gallery/card/ui/detail/SlideShowController;)V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
