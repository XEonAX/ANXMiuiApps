.class Lcom/miui/internal/vip/utils/FileWriter$3;
.super Ljava/lang/Object;
.source "FileWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/vip/utils/FileWriter;->writeToFile([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/vip/utils/FileWriter;

.field final synthetic val$copyBuff:[B

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/miui/internal/vip/utils/FileWriter;[BI)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/internal/vip/utils/FileWriter;

    .line 60
    iput-object p1, p0, Lcom/miui/internal/vip/utils/FileWriter$3;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    iput-object p2, p0, Lcom/miui/internal/vip/utils/FileWriter$3;->val$copyBuff:[B

    iput p3, p0, Lcom/miui/internal/vip/utils/FileWriter$3;->val$size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter$3;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    iget-object v0, v0, Lcom/miui/internal/vip/utils/FileWriter;->mOut:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/miui/internal/vip/utils/FileWriter$3;->val$copyBuff:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/miui/internal/vip/utils/FileWriter$3;->this$0:Lcom/miui/internal/vip/utils/FileWriter;

    invoke-virtual {v1}, Lcom/miui/internal/vip/utils/FileWriter;->onFileOperationError()V

    .line 67
    const-string v1, "CacheFileWriterFileWriter, write failed, size = %d, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/miui/internal/vip/utils/FileWriter$3;->val$size:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
