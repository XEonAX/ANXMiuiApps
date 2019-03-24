.class Lmiui/widget/DropDownPopupWindow$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DropDownPopupWindow;->eC()V
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

    .line 273
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow$3;->Ru:Lmiui/widget/DropDownPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 276
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 277
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 278
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1

    if-ltz p1, :cond_0

    iget-object p2, p0, Lmiui/widget/DropDownPopupWindow$3;->Ru:Lmiui/widget/DropDownPopupWindow;

    .line 279
    invoke-static {p2}, Lmiui/widget/DropDownPopupWindow;->c(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContainerView;

    move-result-object p2

    invoke-virtual {p2}, Lmiui/widget/DropDownPopupWindow$ContainerView;->getWidth()I

    move-result p2

    if-ge p1, p2, :cond_0

    if-ltz v0, :cond_0

    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow$3;->Ru:Lmiui/widget/DropDownPopupWindow;

    .line 280
    invoke-static {p1}, Lmiui/widget/DropDownPopupWindow;->c(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContainerView;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/widget/DropDownPopupWindow$ContainerView;->getHeight()I

    move-result p1

    if-lt v0, p1, :cond_1

    .line 281
    :cond_0
    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow$3;->Ru:Lmiui/widget/DropDownPopupWindow;

    invoke-virtual {p1}, Lmiui/widget/DropDownPopupWindow;->dismiss()V

    .line 282
    const/4 p1, 0x1

    return p1

    .line 284
    :cond_1
    const/4 p1, 0x0

    return p1
.end method
