.class Lmiui/widget/ListPopupWindow$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/ListPopupWindow;->eW()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic UB:Lmiui/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/ListPopupWindow;)V
    .locals 0

    .line 930
    iput-object p1, p0, Lmiui/widget/ListPopupWindow$2;->UB:Lmiui/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 934
    const/4 p1, -0x1

    if-eq p3, p1, :cond_0

    .line 935
    iget-object p1, p0, Lmiui/widget/ListPopupWindow$2;->UB:Lmiui/widget/ListPopupWindow;

    invoke-static {p1}, Lmiui/widget/ListPopupWindow;->a(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ListPopupWindow$DropDownListView;

    move-result-object p1

    .line 937
    if-eqz p1, :cond_0

    .line 938
    const/4 p2, 0x0

    invoke-static {p1, p2}, Lmiui/widget/ListPopupWindow$DropDownListView;->a(Lmiui/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 941
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 944
    return-void
.end method
