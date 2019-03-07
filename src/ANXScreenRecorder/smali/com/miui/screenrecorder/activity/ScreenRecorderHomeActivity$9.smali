.class Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$9;
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
    .line 500
    iput-object p1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$9;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 503
    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$9;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-static {v1}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$2000(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;->dismiss()V

    .line 504
    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$9;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$2002(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;)Lcom/miui/screenrecorder/view/ScreenRecordAlertDialog;

    .line 505
    new-instance v0, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    .line 506
    .local v0, "miStatParams":Lcom/xiaomi/stat/MiStatParams;
    const-string v1, "app_action"

    const-string v2, "delete_video"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v1, "Screenrecorder_home_page"

    const-string v2, "homepage_action"

    invoke-static {v1, v2, v0}, Lcom/miui/screenrecorder/tools/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 508
    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$9;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-static {v1}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$2100(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V

    .line 509
    return-void
.end method
