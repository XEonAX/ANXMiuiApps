.class Lmiui/widget/AlphabetFastIndexer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/AlphabetFastIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic OE:Lmiui/widget/AlphabetFastIndexer;


# direct methods
.method constructor <init>(Lmiui/widget/AlphabetFastIndexer;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer$1;->OE:Lmiui/widget/AlphabetFastIndexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 106
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$1;->OE:Lmiui/widget/AlphabetFastIndexer;

    invoke-static {v0}, Lmiui/widget/AlphabetFastIndexer;->a(Lmiui/widget/AlphabetFastIndexer;)Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$1;->OE:Lmiui/widget/AlphabetFastIndexer;

    invoke-virtual {v1}, Lmiui/widget/AlphabetFastIndexer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->c(FF)V

    .line 107
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer$1;->OE:Lmiui/widget/AlphabetFastIndexer;

    invoke-virtual {p1}, Lmiui/widget/AlphabetFastIndexer;->postInvalidate()V

    .line 108
    return-void
.end method
