.class Lmiui/widget/ScreenView$SeekBarIndicator;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lmiui/widget/ScreenView$Indicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekBarIndicator"
.end annotation


# instance fields
.field final synthetic Zv:Lmiui/widget/ScreenView;


# direct methods
.method public constructor <init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V
    .locals 0

    .line 2169
    iput-object p1, p0, Lmiui/widget/ScreenView$SeekBarIndicator;->Zv:Lmiui/widget/ScreenView;

    .line 2170
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2171
    return-void
.end method


# virtual methods
.method public aI(I)Z
    .locals 3

    .line 2175
    invoke-virtual {p0}, Lmiui/widget/ScreenView$SeekBarIndicator;->getLeft()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2176
    invoke-static {}, Lmiui/widget/ScreenView;->fF()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/widget/ScreenView$SeekBarIndicator;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lmiui/widget/ScreenView$SeekBarIndicator;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/miui/internal/variable/Android_View_View_class;->setRightDirectly(Landroid/view/View;I)V

    .line 2177
    invoke-static {}, Lmiui/widget/ScreenView;->fF()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->setLeftDirectly(Landroid/view/View;I)V

    .line 2178
    const/4 p1, 0x1

    return p1

    .line 2180
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
