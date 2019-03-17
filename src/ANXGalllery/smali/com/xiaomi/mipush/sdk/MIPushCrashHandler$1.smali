.class Lcom/xiaomi/mipush/sdk/MIPushCrashHandler$1;
.super Ljava/lang/Object;
.source "MIPushCrashHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->uploadCrash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;


# direct methods
.method constructor <init>(Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler$1;->this$0:Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 204
    const/4 v6, 0x0

    .line 206
    .local v6, "uploadingFile":Ljava/io/File;
    :try_start_0
    iget-object v8, p0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler$1;->this$0:Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;

    invoke-static {v8}, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->access$000(Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaomi/mipush/sdk/CrashStorage;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/CrashStorage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaomi/mipush/sdk/CrashStorage;->getAllCrashFile()Ljava/util/ArrayList;

    move-result-object v1

    .line 207
    .local v1, "crashFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_1

    .line 208
    :cond_0
    const-string v8, "no crash file to upload"

    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 244
    .end local v1    # "crashFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :goto_0
    return-void

    .line 214
    .restart local v1    # "crashFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_1
    iget-object v8, p0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler$1;->this$0:Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;

    invoke-static {v8}, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->access$000(Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "C100000"

    invoke-static {v8, v9}, Lcom/xiaomi/mipush/sdk/MiPushUtils;->collectDeviceInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 215
    .local v4, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    move-object v7, v6

    .end local v6    # "uploadingFile":Ljava/io/File;
    .local v7, "uploadingFile":Ljava/io/File;
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 216
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 217
    .local v0, "crashFile":Ljava/io/File;
    iget-object v8, p0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler$1;->this$0:Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;

    invoke-static {v8}, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->access$000(Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaomi/mipush/sdk/CrashStorage;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/CrashStorage;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/xiaomi/mipush/sdk/CrashStorage;->getCrashSummary(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "crashSummary":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler$1;->this$0:Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;

    invoke-static {v9}, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->access$000(Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/crash"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 219
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".zip"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 221
    .end local v7    # "uploadingFile":Ljava/io/File;
    .restart local v6    # "uploadingFile":Ljava/io/File;
    :try_start_2
    invoke-static {v6, v0}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->zip(Ljava/io/File;Ljava/io/File;)V

    .line 222
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 223
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https://api.xmpush.xiaomi.com/upload/crash_log?file="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "file"

    invoke-static {v8, v4, v6, v9}, Lcom/xiaomi/channel/commonutils/network/Network;->uploadFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler$1;->this$0:Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;

    invoke-static {v10}, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->access$000(Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/crash"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 227
    iget-object v8, p0, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler$1;->this$0:Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;

    invoke-static {v8}, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->access$100(Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;)V

    .line 215
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move-object v7, v6

    .end local v6    # "uploadingFile":Ljava/io/File;
    .restart local v7    # "uploadingFile":Ljava/io/File;
    goto/16 :goto_1

    .line 229
    .end local v7    # "uploadingFile":Ljava/io/File;
    .restart local v6    # "uploadingFile":Ljava/io/File;
    :cond_2
    const-string/jumbo v8, "zip crash file failed"

    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 232
    .end local v0    # "crashFile":Ljava/io/File;
    .end local v1    # "crashFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v2    # "crashSummary":Ljava/lang/String;
    .end local v4    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "i":I
    :catch_0
    move-exception v3

    .line 233
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 236
    .end local v3    # "e":Ljava/io/IOException;
    :goto_4
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 237
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_3

    .line 238
    const-string v8, "delete zip crash file failed"

    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 241
    :cond_3
    invoke-static {}, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->access$200()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 242
    :try_start_3
    invoke-static {}, Lcom/xiaomi/mipush/sdk/MIPushCrashHandler;->access$200()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 243
    monitor-exit v9

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .end local v6    # "uploadingFile":Ljava/io/File;
    .restart local v1    # "crashFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .restart local v4    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "i":I
    .restart local v7    # "uploadingFile":Ljava/io/File;
    :cond_4
    move-object v6, v7

    .line 235
    .end local v7    # "uploadingFile":Ljava/io/File;
    .restart local v6    # "uploadingFile":Ljava/io/File;
    goto :goto_4

    .line 234
    .end local v1    # "crashFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v4    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "i":I
    :catch_1
    move-exception v8

    goto :goto_4

    .end local v6    # "uploadingFile":Ljava/io/File;
    .restart local v1    # "crashFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .restart local v4    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "i":I
    .restart local v7    # "uploadingFile":Ljava/io/File;
    :catch_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "uploadingFile":Ljava/io/File;
    .restart local v6    # "uploadingFile":Ljava/io/File;
    goto :goto_4

    .line 232
    .end local v6    # "uploadingFile":Ljava/io/File;
    .restart local v7    # "uploadingFile":Ljava/io/File;
    :catch_3
    move-exception v3

    move-object v6, v7

    .end local v7    # "uploadingFile":Ljava/io/File;
    .restart local v6    # "uploadingFile":Ljava/io/File;
    goto :goto_3
.end method
