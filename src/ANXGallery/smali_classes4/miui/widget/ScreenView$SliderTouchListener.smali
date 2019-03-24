.class Lmiui/widget/ScreenView$SliderTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliderTouchListener"
.end annotation


# instance fields
.field final synthetic Zv:Lmiui/widget/ScreenView;


# direct methods
.method private constructor <init>(Lmiui/widget/ScreenView;)V
    .locals 0

    .line 2267
    iput-object p1, p0, Lmiui/widget/ScreenView$SliderTouchListener;->Zv:Lmiui/widget/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V
    .locals 0

    .line 2267
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView$SliderTouchListener;-><init>(Lmiui/widget/ScreenView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 2270
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 2271
    nop

    .line 2272
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-int/lit8 v1, p1, -0x1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2273
    iget-object v1, p0, Lmiui/widget/ScreenView$SliderTouchListener;->Zv:Lmiui/widget/ScreenView;

    invoke-virtual {v1}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    .line 2274
    int-to-float v2, v1

    mul-float/2addr v2, v0

    int-to-float p1, p1

    div-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 2275
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 2283
    :pswitch_0
    iget-object p2, p0, Lmiui/widget/ScreenView$SliderTouchListener;->Zv:Lmiui/widget/ScreenView;

    invoke-static {p2, v2}, Lmiui/widget/ScreenView;->a(Lmiui/widget/ScreenView;I)V

    .line 2284
    iget-object p2, p0, Lmiui/widget/ScreenView$SliderTouchListener;->Zv:Lmiui/widget/ScreenView;

    iget-object v2, p0, Lmiui/widget/ScreenView$SliderTouchListener;->Zv:Lmiui/widget/ScreenView;

    iget v2, v2, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v0

    div-float/2addr v1, p1

    iget-object p1, p0, Lmiui/widget/ScreenView$SliderTouchListener;->Zv:Lmiui/widget/ScreenView;

    iget p1, p1, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr v1, p1

    float-to-int p1, v1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lmiui/widget/ScreenView;->scrollTo(II)V

    .line 2286
    goto :goto_0

    .line 2290
    :pswitch_1
    iget-object p1, p0, Lmiui/widget/ScreenView$SliderTouchListener;->Zv:Lmiui/widget/ScreenView;

    invoke-virtual {p1, v2}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    .line 2291
    iget-object p1, p0, Lmiui/widget/ScreenView$SliderTouchListener;->Zv:Lmiui/widget/ScreenView;

    iget-object p2, p0, Lmiui/widget/ScreenView$SliderTouchListener;->Zv:Lmiui/widget/ScreenView;

    iget p2, p2, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget-object v0, p0, Lmiui/widget/ScreenView$SliderTouchListener;->Zv:Lmiui/widget/ScreenView;

    invoke-static {v0}, Lmiui/widget/ScreenView;->f(Lmiui/widget/ScreenView;)I

    move-result v0

    invoke-static {p1, p2, v0}, Lmiui/widget/ScreenView;->a(Lmiui/widget/ScreenView;II)V

    goto :goto_0

    .line 2277
    :pswitch_2
    iget-object p1, p0, Lmiui/widget/ScreenView$SliderTouchListener;->Zv:Lmiui/widget/ScreenView;

    invoke-static {p1}, Lmiui/widget/ScreenView;->e(Lmiui/widget/ScreenView;)Landroid/widget/Scroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2278
    iget-object p1, p0, Lmiui/widget/ScreenView$SliderTouchListener;->Zv:Lmiui/widget/ScreenView;

    invoke-static {p1}, Lmiui/widget/ScreenView;->e(Lmiui/widget/ScreenView;)Landroid/widget/Scroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2280
    :cond_0
    iget-object p1, p0, Lmiui/widget/ScreenView$SliderTouchListener;->Zv:Lmiui/widget/ScreenView;

    const/4 v0, 0x3

    invoke-static {p1, p2, v0}, Lmiui/widget/ScreenView;->a(Lmiui/widget/ScreenView;Landroid/view/MotionEvent;I)V

    .line 2281
    nop

    .line 2295
    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
