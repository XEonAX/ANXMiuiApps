.class Lcom/miui/internal/widget/GuidePopupView$WrapperOnClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/GuidePopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrapperOnClickListener"
.end annotation


# instance fields
.field public rM:Landroid/view/View$OnClickListener;

.field final synthetic uP:Lcom/miui/internal/widget/GuidePopupView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/GuidePopupView;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/miui/internal/widget/GuidePopupView$WrapperOnClickListener;->uP:Lcom/miui/internal/widget/GuidePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView$WrapperOnClickListener;->rM:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView$WrapperOnClickListener;->rM:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 616
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/GuidePopupView$WrapperOnClickListener;->uP:Lcom/miui/internal/widget/GuidePopupView;

    invoke-static {p1}, Lcom/miui/internal/widget/GuidePopupView;->a(Lcom/miui/internal/widget/GuidePopupView;)Lmiui/widget/GuidePopupWindow;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiui/widget/GuidePopupWindow;->dismiss(Z)V

    .line 617
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lcom/miui/internal/widget/GuidePopupView$WrapperOnClickListener;->rM:Landroid/view/View$OnClickListener;

    .line 609
    return-void
.end method
