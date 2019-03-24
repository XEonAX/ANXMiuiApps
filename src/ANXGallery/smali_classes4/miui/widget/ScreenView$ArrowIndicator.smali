.class Lmiui/widget/ScreenView$ArrowIndicator;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Lmiui/widget/ScreenView$Indicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrowIndicator"
.end annotation


# instance fields
.field final synthetic Zv:Lmiui/widget/ScreenView;


# direct methods
.method public constructor <init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V
    .locals 0

    .line 2152
    iput-object p1, p0, Lmiui/widget/ScreenView$ArrowIndicator;->Zv:Lmiui/widget/ScreenView;

    .line 2153
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2154
    return-void
.end method


# virtual methods
.method public aI(I)Z
    .locals 3

    .line 2158
    invoke-virtual {p0}, Lmiui/widget/ScreenView$ArrowIndicator;->getLeft()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2159
    invoke-static {}, Lmiui/widget/ScreenView;->fF()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/widget/ScreenView$ArrowIndicator;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lmiui/widget/ScreenView$ArrowIndicator;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/miui/internal/variable/Android_View_View_class;->setRightDirectly(Landroid/view/View;I)V

    .line 2160
    invoke-static {}, Lmiui/widget/ScreenView;->fF()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->setLeftDirectly(Landroid/view/View;I)V

    .line 2161
    const/4 p1, 0x1

    return p1

    .line 2163
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
