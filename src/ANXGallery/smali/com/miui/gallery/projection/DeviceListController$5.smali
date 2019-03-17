.class Lcom/miui/gallery/projection/DeviceListController$5;
.super Ljava/lang/Object;
.source "DeviceListController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/projection/DeviceListController;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/projection/DeviceListController;


# direct methods
.method constructor <init>(Lcom/miui/gallery/projection/DeviceListController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/projection/DeviceListController;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/miui/gallery/projection/DeviceListController$5;->this$0:Lcom/miui/gallery/projection/DeviceListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController$5;->this$0:Lcom/miui/gallery/projection/DeviceListController;

    invoke-static {v0}, Lcom/miui/gallery/projection/DeviceListController;->access$400(Lcom/miui/gallery/projection/DeviceListController;)Lcom/miui/gallery/projection/DeviceListController$DeviceSelectorAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController$5;->this$0:Lcom/miui/gallery/projection/DeviceListController;

    invoke-static {v0}, Lcom/miui/gallery/projection/DeviceListController;->access$400(Lcom/miui/gallery/projection/DeviceListController;)Lcom/miui/gallery/projection/DeviceListController$DeviceSelectorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/projection/DeviceListController$DeviceSelectorAdapter;->notifyDataSetChanged()V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController$5;->this$0:Lcom/miui/gallery/projection/DeviceListController;

    invoke-static {v0}, Lcom/miui/gallery/projection/DeviceListController;->access$200(Lcom/miui/gallery/projection/DeviceListController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController$5;->this$0:Lcom/miui/gallery/projection/DeviceListController;

    invoke-virtual {v0}, Lcom/miui/gallery/projection/DeviceListController;->hasAirkanDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController$5;->this$0:Lcom/miui/gallery/projection/DeviceListController;

    iget-object v1, p0, Lcom/miui/gallery/projection/DeviceListController$5;->this$0:Lcom/miui/gallery/projection/DeviceListController;

    invoke-static {v1}, Lcom/miui/gallery/projection/DeviceListController;->access$500(Lcom/miui/gallery/projection/DeviceListController;)Lmiui/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/projection/DeviceListController;->access$600(Lcom/miui/gallery/projection/DeviceListController;Landroid/app/Dialog;)V

    .line 319
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController$5;->this$0:Lcom/miui/gallery/projection/DeviceListController;

    iget-object v1, p0, Lcom/miui/gallery/projection/DeviceListController$5;->this$0:Lcom/miui/gallery/projection/DeviceListController;

    invoke-static {v1}, Lcom/miui/gallery/projection/DeviceListController;->access$700(Lcom/miui/gallery/projection/DeviceListController;)Lmiui/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/projection/DeviceListController;->access$600(Lcom/miui/gallery/projection/DeviceListController;Landroid/app/Dialog;)V

    .line 321
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController$5;->this$0:Lcom/miui/gallery/projection/DeviceListController;

    invoke-static {v0}, Lcom/miui/gallery/projection/DeviceListController;->access$800(Lcom/miui/gallery/projection/DeviceListController;)V

    .line 331
    :cond_1
    :goto_0
    return-void

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController$5;->this$0:Lcom/miui/gallery/projection/DeviceListController;

    iget-object v1, p0, Lcom/miui/gallery/projection/DeviceListController$5;->this$0:Lcom/miui/gallery/projection/DeviceListController;

    invoke-static {v1}, Lcom/miui/gallery/projection/DeviceListController;->access$900(Lcom/miui/gallery/projection/DeviceListController;)Lmiui/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/projection/DeviceListController;->access$600(Lcom/miui/gallery/projection/DeviceListController;Landroid/app/Dialog;)V

    .line 326
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController$5;->this$0:Lcom/miui/gallery/projection/DeviceListController;

    invoke-static {v0}, Lcom/miui/gallery/projection/DeviceListController;->access$700(Lcom/miui/gallery/projection/DeviceListController;)Lmiui/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController$5;->this$0:Lcom/miui/gallery/projection/DeviceListController;

    invoke-static {v0}, Lcom/miui/gallery/projection/DeviceListController;->access$700(Lcom/miui/gallery/projection/DeviceListController;)Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 327
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController$5;->this$0:Lcom/miui/gallery/projection/DeviceListController;

    invoke-static {v0}, Lcom/miui/gallery/projection/DeviceListController;->access$1000(Lcom/miui/gallery/projection/DeviceListController;)V

    goto :goto_0
.end method
