.class Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController$1;
.super Ljava/lang/Object;
.source "MiuiScreenRecorderController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->showWarning(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController$1;->this$0:Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

    iput p2, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 429
    packed-switch p2, :pswitch_data_0

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 431
    :pswitch_0
    iget v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController$1;->val$type:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController$1;->val$type:I

    if-ne v0, v3, :cond_0

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController$1;->this$0:Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

    invoke-static {v0}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->access$000(Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;)V

    .line 433
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController$1;->this$0:Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

    iget v1, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController$1;->val$type:I

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->access$100(Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;I)V

    goto :goto_0

    .line 437
    :pswitch_1
    iget v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController$1;->val$type:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController$1;->val$type:I

    if-ne v0, v3, :cond_0

    .line 438
    :cond_2
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController$1;->this$0:Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

    invoke-static {v0}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->access$000(Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;)V

    .line 439
    iget v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController$1;->val$type:I

    if-ne v0, v2, :cond_3

    .line 440
    const-wide/32 v0, 0x3e800000

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->checkMemoryEnough(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 442
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController$1;->this$0:Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

    invoke-virtual {v0, v3}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->showWarning(I)V

    goto :goto_0

    .line 446
    :cond_3
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController$1;->this$0:Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

    invoke-static {v0, v2}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->access$200(Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;Z)V

    goto :goto_0

    .line 451
    :pswitch_2
    iget-object v0, p0, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController$1;->this$0:Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;

    invoke-static {v0}, Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;->access$000(Lcom/miui/screenrecorder/controller/MiuiScreenRecorderController;)V

    goto :goto_0

    .line 429
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
