.class Lcom/alibaba/mtl/appmonitor/APTrack$8;
.super Ljava/lang/Object;
.source "APTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mtl/appmonitor/APTrack;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/mtl/appmonitor/APTrack;

.field final synthetic a:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

.field final synthetic a:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/mtl/appmonitor/APTrack;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/APTrack$8;->a:Lcom/alibaba/mtl/appmonitor/APTrack;

    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/APTrack$8;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/mtl/appmonitor/APTrack$8;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/mtl/appmonitor/APTrack$8;->a:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    iput-object p5, p0, Lcom/alibaba/mtl/appmonitor/APTrack$8;->a:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 252
    :try_start_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/IMonitor;

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/APTrack$8;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/APTrack$8;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/APTrack$8;->a:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/APTrack$8;->a:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    iget-object v5, p0, Lcom/alibaba/mtl/appmonitor/APTrack$8;->a:Lcom/alibaba/mtl/appmonitor/APTrack;

    invoke-static {v5}, Lcom/alibaba/mtl/appmonitor/APTrack;->a(Lcom/alibaba/mtl/appmonitor/APTrack;)Ljava/util/Map;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/IMonitor;->stat_commit3(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    goto :goto_0
.end method
