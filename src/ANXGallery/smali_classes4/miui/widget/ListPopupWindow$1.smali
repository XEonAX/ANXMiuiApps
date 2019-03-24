.class Lmiui/widget/ListPopupWindow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 912
    iput-object p1, p0, Lmiui/widget/ListPopupWindow$1;->UB:Lmiui/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 915
    iget-object v0, p0, Lmiui/widget/ListPopupWindow$1;->UB:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    .line 916
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lmiui/widget/ListPopupWindow$1;->UB:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow;->show()V

    .line 919
    :cond_0
    return-void
.end method
