.class Lcom/alibaba/mtl/appmonitor/APTrack$7;
.super Ljava/lang/Object;
.source "APTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mtl/appmonitor/APTrack;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:D

.field final synthetic a:Lcom/alibaba/mtl/appmonitor/APTrack;

.field final synthetic a:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/mtl/appmonitor/APTrack;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;D)V
    .locals 1

    .prologue
    .line 219
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/APTrack$7;->a:Lcom/alibaba/mtl/appmonitor/APTrack;

    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/APTrack$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/mtl/appmonitor/APTrack$7;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/mtl/appmonitor/APTrack$7;->a:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    iput-wide p5, p0, Lcom/alibaba/mtl/appmonitor/APTrack$7;->a:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 223
    :try_start_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/IMonitor;

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/APTrack$7;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/APTrack$7;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/APTrack$7;->a:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    iget-wide v4, p0, Lcom/alibaba/mtl/appmonitor/APTrack$7;->a:D

    iget-object v6, p0, Lcom/alibaba/mtl/appmonitor/APTrack$7;->a:Lcom/alibaba/mtl/appmonitor/APTrack;

    invoke-static {v6}, Lcom/alibaba/mtl/appmonitor/APTrack;->a(Lcom/alibaba/mtl/appmonitor/APTrack;)Ljava/util/Map;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/mtl/appmonitor/IMonitor;->stat_commit2(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;DLjava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    goto :goto_0
.end method
