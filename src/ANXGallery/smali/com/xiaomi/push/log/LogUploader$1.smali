.class Lcom/xiaomi/push/log/LogUploader$1;
.super Lcom/xiaomi/push/log/LogUploader$Task;
.source "LogUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/log/LogUploader;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field file:Ljava/io/File;

.field final synthetic this$0:Lcom/xiaomi/push/log/LogUploader;

.field final synthetic val$force:Z

.field final synthetic val$from:Ljava/util/Date;

.field final synthetic val$maxlen:I

.field final synthetic val$to:Ljava/util/Date;

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/log/LogUploader;ILjava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/push/log/LogUploader;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/xiaomi/push/log/LogUploader$1;->this$0:Lcom/xiaomi/push/log/LogUploader;

    iput p2, p0, Lcom/xiaomi/push/log/LogUploader$1;->val$maxlen:I

    iput-object p3, p0, Lcom/xiaomi/push/log/LogUploader$1;->val$from:Ljava/util/Date;

    iput-object p4, p0, Lcom/xiaomi/push/log/LogUploader$1;->val$to:Ljava/util/Date;

    iput-object p5, p0, Lcom/xiaomi/push/log/LogUploader$1;->val$url:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/push/log/LogUploader$1;->val$token:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/xiaomi/push/log/LogUploader$1;->val$force:Z

    invoke-direct {p0, p1}, Lcom/xiaomi/push/log/LogUploader$Task;-><init>(Lcom/xiaomi/push/log/LogUploader;)V

    return-void
.end method


# virtual methods
.method public postProcess()V
    .locals 7

    .prologue
    .line 110
    iget-object v0, p0, Lcom/xiaomi/push/log/LogUploader$1;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/log/LogUploader$1;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/xiaomi/push/log/LogUploader$1;->this$0:Lcom/xiaomi/push/log/LogUploader;

    invoke-static {v0}, Lcom/xiaomi/push/log/LogUploader;->access$100(Lcom/xiaomi/push/log/LogUploader;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v6

    new-instance v0, Lcom/xiaomi/push/log/LogUploader$UploadTask;

    iget-object v1, p0, Lcom/xiaomi/push/log/LogUploader$1;->this$0:Lcom/xiaomi/push/log/LogUploader;

    iget-object v2, p0, Lcom/xiaomi/push/log/LogUploader$1;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/push/log/LogUploader$1;->val$token:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/push/log/LogUploader$1;->file:Ljava/io/File;

    iget-boolean v5, p0, Lcom/xiaomi/push/log/LogUploader$1;->val$force:Z

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/log/LogUploader$UploadTask;-><init>(Lcom/xiaomi/push/log/LogUploader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/log/LogUploader$1;->this$0:Lcom/xiaomi/push/log/LogUploader;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/xiaomi/push/log/LogUploader;->access$200(Lcom/xiaomi/push/log/LogUploader;J)V

    .line 114
    return-void
.end method

.method public process()V
    .locals 5

    .prologue
    .line 92
    invoke-static {}, Lcom/xiaomi/channel/commonutils/file/SDCardUtils;->isSDCardUseful()Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/push/log/LogUploader$1;->this$0:Lcom/xiaomi/push/log/LogUploader;

    invoke-static {v3}, Lcom/xiaomi/push/log/LogUploader;->access$000(Lcom/xiaomi/push/log/LogUploader;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.logcache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 98
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    new-instance v1, Lcom/xiaomi/push/log/LogFilter;

    invoke-direct {v1}, Lcom/xiaomi/push/log/LogFilter;-><init>()V

    .line 100
    .local v1, "filter":Lcom/xiaomi/push/log/LogFilter;
    iget v2, p0, Lcom/xiaomi/push/log/LogUploader$1;->val$maxlen:I

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/log/LogFilter;->setMaxLen(I)V

    .line 101
    iget-object v2, p0, Lcom/xiaomi/push/log/LogUploader$1;->this$0:Lcom/xiaomi/push/log/LogUploader;

    invoke-static {v2}, Lcom/xiaomi/push/log/LogUploader;->access$000(Lcom/xiaomi/push/log/LogUploader;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/push/log/LogUploader$1;->val$from:Ljava/util/Date;

    iget-object v4, p0, Lcom/xiaomi/push/log/LogUploader$1;->val$to:Ljava/util/Date;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/xiaomi/push/log/LogFilter;->filter(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/push/log/LogUploader$1;->file:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "filter":Lcom/xiaomi/push/log/LogFilter;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
