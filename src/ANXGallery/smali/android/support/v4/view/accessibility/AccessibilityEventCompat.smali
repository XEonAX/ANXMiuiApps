.class public final Landroid/support/v4/view/accessibility/AccessibilityEventCompat;
.super Ljava/lang/Object;
.source "AccessibilityEventCompat.java"


# direct methods
.method public static getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 2
    .param p0, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 284
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    .line 286
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 2
    .param p0, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p1, "changeTypes"    # I

    .prologue
    .line 264
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 265
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 267
    :cond_0
    return-void
.end method
