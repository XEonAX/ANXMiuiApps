.class Lcom/milink/api/v1/McsDeviceListener$2;
.super Ljava/lang/Object;
.source "McsDeviceListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/milink/api/v1/McsDeviceListener;->onDeviceLost(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/milink/api/v1/McsDeviceListener;

.field final synthetic val$deviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/milink/api/v1/McsDeviceListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/milink/api/v1/McsDeviceListener;

    .line 40
    iput-object p1, p0, Lcom/milink/api/v1/McsDeviceListener$2;->this$0:Lcom/milink/api/v1/McsDeviceListener;

    iput-object p2, p0, Lcom/milink/api/v1/McsDeviceListener$2;->val$deviceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/milink/api/v1/McsDeviceListener$2;->this$0:Lcom/milink/api/v1/McsDeviceListener;

    invoke-static {v0}, Lcom/milink/api/v1/McsDeviceListener;->access$000(Lcom/milink/api/v1/McsDeviceListener;)Lcom/milink/api/v1/MilinkClientManagerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/milink/api/v1/McsDeviceListener$2;->this$0:Lcom/milink/api/v1/McsDeviceListener;

    invoke-static {v0}, Lcom/milink/api/v1/McsDeviceListener;->access$000(Lcom/milink/api/v1/McsDeviceListener;)Lcom/milink/api/v1/MilinkClientManagerDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/milink/api/v1/McsDeviceListener$2;->val$deviceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/milink/api/v1/MilinkClientManagerDelegate;->onDeviceLost(Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method
