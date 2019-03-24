.class public Lmiui/widget/DropDownSingleChoiceMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/widget/DropDownPopupWindow$Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;
    }
.end annotation


# instance fields
.field private RA:Lmiui/widget/DropDownPopupWindow;

.field private Rx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Ry:I

.field private Rz:Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

.field private mContext:Landroid/content/Context;

.field private oP:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic a(Lmiui/widget/DropDownSingleChoiceMenu;I)I
    .locals 0

    .line 24
    iput p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Ry:I

    return p1
.end method

.method static synthetic a(Lmiui/widget/DropDownSingleChoiceMenu;)Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Rz:Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    return-object p0
.end method

.method static synthetic b(Lmiui/widget/DropDownSingleChoiceMenu;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lmiui/widget/DropDownSingleChoiceMenu;->eG()V

    return-void
.end method

.method private eG()V
    .locals 1

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->RA:Lmiui/widget/DropDownPopupWindow;

    .line 115
    return-void
.end method

.method private m(Landroid/view/View;)V
    .locals 1

    .line 139
    new-instance v0, Lmiui/widget/DropDownSingleChoiceMenu$3;

    invoke-direct {v0, p0}, Lmiui/widget/DropDownSingleChoiceMenu$3;-><init>(Lmiui/widget/DropDownSingleChoiceMenu;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 152
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 108
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->RA:Lmiui/widget/DropDownPopupWindow;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->RA:Lmiui/widget/DropDownPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/DropDownPopupWindow;->dismiss()V

    .line 111
    :cond_0
    return-void
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Rx:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedItem()I
    .locals 1

    .line 49
    iget v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Ry:I

    return v0
.end method

.method public onAniamtionUpdate(Landroid/view/View;F)V
    .locals 0

    .line 130
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .line 123
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Rz:Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Rz:Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    invoke-interface {v0}, Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;->onDismiss()V

    .line 126
    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    .line 119
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->oP:Landroid/view/View;

    .line 54
    invoke-direct {p0, p1}, Lmiui/widget/DropDownSingleChoiceMenu;->m(Landroid/view/View;)V

    .line 55
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Rx:Ljava/util/List;

    .line 38
    return-void
.end method

.method public setItems([Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Rx:Ljava/util/List;

    .line 42
    return-void
.end method

.method public setOnMenuListener(Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Rz:Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    .line 63
    return-void
.end method

.method public setSelectedItem(I)V
    .locals 0

    .line 45
    iput p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Ry:I

    .line 46
    return-void
.end method

.method public show()V
    .locals 5

    .line 66
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Rx:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->oP:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->RA:Lmiui/widget/DropDownPopupWindow;

    if-nez v0, :cond_1

    .line 71
    new-instance v0, Lmiui/widget/DropDownPopupWindow;

    iget-object v1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lmiui/widget/DropDownPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->RA:Lmiui/widget/DropDownPopupWindow;

    .line 72
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->RA:Lmiui/widget/DropDownPopupWindow;

    new-instance v1, Lmiui/widget/DropDownSingleChoiceMenu$1;

    invoke-direct {v1, p0}, Lmiui/widget/DropDownSingleChoiceMenu$1;-><init>(Lmiui/widget/DropDownSingleChoiceMenu;)V

    invoke-virtual {v0, v1}, Lmiui/widget/DropDownPopupWindow;->setContainerController(Lmiui/widget/DropDownPopupWindow$ContainerController;)V

    .line 85
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->RA:Lmiui/widget/DropDownPopupWindow;

    invoke-virtual {v0, p0}, Lmiui/widget/DropDownPopupWindow;->setDropDownController(Lmiui/widget/DropDownPopupWindow$Controller;)V

    .line 86
    new-instance v0, Lmiui/widget/DropDownPopupWindow$ListController;

    iget-object v1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->RA:Lmiui/widget/DropDownPopupWindow;

    invoke-direct {v0, v1}, Lmiui/widget/DropDownPopupWindow$ListController;-><init>(Lmiui/widget/DropDownPopupWindow;)V

    .line 88
    invoke-virtual {v0}, Lmiui/widget/DropDownPopupWindow$ListController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 89
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mContext:Landroid/content/Context;

    sget v3, Lcom/miui/internal/R$layout;->select_dropdown_popup_singlechoice:I

    iget-object v4, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Rx:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    new-instance v1, Lmiui/widget/DropDownSingleChoiceMenu$2;

    invoke-direct {v1, p0}, Lmiui/widget/DropDownSingleChoiceMenu$2;-><init>(Lmiui/widget/DropDownSingleChoiceMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 100
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 101
    iget v2, p0, Lmiui/widget/DropDownSingleChoiceMenu;->Ry:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 102
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->RA:Lmiui/widget/DropDownPopupWindow;

    iget-object v1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->oP:Landroid/view/View;

    invoke-virtual {v0, v1}, Lmiui/widget/DropDownPopupWindow;->setAnchor(Landroid/view/View;)V

    .line 103
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->RA:Lmiui/widget/DropDownPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/DropDownPopupWindow;->show()V

    .line 105
    :cond_1
    return-void

    .line 67
    :cond_2
    :goto_0
    return-void
.end method
