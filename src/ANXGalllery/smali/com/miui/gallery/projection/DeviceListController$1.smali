.class Lcom/miui/gallery/projection/DeviceListController$1;
.super Ljava/lang/Object;
.source "DeviceListController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/projection/DeviceListController;->showDeviceListDialog()V
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
    .line 212
    iput-object p1, p0, Lcom/miui/gallery/projection/DeviceListController$1;->this$0:Lcom/miui/gallery/projection/DeviceListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController$1;->this$0:Lcom/miui/gallery/projection/DeviceListController;

    invoke-static {v0}, Lcom/miui/gallery/projection/DeviceListController;->access$000(Lcom/miui/gallery/projection/DeviceListController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/miui/gallery/projection/DeviceListController$1;->this$0:Lcom/miui/gallery/projection/DeviceListController;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/projection/DeviceListController;->access$100(Lcom/miui/gallery/projection/DeviceListController;I)V

    .line 218
    :cond_0
    return-void
.end method
