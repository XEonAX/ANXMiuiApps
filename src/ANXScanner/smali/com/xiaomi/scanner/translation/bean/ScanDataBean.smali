.class public Lcom/xiaomi/scanner/translation/bean/ScanDataBean;
.super Ljava/lang/Object;
.source "ScanDataBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCropRect:Landroid/graphics/Rect;

.field private mType:Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "type"    # Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;->mBitmap:Landroid/graphics/Bitmap;

    .line 26
    iput-object p2, p0, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;->mType:Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "type"    # Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;->mBitmap:Landroid/graphics/Bitmap;

    .line 20
    iput-object p2, p0, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;->mType:Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;

    .line 21
    iput-object p3, p0, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;->mCropRect:Landroid/graphics/Rect;

    .line 22
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;->mCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScanType()Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;->mType:Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;

    return-object v0
.end method

.method public isScanPointType()Z
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;->mType:Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;

    sget-object v1, Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;->TRANSLATE_POINT:Lcom/xiaomi/scanner/translation/bean/ScanDataBean$ScanType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/bean/ScanDataBean;->mBitmap:Landroid/graphics/Bitmap;

    .line 39
    return-void
.end method
