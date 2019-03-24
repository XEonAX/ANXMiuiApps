.class Lmiui/widget/DynamicListView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DynamicListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field private Sp:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView$1;->Sp:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a(IIF)I
    .locals 1

    .line 70
    int-to-float v0, p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    mul-float/2addr p3, p1

    add-float/2addr v0, p3

    float-to-int p1, v0

    return p1
.end method

.method public evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    .line 59
    iget-object v0, p0, Lmiui/widget/DynamicListView$1;->Sp:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    .line 60
    invoke-virtual {p0, v1, v2, p1}, Lmiui/widget/DynamicListView$1;->a(IIF)I

    move-result v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    .line 61
    invoke-virtual {p0, v2, v3, p1}, Lmiui/widget/DynamicListView$1;->a(IIF)I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, p3, Landroid/graphics/Rect;->right:I

    .line 62
    invoke-virtual {p0, v3, v4, p1}, Lmiui/widget/DynamicListView$1;->a(IIF)I

    move-result v3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    .line 64
    invoke-virtual {p0, p2, p3, p1}, Lmiui/widget/DynamicListView$1;->a(IIF)I

    move-result p1

    .line 60
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 66
    iget-object p1, p0, Lmiui/widget/DynamicListView$1;->Sp:Landroid/graphics/Rect;

    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p2, Landroid/graphics/Rect;

    check-cast p3, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2, p3}, Lmiui/widget/DynamicListView$1;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method
