.class Lcom/miui/internal/vip/utils/FileWriter$1;
.super Ljava/lang/Object;
.source "FileWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/vip/utils/FileWriter;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/vip/utils/FileWriter;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/internal/vip/utils/FileWriter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/internal/vip/utils/FileWriter;

    .line 25
    iput-object p1, p0, Lcom/miui/internal/vip/utils/FileWriter$1;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    iput-object p2, p0, Lcom/miui/internal/vip/utils/FileWriter$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 28
    iget-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter$1;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    iget-object v1, p0, Lcom/miui/internal/vip/utils/FileWriter$1;->val$path:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/internal/vip/utils/FileWriter;->mRealPath:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter$1;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/internal/vip/utils/FileWriter$1;->val$path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/miui/internal/vip/utils/FileWriter;->mFile:Ljava/io/File;

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter$1;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/miui/internal/vip/utils/FileWriter$1;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    iget-object v2, v2, Lcom/miui/internal/vip/utils/FileWriter;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, v0, Lcom/miui/internal/vip/utils/FileWriter;->mOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/miui/internal/vip/utils/FileWriter$1;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    invoke-virtual {v1}, Lcom/miui/internal/vip/utils/FileWriter;->onFileOperationError()V

    .line 34
    const-string v1, "CacheFileWriterFileWriter, create file failed, %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
