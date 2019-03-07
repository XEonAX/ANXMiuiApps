.class Lcom/miui/screenrecorder/view/RecorderSwitchWindow$1;
.super Ljava/lang/Object;
.source "RecorderSwitchWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/screenrecorder/view/RecorderSwitchWindow;-><init>(Landroid/content/Context;)V
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
    .line 110
    iput-object p1, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    invoke-static {v0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->access$000(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    .line 114
    iget-object v0, p0, Lcom/miui/screenrecorder/view/RecorderSwitchWindow$1;->this$0:Lcom/miui/screenrecorder/view/RecorderSwitchWindow;

    invoke-static {v0}, Lcom/miui/screenrecorder/view/RecorderSwitchWindow;->access$100(Lcom/miui/screenrecorder/view/RecorderSwitchWindow;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 115
    return-void
.end method
