.class Lmiui/widget/ListPopupWindow$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic UB:Lmiui/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lmiui/widget/ListPopupWindow;)V
    .locals 0

    .line 1339
    iput-object p1, p0, Lmiui/widget/ListPopupWindow$PopupDataSetObserver;->UB:Lmiui/widget/ListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V
    .locals 0

    .line 1339
    invoke-direct {p0, p1}, Lmiui/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Lmiui/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1343
    iget-object v0, p0, Lmiui/widget/ListPopupWindow$PopupDataSetObserver;->UB:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Lmiui/widget/ListPopupWindow$PopupDataSetObserver;->UB:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow;->show()V

    .line 1347
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 1351
    iget-object v0, p0, Lmiui/widget/ListPopupWindow$PopupDataSetObserver;->UB:Lmiui/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/ListPopupWindow;->dismiss(Z)V

    .line 1352
    return-void
.end method
