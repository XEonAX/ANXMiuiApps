.class Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$7;
.super Ljava/lang/Object;
.source "ScreenRecorderHomeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$7;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$7;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-static {v0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$800(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$7;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-static {v0, p3}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$900(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;I)V

    .line 241
    const/4 v0, 0x0

    .line 244
    :goto_0
    return v0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$7;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-static {v0, p3}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$1100(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;I)V

    .line 244
    const/4 v0, 0x1

    goto :goto_0
.end method
