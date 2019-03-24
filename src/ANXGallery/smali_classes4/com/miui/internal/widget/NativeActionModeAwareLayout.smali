.class public Lcom/miui/internal/widget/NativeActionModeAwareLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;
    }
.end annotation


# instance fields
.field private uQ:Lcom/miui/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method public setActionModeForChildListener(Lcom/miui/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/miui/internal/widget/NativeActionModeAwareLayout;->uQ:Lcom/miui/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;

    .line 26
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/miui/internal/widget/NativeActionModeAwareLayout;->uQ:Lcom/miui/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/miui/internal/widget/NativeActionModeAwareLayout;->uQ:Lcom/miui/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;

    invoke-interface {v0, p2}, Lcom/miui/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;->onActionModeForChild(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p2

    .line 33
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
