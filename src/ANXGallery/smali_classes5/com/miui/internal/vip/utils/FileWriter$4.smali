.class Lcom/miui/internal/vip/utils/FileWriter$4;
.super Ljava/lang/Object;
.source "FileWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/vip/utils/FileWriter;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/vip/utils/FileWriter;


# direct methods
.method constructor <init>(Lcom/miui/internal/vip/utils/FileWriter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/internal/vip/utils/FileWriter;

    .line 75
    iput-object p1, p0, Lcom/miui/internal/vip/utils/FileWriter$4;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter$4;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    invoke-virtual {v0}, Lcom/miui/internal/vip/utils/FileWriter;->closeOutputStream()V

    .line 79
    iget-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter$4;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    iget-object v0, v0, Lcom/miui/internal/vip/utils/FileWriter;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter$4;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    iget-object v0, v0, Lcom/miui/internal/vip/utils/FileWriter;->mFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter$4;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    iget-object v0, v0, Lcom/miui/internal/vip/utils/FileWriter;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter$4;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    iget-object v0, v0, Lcom/miui/internal/vip/utils/FileWriter;->mFile:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/internal/vip/utils/FileWriter$4;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    iget-object v2, v2, Lcom/miui/internal/vip/utils/FileWriter;->mRealPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_1

    .line 81
    :cond_1
    :goto_0
    const-string v0, "CacheFileWriterFileWriter.close, download %s failed, delete"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/internal/vip/utils/FileWriter$4;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    iget-object v3, v3, Lcom/miui/internal/vip/utils/FileWriter;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter$4;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    iget-object v0, v0, Lcom/miui/internal/vip/utils/FileWriter;->mFile:Ljava/io/File;

    invoke-static {v0}, Lcom/miui/internal/vip/utils/FileWriter;->deleteFile(Ljava/io/File;)V

    .line 87
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter$4;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/internal/vip/utils/FileWriter;->mFile:Ljava/io/File;

    .line 88
    return-void
.end method
