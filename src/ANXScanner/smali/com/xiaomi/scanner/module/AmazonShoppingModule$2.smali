.class Lcom/xiaomi/scanner/module/AmazonShoppingModule$2;
.super Ljava/lang/Object;
.source "AmazonShoppingModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/AmazonShoppingModule;->buildImageContentUri(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/AmazonShoppingModule;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$imageFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/AmazonShoppingModule;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/module/AmazonShoppingModule;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule$2;->this$0:Lcom/xiaomi/scanner/module/AmazonShoppingModule;

    iput-object p2, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule$2;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule$2;->val$imageFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findUri(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x1

    .line 286
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    const-string v2, "content://media/external/images/media"

    .line 288
    .local v2, "mediaBasePath":Ljava/lang/String;
    const-string v3, "_id"

    .line 289
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 288
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 290
    .local v1, "id":I
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 291
    .local v0, "baseUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule$2;->this$0:Lcom/xiaomi/scanner/module/AmazonShoppingModule;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->access$302(Lcom/xiaomi/scanner/module/AmazonShoppingModule;Landroid/net/Uri;)Landroid/net/Uri;

    .line 292
    iget-object v3, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule$2;->this$0:Lcom/xiaomi/scanner/module/AmazonShoppingModule;

    invoke-static {v3}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->access$400(Lcom/xiaomi/scanner/module/AmazonShoppingModule;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 301
    .end local v0    # "baseUri":Landroid/net/Uri;
    .end local v1    # "id":I
    .end local v2    # "mediaBasePath":Ljava/lang/String;
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v3, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule$2;->val$imageFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 295
    iget-object v3, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule$2;->this$0:Lcom/xiaomi/scanner/module/AmazonShoppingModule;

    iget-object v4, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule$2;->val$filePath:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->access$500(Lcom/xiaomi/scanner/module/AmazonShoppingModule;Ljava/lang/String;)V

    .line 296
    iget-object v3, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule$2;->this$0:Lcom/xiaomi/scanner/module/AmazonShoppingModule;

    invoke-static {v3}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->access$400(Lcom/xiaomi/scanner/module/AmazonShoppingModule;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 298
    :cond_1
    iget-object v3, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule$2;->this$0:Lcom/xiaomi/scanner/module/AmazonShoppingModule;

    invoke-static {v3}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->access$400(Lcom/xiaomi/scanner/module/AmazonShoppingModule;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 278
    iget-object v1, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule$2;->this$0:Lcom/xiaomi/scanner/module/AmazonShoppingModule;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/AmazonShoppingModule$2;->val$filePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;->access$200(Lcom/xiaomi/scanner/module/AmazonShoppingModule;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 279
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/module/AmazonShoppingModule$2;->findUri(Landroid/database/Cursor;)V

    .line 280
    if-eqz v0, :cond_0

    .line 281
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 283
    :cond_0
    return-void
.end method
