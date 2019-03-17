.class public Lcom/taobao/ma/qr/common/result/Ma4GResult;
.super Lcom/taobao/ma/common/result/MaResult;
.source "Ma4GResult.java"


# instance fields
.field private signature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/ma/common/result/MaType;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lcom/taobao/ma/common/result/MaType;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/taobao/ma/common/result/MaResult;-><init>(Lcom/taobao/ma/common/result/MaType;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/taobao/ma/common/result/MaType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lcom/taobao/ma/common/result/MaType;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/taobao/ma/qr/common/result/Ma4GResult;-><init>(Lcom/taobao/ma/common/result/MaType;Ljava/lang/String;)V

    .line 16
    iput-object p3, p0, Lcom/taobao/ma/qr/common/result/Ma4GResult;->signature:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/taobao/ma/qr/common/result/Ma4GResult;->signature:Ljava/lang/String;

    return-object v0
.end method
