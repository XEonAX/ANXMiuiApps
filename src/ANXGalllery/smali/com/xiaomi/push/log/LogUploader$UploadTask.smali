.class Lcom/xiaomi/push/log/LogUploader$UploadTask;
.super Lcom/xiaomi/push/log/LogUploader$Task;
.source "LogUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/log/LogUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UploadTask"
.end annotation


# instance fields
.field file:Ljava/io/File;

.field force:Z

.field retryNum:I

.field final synthetic this$0:Lcom/xiaomi/push/log/LogUploader;

.field token:Ljava/lang/String;

.field uploaded:Z

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/log/LogUploader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/push/log/LogUploader;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "file"    # Ljava/io/File;
    .param p5, "force"    # Z

    .prologue
    .line 150
    iput-object p1, p0, Lcom/xiaomi/push/log/LogUploader$UploadTask;->this$0:Lcom/xiaomi/push/log/LogUploader;

    invoke-direct {p0, p1}, Lcom/xiaomi/push/log/LogUploader$Task;-><init>(Lcom/xiaomi/push/log/LogUploader;)V

    .line 151
    iput-object p2, p0, Lcom/xiaomi/push/log/LogUploader$UploadTask;->url:Ljava/lang/String;

    .line 152
    iput-object p3, p0, Lcom/xiaomi/push/log/LogUploader$UploadTask;->token:Ljava/lang/String;

    .line 153
    iput-object p4, p0, Lcom/xiaomi/push/log/LogUploader$UploadTask;->file:Ljava/io/File;

    .line 154
    iput-boolean p5, p0, Lcom/xiaomi/push/log/LogUploader$UploadTask;->force:Z

    .line 155
    return-void
.end method

.method private checkLimit()Z
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 163
    iget-object v8, p0, Lcom/xiaomi/push/log/LogUploader$UploadTask;->this$0:Lcom/xiaomi/push/log/LogUploader;

    invoke-static {v8}, Lcom/xiaomi/push/log/LogUploader;->access$000(Lcom/xiaomi/push/log/LogUploader;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "log.timestamp"

    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 165
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v8, "log.requst"

    const-string v9, ""

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 166
    .local v6, "val":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 167
    .local v4, "time":J
    const/4 v3, 0x0

    .line 169
    .local v3, "times":I
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 170
    .local v1, "obj":Lorg/json/JSONObject;
    const-string/jumbo v8, "time"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 171
    const-string/jumbo v8, "times"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 176
    .end local v1    # "obj":Lorg/json/JSONObject;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    const-wide/32 v10, 0x5265c00

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 177
    const/16 v8, 0xa

    if-le v3, v8, :cond_1

    .line 195
    :goto_1
    return v7

    .line 182
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 183
    const/4 v3, 0x0

    .line 186
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 188
    .restart local v1    # "obj":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v7, "time"

    invoke-virtual {v1, v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 189
    const-string/jumbo v7, "times"

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 190
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "log.requst"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    :goto_2
    const/4 v7, 0x1

    goto :goto_1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Lorg/json/JSONException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "JSONException on put "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    goto :goto_2

    .line 172
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "obj":Lorg/json/JSONObject;
    :catch_1
    move-exception v8

    goto :goto_0
.end method


# virtual methods
.method public canExcuteNow()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/xiaomi/push/log/LogUploader$UploadTask;->this$0:Lcom/xiaomi/push/log/LogUploader;

    invoke-static {v0}, Lcom/xiaomi/push/log/LogUploader;->access$000(Lcom/xiaomi/push/log/LogUploader;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/network/Network;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/push/log/LogUploader$UploadTask;->force:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/log/LogUploader$UploadTask;->this$0:Lcom/xiaomi/push/log/LogUploader;

    invoke-static {v0}, Lcom/xiaomi/push/log/LogUploader;->access$000(Lcom/xiaomi/push/log/LogUploader;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/network/Network;->hasNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postProcess()V
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 216
    iget-boolean v0, p0, Lcom/xiaomi/push/log/LogUploader$UploadTask;->uploaded:Z

    if-nez v0, :cond_0

    .line 217
    iget v0, p0, Lcom/xiaomi/push/log/LogUploader$UploadTask;->retryNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/push/log/LogUploader$UploadTask;->retryNum:I

    .line 218
    iget v0, p0, Lcom/xiaomi/push/log/LogUploader$UploadTask;->retryNum:I

    if-ge v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/xiaomi/push/log/LogUploader$UploadTask;->this$0:Lcom/xiaomi/push/log/LogUploader;

    invoke-static {v0}, Lcom/xiaomi/push/log/LogUploader;->access$100(Lcom/xiaomi/push/log/LogUploader;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/push/log/LogUploader$UploadTask;->uploaded:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/xiaomi/push/log/LogUploader$UploadTask;->retryNum:I

    if-lt v0, v1, :cond_2

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/log/LogUploader$UploadTask;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/push/log/LogUploader$UploadTask;->this$0:Lcom/xiaomi/push/log/LogUploader;

    const/4 v1, 0x1

    iget v2, p0, Lcom/xiaomi/push/log/LogUploader$UploadTask;->retryNum:I

    shl-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/xiaomi/push/log/LogUploader;->access$200(Lcom/xiaomi/push/log/LogUploader;J)V

    .line 228
    return-void
.end method

.method public process()V
    .locals 4

    .prologue
    .line 201
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/push/log/LogUploader$UploadTask;->checkLimit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 203
    .local v0, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "uid"

    invoke-static {}, Lcom/xiaomi/push/service/ServiceConfig;->getDeviceUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string/jumbo v1, "token"

    iget-object v2, p0, Lcom/xiaomi/push/log/LogUploader$UploadTask;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v1, "net"

    iget-object v2, p0, Lcom/xiaomi/push/log/LogUploader$UploadTask;->this$0:Lcom/xiaomi/push/log/LogUploader;

    invoke-static {v2}, Lcom/xiaomi/push/log/LogUploader;->access$000(Lcom/xiaomi/push/log/LogUploader;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/network/Network;->getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v1, p0, Lcom/xiaomi/push/log/LogUploader$UploadTask;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/log/LogUploader$UploadTask;->file:Ljava/io/File;

    const-string v3, "file"

    invoke-static {v1, v0, v2, v3}, Lcom/xiaomi/channel/commonutils/network/Network;->uploadFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .end local v0    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/push/log/LogUploader$UploadTask;->uploaded:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v1

    goto :goto_0
.end method
