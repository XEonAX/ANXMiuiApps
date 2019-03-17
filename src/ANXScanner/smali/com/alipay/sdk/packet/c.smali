.class public final Lcom/alipay/sdk/packet/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:[B


# direct methods
.method public constructor <init>(Z[B)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean p1, p0, Lcom/alipay/sdk/packet/c;->a:Z

    .line 10
    iput-object p2, p0, Lcom/alipay/sdk/packet/c;->b:[B

    .line 11
    return-void
.end method

.method private a(Z)V
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/alipay/sdk/packet/c;->a:Z

    .line 19
    return-void
.end method

.method private a([B)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/sdk/packet/c;->b:[B

    .line 27
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/alipay/sdk/packet/c;->a:Z

    return v0
.end method

.method private b()[B
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/sdk/packet/c;->b:[B

    return-object v0
.end method
