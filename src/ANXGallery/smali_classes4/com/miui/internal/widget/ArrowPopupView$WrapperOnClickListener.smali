.class Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ArrowPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrapperOnClickListener"
.end annotation


# instance fields
.field public rM:Landroid/view/View$OnClickListener;

.field final synthetic tz:Lcom/miui/internal/widget/ArrowPopupView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ArrowPopupView;)V
    .locals 0

    .line 913
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;->tz:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;->rM:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;->rM:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 926
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;->tz:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-static {p1}, Lcom/miui/internal/widget/ArrowPopupView;->c(Lcom/miui/internal/widget/ArrowPopupView;)Lmiui/widget/ArrowPopupWindow;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiui/widget/ArrowPopupWindow;->dismiss(Z)V

    .line 927
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 918
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;->rM:Landroid/view/View$OnClickListener;

    .line 919
    return-void
.end method
