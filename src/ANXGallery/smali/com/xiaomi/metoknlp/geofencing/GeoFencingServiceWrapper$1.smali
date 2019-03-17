.class Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$1;
.super Ljava/lang/Object;
.source "GeoFencingServiceWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;


# direct methods
.method constructor <init>(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$1;->this$0:Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 300
    const-string v0, "GeoFencingServiceWrapper"

    const-string v1, "*** GeoFencingService connected ***"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$1;->this$0:Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    invoke-static {p2}, Lcom/xiaomi/metoknlp/geofencing/IGeoFencing$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->access$602(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;)Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;

    .line 302
    iget-object v0, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$1;->this$0:Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->access$300(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$1;->this$0:Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->access$300(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 304
    iget-object v0, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$1;->this$0:Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->access$300(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 306
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 310
    const-string v0, "GeoFencingServiceWrapper"

    const-string v1, "*** GeoFencingService disconnected ***"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper$1;->this$0:Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;->access$602(Lcom/xiaomi/metoknlp/geofencing/GeoFencingServiceWrapper;Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;)Lcom/xiaomi/metoknlp/geofencing/IGeoFencing;

    .line 312
    return-void
.end method
