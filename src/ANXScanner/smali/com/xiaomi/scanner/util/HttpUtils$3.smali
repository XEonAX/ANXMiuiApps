.class final Lcom/xiaomi/scanner/util/HttpUtils$3;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/util/HttpUtils;->onResponseToMain(ILjava/lang/String;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;

.field final synthetic val$code:I

.field final synthetic val$finalT:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;I)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/xiaomi/scanner/util/HttpUtils$3;->val$finalT:Ljava/lang/Object;

    iput-object p2, p0, Lcom/xiaomi/scanner/util/HttpUtils$3;->val$callback:Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;

    iput p3, p0, Lcom/xiaomi/scanner/util/HttpUtils$3;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/xiaomi/scanner/util/HttpUtils$3;->val$finalT:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/xiaomi/scanner/util/HttpUtils$3;->val$callback:Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;

    iget-object v1, p0, Lcom/xiaomi/scanner/util/HttpUtils$3;->val$finalT:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;->onSuccess(Ljava/lang/Object;)V

    .line 351
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/util/HttpUtils$3;->val$callback:Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;

    iget v1, p0, Lcom/xiaomi/scanner/util/HttpUtils$3;->val$code:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;->onFail(I)V

    goto :goto_0
.end method
