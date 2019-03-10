.class public Lmiui/util/LongScreenshotUtils$ContentPort$H;
.super Landroid/os/Handler;
.source "LongScreenshotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/LongScreenshotUtils$ContentPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "H"
.end annotation


# static fields
.field public static final MSG_BROADCAST_CALLBACK:I = 0x3

.field public static final MSG_FINISH:I = 0x4

.field public static final MSG_SCROLL:I = 0x2

.field public static final MSG_START:I = 0x1


# instance fields
.field final synthetic this$0:Lmiui/util/LongScreenshotUtils$ContentPort;


# direct methods
.method public constructor <init>(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .registers 3
    .param p1, "this$0"    # Lmiui/util/LongScreenshotUtils$ContentPort;

    .line 207
    iput-object p1, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    .line 208
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 209
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 213
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    goto :goto_34

    .line 229
    :pswitch_6
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    # invokes: Lmiui/util/LongScreenshotUtils$ContentPort;->finish()V
    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->access$400(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    goto :goto_34

    .line 224
    :pswitch_c
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    # getter for: Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;
    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->access$100(Lmiui/util/LongScreenshotUtils$ContentPort;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 225
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    # invokes: Lmiui/util/LongScreenshotUtils$ContentPort;->broadcastCallback()V
    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->access$300(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    goto :goto_34

    .line 218
    :pswitch_1a
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    # getter for: Lmiui/util/LongScreenshotUtils$ContentPort;->mMainScrollView:Landroid/view/View;
    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->access$100(Lmiui/util/LongScreenshotUtils$ContentPort;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 219
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    # invokes: Lmiui/util/LongScreenshotUtils$ContentPort;->scrollView()V
    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->access$200(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    .line 220
    const/4 v0, 0x3

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_34

    .line 215
    :pswitch_2e
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    # invokes: Lmiui/util/LongScreenshotUtils$ContentPort;->start()V
    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->access$000(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    .line 216
    nop

    .line 232
    :cond_34
    :goto_34
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_1a
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
