.class Landroid/support/v4/view/ViewCompat$ViewCompatApi16Impl;
.super Landroid/support/v4/view/ViewCompat$ViewCompatApi15Impl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCompatApi16Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1051
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatApi15Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getImportantForAccessibility(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1078
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1116
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1111
    invoke-virtual {p1}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public hasTransientState(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1054
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    return v0
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1062
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 1063
    return-void
.end method

.method public postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 1070
    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1071
    return-void
.end method

.method public postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "delayMillis"    # J

    .prologue
    .line 1074
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 1075
    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mode"    # I

    .prologue
    .line 1085
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 1086
    const/4 p2, 0x2

    .line 1089
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1090
    return-void
.end method
