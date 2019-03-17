.class final Lcom/google/zxing/pdf417/encoder/BarcodeRow;
.super Ljava/lang/Object;
.source "BarcodeRow.java"


# instance fields
.field private currentLocation:I

.field private final row:[B


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->row:[B

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->currentLocation:I

    .line 34
    return-void
.end method


# virtual methods
.method addBar(ZI)V
    .locals 3
    .param p1, "black"    # Z
    .param p2, "width"    # I

    .prologue
    .line 61
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 64
    return-void

    .line 62
    :cond_0
    iget v1, p0, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->currentLocation:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->currentLocation:I

    invoke-virtual {p0, v1, p1}, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->set(IZ)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getScaledRow(I)[B
    .locals 4
    .param p1, "scale"    # I

    .prologue
    .line 79
    iget-object v2, p0, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->row:[B

    array-length v2, v2

    mul-int/2addr v2, p1

    new-array v1, v2, [B

    .line 80
    .local v1, "output":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 83
    return-object v1

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->row:[B

    div-int v3, v0, p1

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method set(IZ)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "black"    # Z

    .prologue
    .line 53
    iget-object v1, p0, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->row:[B

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, v1, p1

    .line 54
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
