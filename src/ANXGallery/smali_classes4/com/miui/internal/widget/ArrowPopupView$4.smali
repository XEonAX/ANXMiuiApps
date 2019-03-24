.class Lcom/miui/internal/widget/ArrowPopupView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/widget/ArrowPopupView;->bF()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tz:Lcom/miui/internal/widget/ArrowPopupView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ArrowPopupView;)V
    .locals 0

    .line 765
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$4;->tz:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 768
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$4;->tz:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-static {p1}, Lcom/miui/internal/widget/ArrowPopupView;->c(Lcom/miui/internal/widget/ArrowPopupView;)Lmiui/widget/ArrowPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/widget/ArrowPopupWindow;->dismiss()V

    .line 769
    return-void
.end method
