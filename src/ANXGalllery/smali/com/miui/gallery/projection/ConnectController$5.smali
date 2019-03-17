.class Lcom/miui/gallery/projection/ConnectController$5;
.super Ljava/lang/Object;
.source "ConnectController.java"

# interfaces
.implements Lcom/milink/api/v1/MilinkClientManagerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/projection/ConnectController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/projection/ConnectController;


# direct methods
.method constructor <init>(Lcom/miui/gallery/projection/ConnectController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/projection/ConnectController;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private remoteDisconnected()V
    .locals 2

    .prologue
    .line 549
    const-string v0, "ConnectController"

    const-string v1, "do remoteDisconnected"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    invoke-static {v0}, Lcom/miui/gallery/projection/ConnectController;->access$600(Lcom/miui/gallery/projection/ConnectController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    invoke-static {v0}, Lcom/miui/gallery/projection/ConnectController;->access$1500(Lcom/miui/gallery/projection/ConnectController;)V

    .line 552
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    invoke-static {v0}, Lcom/miui/gallery/projection/ConnectController;->access$1600(Lcom/miui/gallery/projection/ConnectController;)V

    .line 554
    :cond_0
    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .prologue
    .line 489
    const-string v0, "ConnectController"

    const-string v1, "service closed"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method public onConnected()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 519
    const-string v0, "ConnectController"

    const-string v1, "connect is responded ok"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    invoke-static {v0, v2}, Lcom/miui/gallery/projection/ConnectController;->access$602(Lcom/miui/gallery/projection/ConnectController;Z)Z

    .line 521
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    iget-object v1, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    invoke-static {v1}, Lcom/miui/gallery/projection/ConnectController;->access$800(Lcom/miui/gallery/projection/ConnectController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/projection/ConnectController;->access$702(Lcom/miui/gallery/projection/ConnectController;Ljava/lang/String;)Ljava/lang/String;

    .line 522
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/projection/ConnectController;->access$802(Lcom/miui/gallery/projection/ConnectController;Ljava/lang/String;)Ljava/lang/String;

    .line 523
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    invoke-static {v0, v2}, Lcom/miui/gallery/projection/ConnectController;->access$902(Lcom/miui/gallery/projection/ConnectController;Z)Z

    .line 524
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    invoke-static {v0}, Lcom/miui/gallery/projection/ConnectController;->access$1000(Lcom/miui/gallery/projection/ConnectController;)Lcom/milink/api/v1/MilinkClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/milink/api/v1/MilinkClientManager;->startShow()Lcom/milink/api/v1/type/ReturnCode;

    .line 525
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    invoke-static {v0}, Lcom/miui/gallery/projection/ConnectController;->access$1100(Lcom/miui/gallery/projection/ConnectController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    const-string v0, "ConnectController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==the to show photo is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    invoke-static {v2}, Lcom/miui/gallery/projection/ConnectController;->access$1100(Lcom/miui/gallery/projection/ConnectController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    iget-object v1, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    invoke-static {v1}, Lcom/miui/gallery/projection/ConnectController;->access$1100(Lcom/miui/gallery/projection/ConnectController;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    invoke-static {v2}, Lcom/miui/gallery/projection/ConnectController;->access$1200(Lcom/miui/gallery/projection/ConnectController;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/projection/ConnectController;->access$1300(Lcom/miui/gallery/projection/ConnectController;Ljava/lang/String;I)I

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/projection/ConnectController;->access$1400(Lcom/miui/gallery/projection/ConnectController;I)V

    .line 531
    return-void
.end method

.method public onConnectedFailed(Lcom/milink/api/v1/type/ErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lcom/milink/api/v1/type/ErrorCode;

    .prologue
    .line 535
    const-string v0, "ConnectController"

    const-string v1, "connect is responded failed -1"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    invoke-static {v0}, Lcom/miui/gallery/projection/ConnectController;->access$1500(Lcom/miui/gallery/projection/ConnectController;)V

    .line 538
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/projection/ConnectController;->access$1400(Lcom/miui/gallery/projection/ConnectController;I)V

    .line 539
    return-void
.end method

.method public onDeviceFound(Ljava/lang/String;Ljava/lang/String;Lcom/milink/api/v1/type/DeviceType;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/milink/api/v1/type/DeviceType;

    .prologue
    .line 494
    sget-object v0, Lcom/milink/api/v1/type/DeviceType;->TV:Lcom/milink/api/v1/type/DeviceType;

    if-eq p3, v0, :cond_0

    .line 499
    :goto_0
    return-void

    .line 496
    :cond_0
    const-string v0, "ConnectController"

    const-string v1, "service onDeviceFound"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    invoke-static {v0}, Lcom/miui/gallery/projection/ConnectController;->access$400(Lcom/miui/gallery/projection/ConnectController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    invoke-static {v0}, Lcom/miui/gallery/projection/ConnectController;->access$500(Lcom/miui/gallery/projection/ConnectController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v0, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onDeviceLost(Ljava/lang/String;)V
    .locals 5
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 503
    const/4 v2, 0x0

    .line 504
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    invoke-static {v3}, Lcom/miui/gallery/projection/ConnectController;->access$400(Lcom/miui/gallery/projection/ConnectController;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 505
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 506
    .local v0, "dn":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    invoke-static {v3}, Lcom/miui/gallery/projection/ConnectController;->access$400(Lcom/miui/gallery/projection/ConnectController;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 507
    move-object v2, v0

    .line 511
    .end local v0    # "dn":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 512
    iget-object v3, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    invoke-static {v3}, Lcom/miui/gallery/projection/ConnectController;->access$400(Lcom/miui/gallery/projection/ConnectController;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    iget-object v3, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    invoke-static {v3}, Lcom/miui/gallery/projection/ConnectController;->access$500(Lcom/miui/gallery/projection/ConnectController;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x65

    invoke-static {v3, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 515
    :cond_2
    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 543
    const-string v0, "ConnectController"

    const-string v1, "remote show is dispeared, but connected."

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-direct {p0}, Lcom/miui/gallery/projection/ConnectController$5;->remoteDisconnected()V

    .line 546
    return-void
.end method

.method public onLoading()V
    .locals 3

    .prologue
    .line 558
    const-string v1, "ConnectController"

    const-string v2, "loading..."

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v1, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    invoke-static {v1}, Lcom/miui/gallery/projection/ConnectController;->access$1700(Lcom/miui/gallery/projection/ConnectController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/projection/ConnectController$MediaPlayListener;

    .line 560
    .local v0, "m":Lcom/miui/gallery/projection/ConnectController$MediaPlayListener;
    invoke-interface {v0}, Lcom/miui/gallery/projection/ConnectController$MediaPlayListener;->onLoading()V

    goto :goto_0

    .line 562
    .end local v0    # "m":Lcom/miui/gallery/projection/ConnectController$MediaPlayListener;
    :cond_0
    return-void
.end method

.method public onNextAudio(Z)V
    .locals 3
    .param p1, "isAuto"    # Z

    .prologue
    .line 594
    const-string v0, "ConnectController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestNextItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    return-void
.end method

.method public onOpen()V
    .locals 2

    .prologue
    .line 483
    const-string v0, "ConnectController"

    const-string v1, "service openned"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/projection/ConnectController;->queryDevices(Z)V

    .line 485
    return-void
.end method

.method public onPaused()V
    .locals 3

    .prologue
    .line 582
    const-string v1, "ConnectController"

    const-string v2, "paused"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v1, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    invoke-static {v1}, Lcom/miui/gallery/projection/ConnectController;->access$1700(Lcom/miui/gallery/projection/ConnectController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/projection/ConnectController$MediaPlayListener;

    .line 584
    .local v0, "m":Lcom/miui/gallery/projection/ConnectController$MediaPlayListener;
    invoke-interface {v0}, Lcom/miui/gallery/projection/ConnectController$MediaPlayListener;->onPaused()V

    goto :goto_0

    .line 586
    .end local v0    # "m":Lcom/miui/gallery/projection/ConnectController$MediaPlayListener;
    :cond_0
    return-void
.end method

.method public onPlaying()V
    .locals 3

    .prologue
    .line 566
    const-string v1, "ConnectController"

    const-string v2, "playing..."

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v1, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    invoke-static {v1}, Lcom/miui/gallery/projection/ConnectController;->access$1700(Lcom/miui/gallery/projection/ConnectController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/projection/ConnectController$MediaPlayListener;

    .line 568
    .local v0, "m":Lcom/miui/gallery/projection/ConnectController$MediaPlayListener;
    invoke-interface {v0}, Lcom/miui/gallery/projection/ConnectController$MediaPlayListener;->onPlaying()V

    goto :goto_0

    .line 570
    .end local v0    # "m":Lcom/miui/gallery/projection/ConnectController$MediaPlayListener;
    :cond_0
    return-void
.end method

.method public onPrevAudio(Z)V
    .locals 3
    .param p1, "isAuto"    # Z

    .prologue
    .line 599
    const-string v0, "ConnectController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestPrevItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method public onStopped()V
    .locals 3

    .prologue
    .line 574
    const-string v1, "ConnectController"

    const-string/jumbo v2, "stopped"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iget-object v1, p0, Lcom/miui/gallery/projection/ConnectController$5;->this$0:Lcom/miui/gallery/projection/ConnectController;

    invoke-static {v1}, Lcom/miui/gallery/projection/ConnectController;->access$1700(Lcom/miui/gallery/projection/ConnectController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/projection/ConnectController$MediaPlayListener;

    .line 576
    .local v0, "m":Lcom/miui/gallery/projection/ConnectController$MediaPlayListener;
    invoke-interface {v0}, Lcom/miui/gallery/projection/ConnectController$MediaPlayListener;->onStopped()V

    goto :goto_0

    .line 578
    .end local v0    # "m":Lcom/miui/gallery/projection/ConnectController$MediaPlayListener;
    :cond_0
    return-void
.end method

.method public onVolume(I)V
    .locals 0
    .param p1, "volume"    # I

    .prologue
    .line 590
    return-void
.end method
