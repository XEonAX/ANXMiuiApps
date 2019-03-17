.class public Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;
.super Ljava/lang/Object;
.source "NvAndroidParticleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cdv/utils/NvAndroidParticleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpriteGenerator"
.end annotation


# instance fields
.field private m_canvas:Landroid/graphics/Canvas;

.field private m_paint:Landroid/graphics/Paint;

.field private m_spriteImageSize:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;->m_canvas:Landroid/graphics/Canvas;

    .line 36
    iget-object v0, p0, Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;->m_canvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;->m_paint:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;->m_paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 40
    iget-object v0, p0, Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    iget-object v0, p0, Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 43
    iput p2, p0, Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;->m_spriteImageSize:I

    .line 44
    return-void
.end method


# virtual methods
.method drawSpriteImage(IILandroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 48
    if-nez p3, :cond_0

    .line 60
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;->m_spriteImageSize:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;->m_spriteImageSize:I

    if-ne v0, v1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;->m_canvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    iget-object v3, p0, Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;->m_canvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/Rect;

    .line 56
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;->m_spriteImageSize:I

    iget v4, p0, Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;->m_spriteImageSize:I

    invoke-direct {v2, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;->m_paint:Landroid/graphics/Paint;

    .line 54
    invoke-virtual {v0, p3, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method
