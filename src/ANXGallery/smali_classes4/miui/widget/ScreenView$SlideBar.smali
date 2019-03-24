.class Lmiui/widget/ScreenView$SlideBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lmiui/widget/ScreenView$Indicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideBar"
.end annotation


# instance fields
.field private ZH:Landroid/graphics/Bitmap;

.field private ZI:Landroid/graphics/NinePatch;

.field private ZJ:Landroid/graphics/Rect;

.field final synthetic Zv:Lmiui/widget/ScreenView;

.field private ep:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lmiui/widget/ScreenView;Landroid/content/Context;II)V
    .locals 1

    .line 2195
    iput-object p1, p0, Lmiui/widget/ScreenView$SlideBar;->Zv:Lmiui/widget/ScreenView;

    .line 2196
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2190
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiui/widget/ScreenView$SlideBar;->ZJ:Landroid/graphics/Rect;

    .line 2192
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiui/widget/ScreenView$SlideBar;->ep:Landroid/graphics/Rect;

    .line 2197
    nop

    .line 2198
    invoke-virtual {p0}, Lmiui/widget/ScreenView$SlideBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lmiui/widget/ScreenView$SlideBar;->ZH:Landroid/graphics/Bitmap;

    .line 2199
    iget-object p1, p0, Lmiui/widget/ScreenView$SlideBar;->ZH:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 2200
    return-void

    .line 2202
    :cond_0
    iget-object p1, p0, Lmiui/widget/ScreenView$SlideBar;->ZH:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object p1

    .line 2203
    if-eqz p1, :cond_1

    .line 2204
    new-instance p2, Landroid/graphics/NinePatch;

    iget-object p3, p0, Lmiui/widget/ScreenView$SlideBar;->ZH:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-direct {p2, p3, p1, v0}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object p2, p0, Lmiui/widget/ScreenView$SlideBar;->ZI:Landroid/graphics/NinePatch;

    .line 2208
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lmiui/widget/ScreenView$SlideBar;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2209
    invoke-virtual {p1, p4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 2210
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    const/4 p4, -0x2

    const/16 v0, 0x50

    invoke-direct {p2, p3, p4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 2214
    invoke-virtual {p0, p1, p2}, Lmiui/widget/ScreenView$SlideBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2215
    iget-object p2, p0, Lmiui/widget/ScreenView$SlideBar;->ep:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->left:I

    .line 2216
    iget-object p2, p0, Lmiui/widget/ScreenView$SlideBar;->ep:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 2217
    iget-object p2, p0, Lmiui/widget/ScreenView$SlideBar;->ep:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 2218
    iget-object p2, p0, Lmiui/widget/ScreenView$SlideBar;->ep:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p1

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 2219
    iget-object p1, p0, Lmiui/widget/ScreenView$SlideBar;->ZJ:Landroid/graphics/Rect;

    iget-object p2, p0, Lmiui/widget/ScreenView$SlideBar;->ep:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 2220
    iget-object p1, p0, Lmiui/widget/ScreenView$SlideBar;->ZJ:Landroid/graphics/Rect;

    iget-object p2, p0, Lmiui/widget/ScreenView$SlideBar;->ZJ:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Lmiui/widget/ScreenView$SlideBar;->ZH:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2221
    return-void

    .line 2206
    :cond_1
    return-void
.end method


# virtual methods
.method public aI(I)Z
    .locals 3

    .line 2258
    invoke-virtual {p0}, Lmiui/widget/ScreenView$SlideBar;->getLeft()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2259
    invoke-static {}, Lmiui/widget/ScreenView;->fF()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/widget/ScreenView$SlideBar;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lmiui/widget/ScreenView$SlideBar;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/miui/internal/variable/Android_View_View_class;->setRightDirectly(Landroid/view/View;I)V

    .line 2260
    invoke-static {}, Lmiui/widget/ScreenView;->fF()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->setLeftDirectly(Landroid/view/View;I)V

    .line 2261
    const/4 p1, 0x1

    return p1

    .line 2263
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 2231
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2232
    iget-object v0, p0, Lmiui/widget/ScreenView$SlideBar;->ZI:Landroid/graphics/NinePatch;

    if-eqz v0, :cond_0

    .line 2233
    iget-object v0, p0, Lmiui/widget/ScreenView$SlideBar;->ZI:Landroid/graphics/NinePatch;

    iget-object v1, p0, Lmiui/widget/ScreenView$SlideBar;->ZJ:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 2235
    :cond_0
    return-void
.end method

.method public fH()I
    .locals 2

    .line 2253
    invoke-virtual {p0}, Lmiui/widget/ScreenView$SlideBar;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/ScreenView$SlideBar;->ep:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/ScreenView$SlideBar;->ep:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 2

    .line 2225
    iget-object v0, p0, Lmiui/widget/ScreenView$SlideBar;->ZH:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 2226
    invoke-super {p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumHeight()I

    move-result v1

    .line 2225
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 2240
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2241
    iget-object p1, p0, Lmiui/widget/ScreenView$SlideBar;->ZI:Landroid/graphics/NinePatch;

    if-eqz p1, :cond_0

    .line 2242
    iget-object p1, p0, Lmiui/widget/ScreenView$SlideBar;->ZJ:Landroid/graphics/Rect;

    sub-int/2addr p5, p3

    iget-object p2, p0, Lmiui/widget/ScreenView$SlideBar;->ep:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, p2

    iput p5, p1, Landroid/graphics/Rect;->bottom:I

    .line 2243
    iget-object p1, p0, Lmiui/widget/ScreenView$SlideBar;->ZJ:Landroid/graphics/Rect;

    iget-object p2, p0, Lmiui/widget/ScreenView$SlideBar;->ZJ:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget-object p3, p0, Lmiui/widget/ScreenView$SlideBar;->ZI:Landroid/graphics/NinePatch;

    invoke-virtual {p3}, Landroid/graphics/NinePatch;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 2245
    :cond_0
    return-void
.end method

.method public setPosition(II)V
    .locals 2

    .line 2248
    iget-object v0, p0, Lmiui/widget/ScreenView$SlideBar;->ZJ:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/ScreenView$SlideBar;->ep:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 2249
    iget-object p1, p0, Lmiui/widget/ScreenView$SlideBar;->ZJ:Landroid/graphics/Rect;

    iget-object v0, p0, Lmiui/widget/ScreenView$SlideBar;->ep:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 2250
    return-void
.end method
