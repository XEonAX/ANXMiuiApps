.class Lmiui/widget/DropDownSingleChoiceMenu$1;
.super Lmiui/widget/DropDownPopupWindow$DefaultContainerController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DropDownSingleChoiceMenu;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic RB:Lmiui/widget/DropDownSingleChoiceMenu;


# direct methods
.method constructor <init>(Lmiui/widget/DropDownSingleChoiceMenu;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu$1;->RB:Lmiui/widget/DropDownSingleChoiceMenu;

    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow$DefaultContainerController;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 82
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu$1;->RB:Lmiui/widget/DropDownSingleChoiceMenu;

    invoke-static {v0}, Lmiui/widget/DropDownSingleChoiceMenu;->b(Lmiui/widget/DropDownSingleChoiceMenu;)V

    .line 83
    return-void
.end method

.method public onShow()V
    .locals 1

    .line 75
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu$1;->RB:Lmiui/widget/DropDownSingleChoiceMenu;

    invoke-static {v0}, Lmiui/widget/DropDownSingleChoiceMenu;->a(Lmiui/widget/DropDownSingleChoiceMenu;)Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu$1;->RB:Lmiui/widget/DropDownSingleChoiceMenu;

    invoke-static {v0}, Lmiui/widget/DropDownSingleChoiceMenu;->a(Lmiui/widget/DropDownSingleChoiceMenu;)Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    move-result-object v0

    invoke-interface {v0}, Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;->onShow()V

    .line 78
    :cond_0
    return-void
.end method
