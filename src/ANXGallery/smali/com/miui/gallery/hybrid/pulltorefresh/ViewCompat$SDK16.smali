.class Lcom/miui/gallery/hybrid/pulltorefresh/ViewCompat$SDK16;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/hybrid/pulltorefresh/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SDK16"
.end annotation


# direct methods
.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 65
    return-void
.end method
