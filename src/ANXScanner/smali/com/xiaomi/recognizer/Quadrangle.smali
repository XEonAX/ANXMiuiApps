.class public Lcom/xiaomi/recognizer/Quadrangle;
.super Ljava/lang/Object;
.source "Quadrangle.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Quadrangle"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/recognizer/Quadrangle;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    .line 12
    const-string v0, "QuadrangleRecognizer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static covertToGray(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "img"    # Landroid/graphics/Bitmap;

    .prologue
    .line 50
    invoke-static {p0}, Lcom/xiaomi/recognizer/Quadrangle;->nativeCovertToGray(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static detectBitmap(Landroid/graphics/Bitmap;)Lcom/xiaomi/recognizer/RecognizeResult;
    .locals 1
    .param p0, "img"    # Landroid/graphics/Bitmap;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/xiaomi/recognizer/Quadrangle;->nativeDetectBitmap(Landroid/graphics/Bitmap;)Lcom/xiaomi/recognizer/RecognizeResult;

    move-result-object v0

    return-object v0
.end method

.method public static detectByteArray([BII)Lcom/xiaomi/recognizer/RecognizeResult;
    .locals 1
    .param p0, "img"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 24
    invoke-static {p0, p1, p2}, Lcom/xiaomi/recognizer/Quadrangle;->nativeDetectByteArray([BII)Lcom/xiaomi/recognizer/RecognizeResult;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeCovertToGray(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDetectBitmap(Landroid/graphics/Bitmap;)Lcom/xiaomi/recognizer/RecognizeResult;
.end method

.method private static native nativeDetectByteArray([BII)Lcom/xiaomi/recognizer/RecognizeResult;
.end method

.method private static native nativeRectify(Landroid/graphics/Bitmap;[FZ)Landroid/graphics/Bitmap;
.end method

.method public static rectify(Landroid/graphics/Bitmap;[FZ)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "img"    # Landroid/graphics/Bitmap;
    .param p1, "corners"    # [F
    .param p2, "enhanceImage"    # Z

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/xiaomi/recognizer/Quadrangle;->nativeRectify(Landroid/graphics/Bitmap;[FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
