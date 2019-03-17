.class public Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;
.super Ljava/lang/Object;
.source "CloudConfigNetworking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field private mBody:[B

.field private mCanceled:Z

.field private mHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;

.field private mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;->mHeaders:Ljava/util/HashMap;

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;->mCanceled:Z

    .line 324
    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;)Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;->mListener:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;->mCanceled:Z

    return v0
.end method


# virtual methods
.method public putHeader(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;->mHeaders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public setBody([B)V
    .locals 0
    .param p1, "body"    # [B

    .prologue
    .line 342
    iput-object p1, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;->mBody:[B

    .line 343
    return-void
.end method

.method public setListener(Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;->mListener:Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$HttpListener;

    .line 335
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUrl"    # Ljava/lang/String;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/xiaomi/scanner/module/amazoncloudconfig/CloudConfigNetworking$Request;->mUrl:Ljava/lang/String;

    .line 339
    return-void
.end method
