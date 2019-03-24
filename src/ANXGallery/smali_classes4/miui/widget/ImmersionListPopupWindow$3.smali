.class Lmiui/widget/ImmersionListPopupWindow$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/ImmersionListPopupWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Uc:Lmiui/widget/ImmersionListPopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/ImmersionListPopupWindow;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow$3;->Uc:Lmiui/widget/ImmersionListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$3;->Uc:Lmiui/widget/ImmersionListPopupWindow;

    invoke-static {v0}, Lmiui/widget/ImmersionListPopupWindow;->b(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v4, p3, v0

    .line 161
    if-ltz v4, :cond_0

    iget-object p3, p0, Lmiui/widget/ImmersionListPopupWindow$3;->Uc:Lmiui/widget/ImmersionListPopupWindow;

    invoke-static {p3}, Lmiui/widget/ImmersionListPopupWindow;->c(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/ListAdapter;

    move-result-object p3

    invoke-interface {p3}, Landroid/widget/ListAdapter;->getCount()I

    move-result p3

    if-ge v4, p3, :cond_0

    .line 162
    iget-object p3, p0, Lmiui/widget/ImmersionListPopupWindow$3;->Uc:Lmiui/widget/ImmersionListPopupWindow;

    invoke-static {p3}, Lmiui/widget/ImmersionListPopupWindow;->d(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 164
    :cond_0
    return-void
.end method
