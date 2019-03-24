.class Lmiui/widget/DropDownPopupWindow$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DropDownPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ru:Lmiui/widget/DropDownPopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/DropDownPopupWindow;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow$2;->Ru:Lmiui/widget/DropDownPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private eF()V
    .locals 1

    .line 64
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$2;->Ru:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->f(Lmiui/widget/DropDownPopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$2;->Ru:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->g(Lmiui/widget/DropDownPopupWindow;)V

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow$2;->eF()V

    .line 84
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow$2;->eF()V

    .line 79
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 88
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow$2;->Ru:Lmiui/widget/DropDownPopupWindow;

    invoke-static {p1}, Lmiui/widget/DropDownPopupWindow;->f(Lmiui/widget/DropDownPopupWindow;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow$2;->Ru:Lmiui/widget/DropDownPopupWindow;

    invoke-static {p1}, Lmiui/widget/DropDownPopupWindow;->h(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$Controller;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow$2;->Ru:Lmiui/widget/DropDownPopupWindow;

    invoke-static {p1}, Lmiui/widget/DropDownPopupWindow;->h(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$Controller;

    move-result-object p1

    invoke-interface {p1}, Lmiui/widget/DropDownPopupWindow$Controller;->onDismiss()V

    .line 74
    :cond_0
    return-void
.end method
