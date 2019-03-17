.class Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper$SmartVideoGuideHandleThread;
.super Landroid/os/HandlerThread;
.source "SmartVideoGuideHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartVideoGuideHandleThread"
.end annotation


# instance fields
.field mWorkHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper$SmartVideoGuideHandleThread;->this$0:Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper;

    .line 72
    const-string v0, "SmartEffectAttentionThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper$SmartVideoGuideHandleThread;->start()V

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper;Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper;
    .param p2, "x1"    # Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper$1;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper$SmartVideoGuideHandleThread;-><init>(Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper;)V

    return-void
.end method

.method private isSupportSmartVideo(I)Z
    .locals 1
    .param p1, "frames"    # I

    .prologue
    .line 91
    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    const/16 v0, 0x78

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroyThread()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper$SmartVideoGuideHandleThread;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 107
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper$SmartVideoGuideHandleThread;->quit()Z

    .line 108
    return-void
.end method

.method public handleHighFrameRate(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v1, p0, Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper$SmartVideoGuideHandleThread;->mWorkHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper$SmartVideoGuideHandleThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper$SmartVideoGuideHandleThread;->mWorkHandler:Landroid/os/Handler;

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper$SmartVideoGuideHandleThread;->mWorkHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 99
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 101
    iget-object v1, p0, Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper$SmartVideoGuideHandleThread;->mWorkHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 102
    iget-object v1, p0, Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper$SmartVideoGuideHandleThread;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 103
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 78
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 87
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 80
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 81
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->getVideoFrameRate(Ljava/lang/String;)I

    move-result v1

    .line 82
    .local v1, "frames":I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper$SmartVideoGuideHandleThread;->isSupportSmartVideo(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper$SmartVideoGuideHandleThread;->this$0:Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper;

    invoke-static {v2, v0}, Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper;->access$200(Lcom/miui/gallery/video/editor/manager/SmartVideoGuideHelper;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
