.class Lcom/miui/internal/widget/SearchActionModeView$ActionBarAnimationProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBarAnimationProcessor"
.end annotation


# instance fields
.field final synthetic wg:Lcom/miui/internal/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SearchActionModeView;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$ActionBarAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 0

    .line 598
    return-void
.end method

.method public onStop(Z)V
    .locals 1

    .line 606
    if-eqz p1, :cond_0

    .line 607
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$ActionBarAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object p1

    .line 608
    if-eqz p1, :cond_0

    .line 609
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 612
    :cond_0
    return-void
.end method

.method public onUpdate(ZF)V
    .locals 0

    .line 602
    return-void
.end method
