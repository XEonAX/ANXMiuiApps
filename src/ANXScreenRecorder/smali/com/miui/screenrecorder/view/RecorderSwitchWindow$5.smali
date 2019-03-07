.class Lcom/miui/screenrecorder/view/RecorderSwitchWindow$5;
.super Ljava/lang/Object;
.source "RecorderSwitchWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$5;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$5;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    invoke-virtual {v0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->invalidate()V

    .line 575
    return-void
.end method
