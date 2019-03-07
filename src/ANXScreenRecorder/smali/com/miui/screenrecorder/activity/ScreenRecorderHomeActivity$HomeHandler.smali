.class Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$HomeHandler;
.super Landroid/os/Handler;
.source "ScreenRecorderHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HomeHandler"
.end annotation


# instance fields
.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    .prologue
    .line 671
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 672
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$HomeHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 673
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;
    .param p2, "x1"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$1;

    .prologue
    .line 667
    invoke-direct {p0, p1}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$HomeHandler;-><init>(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 676
    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$HomeHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$HomeHandler;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    .line 680
    .local v0, "activity":Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;
    if-eqz v0, :cond_0

    .line 683
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 685
    :pswitch_0
    invoke-static {v0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$2300(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V

    goto :goto_0

    .line 683
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
