.class Lmiui/widget/FloatingActionButton$OvalShapeWithPadding;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OvalShapeWithPadding"
.end annotation


# instance fields
.field private Ts:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 212
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 214
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/widget/FloatingActionButton$OvalShapeWithPadding;->Ts:Ljava/lang/ref/WeakReference;

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 217
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 218
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/widget/FloatingActionButton$OvalShapeWithPadding;->Ts:Ljava/lang/ref/WeakReference;

    .line 219
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4

    .line 223
    iget-object v0, p0, Lmiui/widget/FloatingActionButton$OvalShapeWithPadding;->Ts:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 225
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 227
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 228
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 229
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    .line 231
    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 232
    add-int/2addr v2, v1

    .line 233
    add-int/2addr v3, v1

    .line 234
    int-to-float v0, v2

    int-to-float v2, v3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 236
    :cond_0
    return-void
.end method
