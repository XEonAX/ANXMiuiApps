.class Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$2;
.super Ljava/lang/Object;
.source "ScreenRecorderHomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->initActionBarInEdit()V
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
    .line 159
    iput-object p1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$2;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$2;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-static {v0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$200(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V

    .line 163
    return-void
.end method
