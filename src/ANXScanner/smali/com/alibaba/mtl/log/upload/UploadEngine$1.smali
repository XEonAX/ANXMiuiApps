.class Lcom/alibaba/mtl/log/upload/UploadEngine$1;
.super Lcom/alibaba/mtl/log/upload/a;
.source "UploadEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mtl/log/upload/UploadEngine;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/alibaba/mtl/log/upload/UploadEngine;


# direct methods
.method constructor <init>(Lcom/alibaba/mtl/log/upload/UploadEngine;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alibaba/mtl/log/upload/UploadEngine$1;->b:Lcom/alibaba/mtl/log/upload/UploadEngine;

    invoke-direct {p0}, Lcom/alibaba/mtl/log/upload/a;-><init>()V

    return-void
.end method


# virtual methods
.method public H()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 36
    iget-object v0, p0, Lcom/alibaba/mtl/log/upload/UploadEngine$1;->b:Lcom/alibaba/mtl/log/upload/UploadEngine;

    invoke-static {v0}, Lcom/alibaba/mtl/log/upload/UploadEngine;->a(Lcom/alibaba/mtl/log/upload/UploadEngine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->D()V

    .line 38
    iget-object v0, p0, Lcom/alibaba/mtl/log/upload/UploadEngine$1;->b:Lcom/alibaba/mtl/log/upload/UploadEngine;

    invoke-static {v0}, Lcom/alibaba/mtl/log/upload/UploadEngine;->a(Lcom/alibaba/mtl/log/upload/UploadEngine;)J

    .line 39
    const-string v0, "UploadTask"

    new-array v1, v6, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "mPeriod:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/mtl/log/upload/UploadEngine$1;->b:Lcom/alibaba/mtl/log/upload/UploadEngine;

    iget-wide v4, v3, Lcom/alibaba/mtl/log/upload/UploadEngine;->z:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Lcom/alibaba/mtl/log/d/r;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/log/d/r;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Lcom/alibaba/mtl/log/d/r;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/log/d/r;->f(I)V

    .line 43
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/log/upload/a;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    invoke-static {}, Lcom/alibaba/mtl/log/d/r;->a()Lcom/alibaba/mtl/log/d/r;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mtl/log/upload/UploadEngine$1;->b:Lcom/alibaba/mtl/log/upload/UploadEngine;

    iget-wide v2, v1, Lcom/alibaba/mtl/log/upload/UploadEngine;->z:J

    invoke-virtual {v0, v6, p0, v2, v3}, Lcom/alibaba/mtl/log/d/r;->a(ILjava/lang/Runnable;J)V

    .line 47
    :cond_1
    return-void
.end method

.method public I()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/mtl/log/upload/UploadEngine$1;->b:Lcom/alibaba/mtl/log/upload/UploadEngine;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/upload/UploadEngine;->refreshInterval()V

    .line 52
    return-void
.end method
