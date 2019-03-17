.class public Lcom/taobao/ma/ar/ARResult;
.super Ljava/lang/Object;
.source "ARResult.java"


# instance fields
.field public byteId:[B

.field public byteIdLen:I

.field public dim:I

.field public id:Ljava/lang/String;

.field public pointNum:I

.field public status:I

.field public x:[I

.field public y:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/taobao/ma/ar/ARResult;->x:[I

    .line 8
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/taobao/ma/ar/ARResult;->y:[I

    .line 10
    const/16 v0, 0x64

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/taobao/ma/ar/ARResult;->byteId:[B

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/taobao/ma/ar/ARResult;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public convertId()Lcom/taobao/ma/ar/ARResult;
    .locals 6

    .prologue
    .line 18
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/ma/ar/ARResult;->byteId:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/taobao/ma/ar/ARResult;->byteIdLen:I

    const-string v5, "utf-8"

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, p0, Lcom/taobao/ma/ar/ARResult;->id:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :goto_0
    return-object p0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
