.class Lcom/miui/screenrecorder/service/RecorderService$ServiceHandler;
.super Landroid/os/Handler;
.source "RecorderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/service/RecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceHandler"
.end annotation


# instance fields
.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/screenrecorder/service/RecorderService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/screenrecorder/service/RecorderService;)V
    .locals 1
    .param p1, "service"    # Lcom/miui/screenrecorder/service/RecorderService;

    .prologue
    .line 244
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 245
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/screenrecorder/service/RecorderService$ServiceHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 246
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/screenrecorder/service/RecorderService;Lcom/miui/screenrecorder/service/RecorderService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/screenrecorder/service/RecorderService;
    .param p2, "x1"    # Lcom/miui/screenrecorder/service/RecorderService$1;

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/service/RecorderService$ServiceHandler;-><init>(Lcom/miui/screenrecorder/service/RecorderService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    .line 250
    iget-object v6, p0, Lcom/miui/screenrecorder/service/RecorderService$ServiceHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    if-nez v6, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v6, p0, Lcom/miui/screenrecorder/service/RecorderService$ServiceHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/screenrecorder/service/RecorderService;

    .line 254
    .local v5, "service":Lcom/miui/screenrecorder/service/RecorderService;
    if-eqz v5, :cond_0

    .line 257
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 280
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 259
    :pswitch_0
    invoke-static {v5}, Lcom/miui/screenrecorder/service/RecorderService;->access$100(Lcom/miui/screenrecorder/service/RecorderService;)Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->hideKeyCodeWindow()V

    goto :goto_1

    .line 262
    :pswitch_1
    invoke-static {v5}, Lcom/miui/screenrecorder/service/RecorderService;->access$400(Lcom/miui/screenrecorder/service/RecorderService;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 263
    invoke-virtual {v5}, Lcom/miui/screenrecorder/service/RecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5}, Lcom/miui/screenrecorder/service/RecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f08001e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 266
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 267
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 268
    const-string v6, "display_name"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "displayName":Ljava/lang/String;
    const-string v6, "duration"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 270
    .local v2, "duration":J
    const-string v6, "file_path"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, "filePath":Ljava/lang/String;
    invoke-static {v5, v1, v2, v3, v4}, Lcom/miui/screenrecorder/service/RecorderService;->access$700(Lcom/miui/screenrecorder/service/RecorderService;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1

    .line 275
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v2    # "duration":J
    .end local v4    # "filePath":Ljava/lang/String;
    :pswitch_3
    invoke-static {v5}, Lcom/miui/screenrecorder/service/RecorderService;->access$400(Lcom/miui/screenrecorder/service/RecorderService;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 276
    invoke-virtual {v5}, Lcom/miui/screenrecorder/service/RecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5}, Lcom/miui/screenrecorder/service/RecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f08000f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 277
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
