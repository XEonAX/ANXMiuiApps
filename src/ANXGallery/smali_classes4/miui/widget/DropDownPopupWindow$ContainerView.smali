.class Lmiui/widget/DropDownPopupWindow$ContainerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DropDownPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerView"
.end annotation


# instance fields
.field final synthetic Ru:Lmiui/widget/DropDownPopupWindow;


# direct methods
.method public constructor <init>(Lmiui/widget/DropDownPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 92
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow$ContainerView;->Ru:Lmiui/widget/DropDownPopupWindow;

    .line 93
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 108
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 111
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 112
    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow$ContainerView;->Ru:Lmiui/widget/DropDownPopupWindow;

    invoke-virtual {p1}, Lmiui/widget/DropDownPopupWindow;->dismiss()V

    .line 113
    return p2

    .line 116
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 98
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 100
    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow$ContainerView;->Ru:Lmiui/widget/DropDownPopupWindow;

    invoke-virtual {p1}, Lmiui/widget/DropDownPopupWindow;->dismiss()V

    .line 103
    :cond_0
    return v1
.end method
