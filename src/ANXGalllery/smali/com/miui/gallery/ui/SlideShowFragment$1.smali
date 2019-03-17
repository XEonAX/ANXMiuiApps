.class Lcom/miui/gallery/ui/SlideShowFragment$1;
.super Landroid/os/Handler;
.source "SlideShowFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/SlideShowFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/SlideShowFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/SlideShowFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/SlideShowFragment;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/miui/gallery/ui/SlideShowFragment$1;->this$0:Lcom/miui/gallery/ui/SlideShowFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 47
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 56
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 50
    .local v0, "item":Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/ui/SlideShowFragment$1;->this$0:Lcom/miui/gallery/ui/SlideShowFragment;

    invoke-static {v1, v0}, Lcom/miui/gallery/ui/SlideShowFragment;->access$000(Lcom/miui/gallery/ui/SlideShowFragment;Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;)V

    goto :goto_0

    .line 49
    .end local v0    # "item":Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/miui/gallery/adapter/SlideShowAdapter$ShowItem;

    move-object v0, v1

    goto :goto_1

    .line 53
    :pswitch_1
    iget-object v1, p0, Lcom/miui/gallery/ui/SlideShowFragment$1;->this$0:Lcom/miui/gallery/ui/SlideShowFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/SlideShowFragment;->access$100(Lcom/miui/gallery/ui/SlideShowFragment;)V

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
