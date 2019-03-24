.class public Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public cellsUsed:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public expandable:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public expanded:Z

.field public extraPixels:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public isOverflowButton:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public preventEdgeOffset:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 221
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 222
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 223
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 226
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 227
    iput-boolean p3, p0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 212
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 213
    return-void
.end method

.method public constructor <init>(Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 217
    iget-boolean p1, p1, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    iput-boolean p1, p0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 218
    return-void
.end method
