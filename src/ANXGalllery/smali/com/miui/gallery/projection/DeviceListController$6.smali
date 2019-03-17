.class Lcom/miui/gallery/projection/DeviceListController$6;
.super Ljava/lang/Object;
.source "DeviceListController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/projection/DeviceListController;
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
    .line 371
    iput-object p1, p0, Lcom/miui/gallery/projection/DeviceListController$6;->this$0:Lcom/miui/gallery/projection/DeviceListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController$6;->this$0:Lcom/miui/gallery/projection/DeviceListController;

    iget-object v1, p0, Lcom/miui/gallery/projection/DeviceListController$6;->this$0:Lcom/miui/gallery/projection/DeviceListController;

    invoke-static {v1}, Lcom/miui/gallery/projection/DeviceListController;->access$500(Lcom/miui/gallery/projection/DeviceListController;)Lmiui/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/projection/DeviceListController;->access$600(Lcom/miui/gallery/projection/DeviceListController;Landroid/app/Dialog;)V

    .line 375
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController$6;->this$0:Lcom/miui/gallery/projection/DeviceListController;

    invoke-virtual {v0}, Lcom/miui/gallery/projection/DeviceListController;->hasAirkanDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController$6;->this$0:Lcom/miui/gallery/projection/DeviceListController;

    invoke-static {v0}, Lcom/miui/gallery/projection/DeviceListController;->access$1000(Lcom/miui/gallery/projection/DeviceListController;)V

    .line 378
    :cond_0
    return-void
.end method
