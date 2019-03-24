.class Lmiui/widget/ListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic UB:Lmiui/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lmiui/widget/ListPopupWindow;)V
    .locals 0

    .line 1362
    iput-object p1, p0, Lmiui/widget/ListPopupWindow$ResizePopupRunnable;->UB:Lmiui/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V
    .locals 0

    .line 1362
    invoke-direct {p0, p1}, Lmiui/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Lmiui/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1365
    iget-object v0, p0, Lmiui/widget/ListPopupWindow$ResizePopupRunnable;->UB:Lmiui/widget/ListPopupWindow;

    invoke-static {v0}, Lmiui/widget/ListPopupWindow;->a(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/ListPopupWindow$ResizePopupRunnable;->UB:Lmiui/widget/ListPopupWindow;

    invoke-static {v0}, Lmiui/widget/ListPopupWindow;->a(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/ListPopupWindow$ResizePopupRunnable;->UB:Lmiui/widget/ListPopupWindow;

    invoke-static {v1}, Lmiui/widget/ListPopupWindow;->a(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ListPopupWindow$DropDownListView;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/widget/ListPopupWindow$DropDownListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lmiui/widget/ListPopupWindow$ResizePopupRunnable;->UB:Lmiui/widget/ListPopupWindow;

    .line 1366
    invoke-static {v0}, Lmiui/widget/ListPopupWindow;->a(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/ListPopupWindow$ResizePopupRunnable;->UB:Lmiui/widget/ListPopupWindow;

    iget v1, v1, Lmiui/widget/ListPopupWindow;->Ui:I

    if-gt v0, v1, :cond_0

    .line 1367
    iget-object v0, p0, Lmiui/widget/ListPopupWindow$ResizePopupRunnable;->UB:Lmiui/widget/ListPopupWindow;

    invoke-static {v0}, Lmiui/widget/ListPopupWindow;->b(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ArrowPopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/widget/ArrowPopupWindow;->setInputMethodMode(I)V

    .line 1368
    iget-object v0, p0, Lmiui/widget/ListPopupWindow$ResizePopupRunnable;->UB:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow;->show()V

    .line 1370
    :cond_0
    return-void
.end method
