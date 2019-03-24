.class Lmiui/widget/ImmersionListPopupWindow$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ImmersionListPopupWindow;
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

    .line 60
    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow$1;->Uc:Lmiui/widget/ImmersionListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .line 63
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$1;->Uc:Lmiui/widget/ImmersionListPopupWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/widget/ImmersionListPopupWindow;->a(Lmiui/widget/ImmersionListPopupWindow;Z)Z

    .line 64
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$1;->Uc:Lmiui/widget/ImmersionListPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ImmersionListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$1;->Uc:Lmiui/widget/ImmersionListPopupWindow;

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow$1;->Uc:Lmiui/widget/ImmersionListPopupWindow;

    invoke-static {v1}, Lmiui/widget/ImmersionListPopupWindow;->a(Lmiui/widget/ImmersionListPopupWindow;)I

    move-result v1

    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow$1;->Uc:Lmiui/widget/ImmersionListPopupWindow;

    invoke-virtual {v2}, Lmiui/widget/ImmersionListPopupWindow;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lmiui/widget/ImmersionListPopupWindow;->update(II)V

    .line 67
    :cond_0
    return-void
.end method
