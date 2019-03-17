.class Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskResult;
.super Ljava/lang/Object;
.source "FileTaskExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileTaskResult"
.end annotation


# instance fields
.field public ids:[J

.field public results:[J


# direct methods
.method public constructor <init>([J[J)V
    .locals 0
    .param p1, "ids"    # [J
    .param p2, "results"    # [J

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskResult;->ids:[J

    .line 155
    iput-object p2, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskResult;->results:[J

    .line 156
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FileTaskResult:ids:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskResult;->ids:[J

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", results:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/FileTaskExecutor$FileTaskResult;->results:[J

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
