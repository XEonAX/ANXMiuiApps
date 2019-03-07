.class Lcom/miui/screenrecorder/service/RecorderService$1;
.super Landroid/content/BroadcastReceiver;
.source "RecorderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/service/RecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/service/RecorderService;


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/service/RecorderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/service/RecorderService;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/miui/screenrecorder/service/RecorderService$1;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "action":Ljava/lang/String;
    const-string v16, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 132
    const-string v16, "RecorderService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Receive Broadcast action is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/miui/screenrecorder/tools/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    const-string v16, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 135
    invoke-static {}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->isBluetoothHeadsetConnected()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 136
    invoke-static {}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->isUseInnerSound()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 137
    invoke-static {}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->isSupportA2dpInner()Z

    move-result v16

    if-nez v16, :cond_1

    .line 138
    const v16, 0x7f08005d

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    .line 139
    const-string v16, "RecorderService"

    const-string v17, "recording: this device cannot innerrecord when bluetooth a2dp connected"

    invoke-static/range {v16 .. v17}, Lcom/miui/screenrecorder/tools/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_1
    const-string v16, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 143
    invoke-static {}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getInstance()Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getRecording()Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/service/RecorderService$1;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/miui/screenrecorder/service/RecorderService;->access$100(Lcom/miui/screenrecorder/service/RecorderService;)Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

    move-result-object v16

    .line 144
    invoke-virtual/range {v16 .. v16}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->isStopWhileScreenLock()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/service/RecorderService$1;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/miui/screenrecorder/service/RecorderService;->access$200(Lcom/miui/screenrecorder/service/RecorderService;)V

    .line 237
    :cond_2
    :goto_0
    return-void

    .line 147
    :cond_3
    const-string v16, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 150
    const-string v16, "level"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 152
    .local v12, "level":I
    const-string v16, "scale"

    const/16 v17, 0x64

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 154
    .local v15, "scale":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/service/RecorderService$1;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    move-object/from16 v16, v0

    mul-int/lit8 v17, v12, 0x64

    div-int v17, v17, v15

    invoke-static/range {v16 .. v17}, Lcom/miui/screenrecorder/service/RecorderService;->access$302(Lcom/miui/screenrecorder/service/RecorderService;I)I

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/service/RecorderService$1;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/miui/screenrecorder/service/RecorderService;->access$300(Lcom/miui/screenrecorder/service/RecorderService;)I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_2

    .line 157
    invoke-static {}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getInstance()Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getRecording()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/service/RecorderService$1;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/miui/screenrecorder/service/RecorderService;->access$200(Lcom/miui/screenrecorder/service/RecorderService;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/service/RecorderService$1;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/miui/screenrecorder/service/RecorderService;->access$100(Lcom/miui/screenrecorder/service/RecorderService;)Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

    move-result-object v16

    const/16 v17, 0x3

    invoke-virtual/range {v16 .. v17}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->showWarning(I)V

    goto :goto_0

    .line 162
    .end local v12    # "level":I
    .end local v15    # "scale":I
    :cond_4
    const-string v16, "android.intent.action.DEVICE_STORAGE_LOW"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 163
    invoke-static {}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getInstance()Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getRecording()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 164
    const-string v16, "RecorderService"

    const-string v17, "Now device storage is low, we stop recorder"

    invoke-static/range {v16 .. v17}, Lcom/miui/screenrecorder/tools/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/service/RecorderService$1;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/miui/screenrecorder/service/RecorderService;->access$200(Lcom/miui/screenrecorder/service/RecorderService;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/service/RecorderService$1;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/miui/screenrecorder/service/RecorderService;->access$100(Lcom/miui/screenrecorder/service/RecorderService;)Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

    move-result-object v16

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->showWarning(I)V

    goto/16 :goto_0

    .line 168
    :cond_5
    const-string v16, "miui.screenrecorder.touch.mode.change"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 170
    invoke-static {}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getInstance()Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getRecording()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 171
    const-string v16, "show_touch"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 172
    .local v9, "isShowTouch":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/service/RecorderService$1;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/miui/screenrecorder/service/RecorderService;->access$100(Lcom/miui/screenrecorder/service/RecorderService;)Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->showTouch(Z)V

    goto/16 :goto_0

    .line 174
    .end local v9    # "isShowTouch":Z
    :cond_6
    const-string v16, "miui.intent.SCREEN_RECORDER_TRACK_KEYEVENT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 175
    invoke-static {}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getInstance()Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getRecording()Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/service/RecorderService$1;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/miui/screenrecorder/service/RecorderService;->access$100(Lcom/miui/screenrecorder/service/RecorderService;)Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

    move-result-object v16

    .line 176
    invoke-virtual/range {v16 .. v16}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->getIsShowHardKey()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 177
    const-string v16, "keycode"

    const/16 v17, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 178
    .local v11, "keycode":I
    const-string v16, "isdown"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 179
    .local v10, "isdown":Z
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 180
    .local v14, "msg":Landroid/os/Message;
    const/16 v16, 0x1

    move/from16 v0, v16

    iput v0, v14, Landroid/os/Message;->what:I

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/service/RecorderService$1;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/miui/screenrecorder/service/RecorderService;->access$400(Lcom/miui/screenrecorder/service/RecorderService;)Landroid/os/Handler;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    if-eqz v10, :cond_7

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/service/RecorderService$1;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/miui/screenrecorder/service/RecorderService;->access$100(Lcom/miui/screenrecorder/service/RecorderService;)Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->showKeyEventUI(I)V

    goto/16 :goto_0

    .line 186
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/service/RecorderService$1;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/miui/screenrecorder/service/RecorderService;->access$400(Lcom/miui/screenrecorder/service/RecorderService;)Landroid/os/Handler;

    move-result-object v16

    const-wide/16 v18, 0x1f4

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v14, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 189
    .end local v10    # "isdown":Z
    .end local v11    # "keycode":I
    .end local v14    # "msg":Landroid/os/Message;
    :cond_8
    const-string v16, "miui.screenrecorder.touch.hardkey"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 190
    invoke-static {}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getInstance()Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/miui/screenrecorder/data/MiuiScreenRecorderGlobalData;->getRecording()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 191
    const-string v16, "show_touch"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 192
    .restart local v9    # "isShowTouch":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/service/RecorderService$1;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/miui/screenrecorder/service/RecorderService;->access$100(Lcom/miui/screenrecorder/service/RecorderService;)Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->showHardKeyTouch(Z)V

    goto/16 :goto_0

    .line 194
    .end local v9    # "isShowTouch":Z
    :cond_9
    const-string v16, "miui.screenrecorder.record.fail"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/service/RecorderService$1;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/miui/screenrecorder/service/RecorderService;->access$500(Lcom/miui/screenrecorder/service/RecorderService;)V

    .line 196
    const-string v16, "Screenrecorder_Action_Create"

    const-string v17, "recorder_fail"

    invoke-static/range {v16 .. v17}, Lcom/miui/screenrecorder/tools/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/service/RecorderService$1;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/miui/screenrecorder/service/RecorderService;->access$100(Lcom/miui/screenrecorder/service/RecorderService;)Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

    move-result-object v16

    const/16 v17, 0x7

    invoke-virtual/range {v16 .. v17}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->showWarning(I)V

    goto/16 :goto_0

    .line 198
    :cond_a
    const-string v16, "miui.screenrecorder.record.sucess"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 199
    new-instance v13, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v13}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    .line 200
    .local v13, "miStatParams":Lcom/xiaomi/stat/MiStatParams;
    const-string v16, "file_path"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 201
    .local v8, "filePath":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 202
    const-string v16, "RecorderService"

    const-string v17, "filePath is null in RECORD_SUCCESS_BROADCAST!"

    invoke-static/range {v16 .. v17}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 206
    :cond_b
    const-string v16, "display_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, "displayName":Ljava/lang/String;
    const-string v16, "duration"

    const-wide/16 v18, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 208
    .local v6, "duration":J
    const-wide/16 v16, 0x0

    cmp-long v16, v6, v16

    if-ltz v16, :cond_c

    .line 209
    const-string v16, "record_duration"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v6, v7}, Lcom/xiaomi/stat/MiStatParams;->putLong(Ljava/lang/String;J)V

    .line 212
    :cond_c
    const-string v16, "RecorderService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "STOP_RECORD_MSG filePath="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " displayName="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "duration "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/miui/screenrecorder/tools/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_d

    .line 216
    const-string v16, "target_app_name"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v5}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/service/RecorderService$1;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v8, v5, v6, v7}, Lcom/miui/screenrecorder/service/RecorderService;->access$600(Lcom/miui/screenrecorder/service/RecorderService;Ljava/lang/String;Ljava/lang/String;J)V

    .line 220
    :cond_d
    const-string v16, "Screenrecorder_Action_Create"

    const-string v17, "recorder_success"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v13}, Lcom/miui/screenrecorder/tools/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/service/RecorderService$1;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/miui/screenrecorder/service/RecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v8}, Lcom/miui/screenrecorder/tools/MediaFileUtils;->saveToCloud(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    const-string v16, "is_over_max_size"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/service/RecorderService$1;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/miui/screenrecorder/service/RecorderService;->access$100(Lcom/miui/screenrecorder/service/RecorderService;)Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

    move-result-object v16

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->showWarning(I)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/service/RecorderService$1;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/miui/screenrecorder/service/RecorderService;->access$200(Lcom/miui/screenrecorder/service/RecorderService;)V

    goto/16 :goto_0

    .line 228
    .end local v5    # "displayName":Ljava/lang/String;
    .end local v6    # "duration":J
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v13    # "miStatParams":Lcom/xiaomi/stat/MiStatParams;
    :cond_e
    const-string v16, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    .line 229
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v16

    .line 230
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v17

    const v18, 0x7f080053

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    .line 229
    invoke-static/range {v16 .. v18}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    .line 230
    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/service/RecorderService$1;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/miui/screenrecorder/service/RecorderService;->access$500(Lcom/miui/screenrecorder/service/RecorderService;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/service/RecorderService$1;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/miui/screenrecorder/service/RecorderService;->stopSelf()V

    goto/16 :goto_0

    .line 233
    :cond_f
    const-string v16, "android.intent.action.ACTION_SHUTDOWN"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 234
    const-string v16, "RecorderService"

    const-string v17, "Will shut down, stop to record screen"

    invoke-static/range {v16 .. v17}, Lcom/miui/screenrecorder/tools/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/service/RecorderService$1;->this$0:Lcom/miui/screenrecorder/service/RecorderService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/miui/screenrecorder/service/RecorderService;->access$500(Lcom/miui/screenrecorder/service/RecorderService;)V

    goto/16 :goto_0
.end method
