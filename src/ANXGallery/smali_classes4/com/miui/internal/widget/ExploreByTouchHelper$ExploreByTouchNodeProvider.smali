.class Lcom/miui/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExploreByTouchNodeProvider"
.end annotation


# instance fields
.field final synthetic un:Lcom/miui/internal/widget/ExploreByTouchHelper;


# direct methods
.method private constructor <init>(Lcom/miui/internal/widget/ExploreByTouchHelper;)V
    .locals 0

    .line 822
    iput-object p1, p0, Lcom/miui/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->un:Lcom/miui/internal/widget/ExploreByTouchHelper;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/widget/ExploreByTouchHelper;Lcom/miui/internal/widget/ExploreByTouchHelper$1;)V
    .locals 0

    .line 822
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;-><init>(Lcom/miui/internal/widget/ExploreByTouchHelper;)V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->un:Lcom/miui/internal/widget/ExploreByTouchHelper;

    invoke-static {v0, p1}, Lcom/miui/internal/widget/ExploreByTouchHelper;->a(Lcom/miui/internal/widget/ExploreByTouchHelper;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/miui/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->un:Lcom/miui/internal/widget/ExploreByTouchHelper;

    invoke-static {v0, p1, p2, p3}, Lcom/miui/internal/widget/ExploreByTouchHelper;->a(Lcom/miui/internal/widget/ExploreByTouchHelper;IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
