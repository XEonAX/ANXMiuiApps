.class Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$11;
.super Landroid/database/ContentObserver;
.source "ScreenRecorderHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$11;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    .line 647
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 648
    if-nez p2, :cond_0

    .line 649
    const-string v1, "ScreenRecorderHomeActivity"

    const-string v2, " mContentObserver.onChange unknown uri"

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :goto_0
    return-void

    .line 653
    :cond_0
    invoke-static {p2}, Lcom/miui/screenrecorder/tools/MediaFileUtils;->isVideoUri(Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 654
    const-string v1, "ScreenRecorderHomeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mContentObserver.onChange, current uri is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", we only deal changes with content://media/external"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 660
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 661
    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$11;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-static {v1}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$2200(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 662
    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$11;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-static {v1}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$2200(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 663
    const-string v1, "ScreenRecorderHomeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContentObserver has deal wirh uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
