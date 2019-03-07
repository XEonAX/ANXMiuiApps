.class Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager$1;
.super Ljava/lang/Object;
.source "RecorderSwitchWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->initHint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager$1;->this$0:Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager$1;->this$0:Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;

    invoke-static {v0}, Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;->access$000(Lcom/miui/screenrecorder/controller/RecorderSwitchWindowManager;)V

    .line 134
    return-void
.end method
