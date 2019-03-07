.class Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;
.super Landroid/os/Handler;
.source "StableScreenRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/StableScreenRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/StableScreenRecorder;


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/StableScreenRecorder;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    .line 196
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 197
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 201
    if-nez p1, :cond_0

    .line 202
    const-string v1, "StableScreenRecorderCore"

    const-string v2, "handleMessage, msg is null, return"

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :goto_0
    return-void

    .line 206
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 283
    const-string v1, "StableScreenRecorderCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not handle this message, msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v1}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$200(Lcom/miui/screenrecorder/StableScreenRecorder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v2}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$300(Lcom/miui/screenrecorder/StableScreenRecorder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$202(Lcom/miui/screenrecorder/StableScreenRecorder;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    :cond_1
    invoke-virtual {p0, v6}, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->removeMessages(I)V

    .line 213
    invoke-virtual {p0, v3}, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->removeMessages(I)V

    .line 214
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    iget-object v2, p0, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v2}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$500(Lcom/miui/screenrecorder/StableScreenRecorder;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$402(Lcom/miui/screenrecorder/StableScreenRecorder;J)J

    .line 215
    const-string v1, "StableScreenRecorderCore"

    const-string v2, "main working thread start"

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v1}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$600(Lcom/miui/screenrecorder/StableScreenRecorder;)V

    .line 218
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v1}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$700(Lcom/miui/screenrecorder/StableScreenRecorder;)V

    .line 219
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v1}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$800(Lcom/miui/screenrecorder/StableScreenRecorder;)V

    .line 220
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v1}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$900(Lcom/miui/screenrecorder/StableScreenRecorder;)V

    .line 222
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    const-string v1, "StableScreenRecorderCore"

    const-string v2, "find message to order us stop when starting"

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StableScreenRecorderCore"

    const-string v2, "Error when start recording"

    invoke-static {v1, v2, v0}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 231
    invoke-virtual {p0, v4}, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->sendEmptyMessage(I)Z

    .line 232
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v1, v5}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$1000(Lcom/miui/screenrecorder/StableScreenRecorder;Z)V

    goto/16 :goto_0

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v1, "StableScreenRecorderCore"

    const-string v2, "send message to start recording"

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 238
    :pswitch_1
    :try_start_2
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v1}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$300(Lcom/miui/screenrecorder/StableScreenRecorder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/screenrecorder/tools/MediaFileUtils;->isOverMaxFileSize(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 239
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->sendEmptyMessage(I)Z

    .line 244
    :goto_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 245
    const-string v1, "StableScreenRecorderCore"

    const-string v2, "find message to order us stop when recording"

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 250
    :catch_1
    move-exception v0

    .line 251
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "StableScreenRecorderCore"

    const-string v2, "Error when recording"

    invoke-static {v1, v2, v0}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 253
    invoke-virtual {p0, v4}, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->sendEmptyMessage(I)Z

    .line 254
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v1, v5}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$1000(Lcom/miui/screenrecorder/StableScreenRecorder;Z)V

    goto/16 :goto_0

    .line 241
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v1}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$1100(Lcom/miui/screenrecorder/StableScreenRecorder;)V

    goto :goto_1

    .line 248
    :cond_4
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->sendEmptyMessage(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 259
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->removeMessages(I)V

    .line 260
    invoke-virtual {p0, v4}, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->removeMessages(I)V

    .line 261
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v1}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$1200(Lcom/miui/screenrecorder/StableScreenRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 262
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v1}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$1300(Lcom/miui/screenrecorder/StableScreenRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 264
    :try_start_4
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$1400(Lcom/miui/screenrecorder/StableScreenRecorder;Z)V

    .line 265
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$1000(Lcom/miui/screenrecorder/StableScreenRecorder;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 266
    :catch_2
    move-exception v0

    .line 267
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "StableScreenRecorderCore"

    const-string v2, "Error when releasing"

    invoke-static {v1, v2, v0}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 269
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v1, v5}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$1000(Lcom/miui/screenrecorder/StableScreenRecorder;Z)V

    goto/16 :goto_0

    .line 274
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_3
    :try_start_5
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$1400(Lcom/miui/screenrecorder/StableScreenRecorder;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 278
    :goto_2
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v1}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$1500(Lcom/miui/screenrecorder/StableScreenRecorder;)Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->removeMessages(I)V

    .line 279
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v1}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$1500(Lcom/miui/screenrecorder/StableScreenRecorder;)Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->removeMessages(I)V

    .line 280
    iget-object v1, p0, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->this$0:Lcom/miui/screenrecorder/StableScreenRecorder;

    invoke-static {v1}, Lcom/miui/screenrecorder/StableScreenRecorder;->access$1500(Lcom/miui/screenrecorder/StableScreenRecorder;)Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/miui/screenrecorder/StableScreenRecorder$WorkHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 275
    :catch_3
    move-exception v0

    .line 276
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "StableScreenRecorderCore"

    const-string v2, "release failed in onDestroy!"

    invoke-static {v1, v2, v0}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
