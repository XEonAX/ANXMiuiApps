.class public Lcom/xiaomi/scanner/translation/bean/CropImageBean;
.super Ljava/lang/Object;
.source "CropImageBean.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDestRect:Landroid/graphics/Rect;

.field private mSourceRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "source"    # Landroid/graphics/Rect;
    .param p3, "dest"    # Landroid/graphics/Rect;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/bean/CropImageBean;->mBitmap:Landroid/graphics/Bitmap;

    .line 13
    iput-object p2, p0, Lcom/xiaomi/scanner/translation/bean/CropImageBean;->mSourceRect:Landroid/graphics/Rect;

    .line 14
    iput-object p3, p0, Lcom/xiaomi/scanner/translation/bean/CropImageBean;->mDestRect:Landroid/graphics/Rect;

    .line 15
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/bean/CropImageBean;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDestRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/bean/CropImageBean;->mDestRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSourceRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/bean/CropImageBean;->mSourceRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/bean/CropImageBean;->mBitmap:Landroid/graphics/Bitmap;

    .line 35
    return-void
.end method

.method public setDestRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/bean/CropImageBean;->mDestRect:Landroid/graphics/Rect;

    .line 27
    return-void
.end method

.method public setSourceRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/bean/CropImageBean;->mSourceRect:Landroid/graphics/Rect;

    .line 19
    return-void
.end method
