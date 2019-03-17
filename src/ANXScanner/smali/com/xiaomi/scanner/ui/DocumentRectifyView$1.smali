.class Lcom/xiaomi/scanner/ui/DocumentRectifyView$1;
.super Ljava/lang/Object;
.source "DocumentRectifyView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/ui/DocumentRectifyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/graphics/Point;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/ui/DocumentRectifyView;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/ui/DocumentRectifyView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/ui/DocumentRectifyView;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/DocumentRectifyView$1;->this$0:Lcom/xiaomi/scanner/ui/DocumentRectifyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 4
    .param p1, "lhs"    # Landroid/graphics/Point;
    .param p2, "rhs"    # Landroid/graphics/Point;

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 408
    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    if-le v2, v3, :cond_1

    .line 419
    :cond_0
    :goto_0
    return v0

    .line 410
    :cond_1
    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    if-ge v2, v3, :cond_2

    move v0, v1

    .line 411
    goto :goto_0

    .line 413
    :cond_2
    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->x:I

    if-lt v2, v3, :cond_0

    .line 415
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    if-le v0, v2, :cond_3

    move v0, v1

    .line 416
    goto :goto_0

    .line 419
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 405
    check-cast p1, Landroid/graphics/Point;

    check-cast p2, Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/scanner/ui/DocumentRectifyView$1;->compare(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v0

    return v0
.end method
