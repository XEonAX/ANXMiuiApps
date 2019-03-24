.class public Lcom/miui/internal/widget/ArrowPopupContentWrapper;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private rl:Landroid/graphics/Paint;

.field private rm:Landroid/graphics/Bitmap;

.field private rn:Landroid/graphics/Bitmap;

.field private ro:Landroid/graphics/Bitmap;

.field private rp:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->rl:Landroid/graphics/Paint;

    .line 41
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->rl:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 42
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->rl:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 44
    sget p2, Lcom/miui/internal/R$drawable;->popup_mask_1:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->rm:Landroid/graphics/Bitmap;

    .line 45
    sget p2, Lcom/miui/internal/R$drawable;->popup_mask_2:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->rn:Landroid/graphics/Bitmap;

    .line 46
    sget p2, Lcom/miui/internal/R$drawable;->popup_mask_3:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->ro:Landroid/graphics/Bitmap;

    .line 47
    sget p2, Lcom/miui/internal/R$drawable;->popup_mask_4:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->rp:Landroid/graphics/Bitmap;

    .line 48
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 52
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 53
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 54
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->rm:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getPaddingLeft()I

    move-result v1

    const/4 v2, 0x0

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->rl:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 55
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->rn:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->rn:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->rl:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 56
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->ro:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getPaddingLeft()I

    move-result v1

    add-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->ro:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->rl:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 57
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->rp:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->rp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 58
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->rp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->rl:Landroid/graphics/Paint;

    .line 57
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 60
    return-void
.end method
