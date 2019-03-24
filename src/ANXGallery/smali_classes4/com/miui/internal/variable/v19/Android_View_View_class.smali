.class public Lcom/miui/internal/variable/v19/Android_View_View_class;
.super Lcom/miui/internal/variable/v16/Android_View_View_class;
.source "SourceFile"


# static fields
.field private static final IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/miui/internal/variable/v16/Android_View_View_class;-><init>()V

    return-void
.end method


# virtual methods
.method public setImportantForAccessibilityNoHideDescendants(Landroid/view/View;)V
    .locals 1

    .line 19
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 20
    return-void
.end method
