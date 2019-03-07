.class Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$10;
.super Ljava/lang/Object;
.source "ScreenRecorderHomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->deleteDialog()V
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
    .line 512
    iput-object p1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$10;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 515
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$10;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-static {v0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$2000(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;->dismiss()V

    .line 516
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$10;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$2002(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;)Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    .line 517
    return-void
.end method
