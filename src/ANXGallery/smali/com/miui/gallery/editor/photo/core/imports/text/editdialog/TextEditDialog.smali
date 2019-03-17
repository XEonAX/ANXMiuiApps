.class public Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "TextEditDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$StatusListener;,
        Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;,
        Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$LayoutListener;,
        Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;
    }
.end annotation


# instance fields
.field private mConfigChangeListener:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;

.field private mContainerView:Landroid/widget/FrameLayout;

.field private mCurrentHeight:I

.field private mCurrentTab:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

.field private mDialogSubMenuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;",
            ">;"
        }
    .end annotation
.end field

.field private mEditText:Landroid/widget/EditText;

.field private mEditView:Landroid/widget/RelativeLayout;

.field private mInitializeData:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

.field private mKeyBoardHeight:I

.field private mNavigationClickListener:Landroid/view/View$OnClickListener;

.field private mNavigationContainer:Landroid/widget/LinearLayout;

.field private mScreenHeight:I

.field private mStatusListener:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$StatusListener;

.field private mTabContainer:Landroid/widget/FrameLayout;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mWholeView:Landroid/view/ViewGroup;

.field private mWillEditText:Ljava/lang/String;

.field private mWillSelection:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 44
    iput-boolean v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mWillSelection:Z

    .line 46
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mScreenHeight:I

    .line 50
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;->KEYBOARD:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mCurrentTab:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mDialogSubMenuList:Ljava/util/List;

    .line 57
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mCurrentHeight:I

    .line 58
    iput v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mKeyBoardHeight:I

    .line 295
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$5;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mNavigationClickListener:Landroid/view/View$OnClickListener;

    .line 380
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mContainerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$1200(Landroid/view/View;ILandroid/graphics/Rect;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/graphics/Rect;

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->getHeightDifference(Landroid/view/View;ILandroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mCurrentHeight:I

    return v0
.end method

.method static synthetic access$1302(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mCurrentHeight:I

    return p1
.end method

.method static synthetic access$1400(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->checkMenuIndex(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->notifyKeyboardHeightChange()V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mDialogSubMenuList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->hideKeyboard()V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mTabContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mCurrentTab:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;)Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;
    .param p1, "x1"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mCurrentTab:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->showKeyboard()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mWillEditText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mWillSelection:Z

    return v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)Landroid/text/TextWatcher;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->notifyShow()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mKeyBoardHeight:I

    return v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mKeyBoardHeight:I

    return p1
.end method

.method static synthetic access$900(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->notifyHeightChange(I)V

    return-void
.end method

.method private checkMenuIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 325
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mDialogSubMenuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mNavigationClickListener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mDialogSubMenuList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;->getNavigationButton()Landroid/view/View;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method private static getHeightDifference(Landroid/view/View;ILandroid/graphics/Rect;)I
    .locals 4
    .param p0, "targetView"    # Landroid/view/View;
    .param p1, "screenHeight"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 288
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 289
    .local v1, "location":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 290
    const/4 v2, 0x1

    aget v2, v1, v2

    sub-int v2, p1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v0, v2, v3

    .line 291
    .local v0, "heightOffset":I
    invoke-virtual {p0, p2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 292
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    sub-int v2, p1, v2

    sub-int/2addr v2, v0

    return v2
.end method

.method private hideKeyboard()V
    .locals 3

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    :goto_0
    return-void

    .line 245
    :cond_0
    const-string v1, "TextEditDialog"

    const-string v2, "hideKeyboard"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 247
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private initView(Landroid/view/LayoutInflater;)V
    .locals 13
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v8, 0x0

    .line 97
    const v7, 0x7f040159

    const/4 v9, 0x0

    invoke-virtual {p1, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mWholeView:Landroid/view/ViewGroup;

    .line 98
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mWholeView:Landroid/view/ViewGroup;

    const v9, 0x7f1202bc

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mNavigationContainer:Landroid/widget/LinearLayout;

    .line 99
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mWholeView:Landroid/view/ViewGroup;

    const v9, 0x7f1202bd

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mTabContainer:Landroid/widget/FrameLayout;

    .line 100
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mWholeView:Landroid/view/ViewGroup;

    const v9, 0x7f1202bb

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mEditView:Landroid/widget/RelativeLayout;

    .line 102
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v3, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 103
    .local v3, "linearParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 105
    invoke-static {}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;->values()[Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;

    move-result-object v9

    array-length v10, v9

    move v7, v8

    :goto_0
    if-ge v7, v10, :cond_1

    aget-object v6, v9, v7

    .line 106
    .local v6, "tab":Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v11, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mConfigChangeListener:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;

    iget-object v12, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8, v11, v12}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;->getSubMenu(Landroid/content/Context;Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;Landroid/view/ViewGroup;)Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;

    move-result-object v1

    .line 107
    .local v1, "dialogSubMenu":Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;
    invoke-virtual {v6}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;->ordinal()I

    move-result v8

    if-nez v8, :cond_0

    .line 108
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;->setChecked(Z)V

    .line 110
    :cond_0
    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;->getNavigationButton()Landroid/view/View;

    move-result-object v4

    .line 111
    .local v4, "navigationButton":Landroid/view/View;
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mNavigationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mNavigationContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mDialogSubMenuList:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "dialogSubMenu":Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;
    .end local v4    # "navigationButton":Landroid/view/View;
    .end local v6    # "tab":Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$Tab;
    :cond_1
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mWholeView:Landroid/view/ViewGroup;

    const v8, 0x7f1202a5

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mEditText:Landroid/widget/EditText;

    .line 118
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mWholeView:Landroid/view/ViewGroup;

    const v8, 0x7f1202a6

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, "delete":Landroid/view/View;
    new-instance v7, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$1;

    invoke-direct {v7, p0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mWholeView:Landroid/view/ViewGroup;

    const v8, 0x7f1202a4

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 127
    .local v5, "submit":Landroid/view/View;
    new-instance v7, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$2;

    invoke-direct {v7, p0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$2;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    new-instance v2, Landroid/animation/LayoutTransition;

    invoke-direct {v2}, Landroid/animation/LayoutTransition;-><init>()V

    .line 135
    .local v2, "layoutTransition":Landroid/animation/LayoutTransition;
    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 137
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mWholeView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 138
    return-void
.end method

.method private notifyDismiss()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mStatusListener:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$StatusListener;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mStatusListener:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$StatusListener;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$StatusListener;->onDismiss()V

    .line 398
    :cond_0
    return-void
.end method

.method private notifyHeightChange(I)V
    .locals 6
    .param p1, "height"    # I

    .prologue
    .line 401
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mStatusListener:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$StatusListener;

    if-eqz v3, :cond_0

    .line 402
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mEditView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 403
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mNavigationContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mEditView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    add-int v2, v3, v4

    .line 404
    .local v2, "navigation":I
    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mScreenHeight:I

    sub-int/2addr v3, p1

    sub-int v0, v3, v2

    .line 405
    .local v0, "bottom":I
    const-string v3, "TextEditDialog"

    const-string v4, "navigation: %d"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 406
    if-nez p1, :cond_1

    .line 407
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mStatusListener:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$StatusListener;

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mScreenHeight:I

    invoke-interface {v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$StatusListener;->onBottomChange(I)V

    .line 408
    const-string v3, "TextEditDialog"

    const-string v4, "notifyHeightChange: %d"

    iget v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mScreenHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    .end local v0    # "bottom":I
    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "navigation":I
    :cond_0
    :goto_0
    return-void

    .line 410
    .restart local v0    # "bottom":I
    .restart local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v2    # "navigation":I
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mStatusListener:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$StatusListener;

    invoke-interface {v3, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$StatusListener;->onBottomChange(I)V

    .line 411
    const-string v3, "TextEditDialog"

    const-string v4, "notifyHeightChange: %d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private notifyKeyboardHeightChange()V
    .locals 4

    .prologue
    .line 332
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mKeyBoardHeight:I

    if-nez v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mTabContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mKeyBoardHeight:I

    if-eq v0, v1, :cond_0

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mTabContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mTabContainer:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mKeyBoardHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private notifyShow()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mStatusListener:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$StatusListener;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mStatusListener:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$StatusListener;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$StatusListener;->onShow()V

    .line 392
    :cond_0
    return-void
.end method

.method private showKeyboard()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$4;

    invoke-direct {v1, p0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$4;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 239
    return-void
.end method


# virtual methods
.method public isShowing()Z
    .locals 2

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 422
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f1100b4

    .line 142
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 143
    .local v0, "dialog":Landroid/app/Dialog;
    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$3;

    invoke-direct {v3, p0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$3;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 168
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 169
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_0

    .line 170
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 171
    .local v1, "screenSize":Landroid/graphics/Point;
    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 172
    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mScreenHeight:I

    .line 173
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 175
    .end local v1    # "screenSize":Landroid/graphics/Point;
    :cond_0
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mContainerView:Landroid/widget/FrameLayout;

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mContainerView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$LayoutListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$LayoutListener;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 89
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mWholeView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 90
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->initView(Landroid/view/LayoutInflater;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mContainerView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mWholeView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 93
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mContainerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 343
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mDialogSubMenuList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;

    .line 344
    .local v0, "dialogSubMenu":Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;
    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;->release()V

    goto :goto_0

    .line 348
    .end local v0    # "dialogSubMenu":Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 349
    invoke-super {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onDestroyView()V

    .line 350
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 354
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 355
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->notifyHeightChange(I)V

    .line 356
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->notifyDismiss()V

    .line 357
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mTextWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 360
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->dismissSafely()V

    .line 207
    invoke-super {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onPause()V

    .line 208
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 180
    invoke-super {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onStart()V

    .line 181
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 182
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_0

    .line 183
    const/16 v4, 0x50

    invoke-virtual {v2, v4}, Landroid/view/Window;->setGravity(I)V

    .line 184
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 185
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v4, -0x1

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 186
    const/4 v4, -0x2

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 187
    const/4 v4, 0x0

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 188
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 189
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 192
    .local v3, "windowActivity":Landroid/view/Window;
    if-eqz v3, :cond_1

    .line 193
    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 195
    :cond_1
    iput v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mCurrentHeight:I

    .line 196
    const-string v4, "TextEditDialog"

    const-string v5, "onStart"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->notifyKeyboardHeightChange()V

    .line 199
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mDialogSubMenuList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;

    .line 200
    .local v0, "dialogSubMenu":Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mInitializeData:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    invoke-virtual {v0, v5}, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;->initializeData(Ljava/lang/Object;)V

    goto :goto_0

    .line 202
    .end local v0    # "dialogSubMenu":Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/DialogSubMenu;
    :cond_2
    return-void
.end method

.method public setConfigChangeListener(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;)V
    .locals 0
    .param p1, "configChangeListener"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mConfigChangeListener:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$ConfigChangeListener;

    .line 225
    return-void
.end method

.method public setInitializeData(Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;)V
    .locals 0
    .param p1, "initializeData"    # Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mInitializeData:Lcom/miui/gallery/editor/photo/core/imports/text/TextFragment$DialogStatusData;

    .line 364
    return-void
.end method

.method public setStatusListener(Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$StatusListener;)V
    .locals 0
    .param p1, "statusListener"    # Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$StatusListener;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mStatusListener:Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog$StatusListener;

    .line 418
    return-void
.end method

.method public setTextWatch(Landroid/text/TextWatcher;)V
    .locals 0
    .param p1, "textWatcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mTextWatcher:Landroid/text/TextWatcher;

    .line 212
    return-void
.end method

.method public setWillEditText(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "willEditText"    # Ljava/lang/String;
    .param p2, "isSelection"    # Z

    .prologue
    .line 215
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mWillEditText:Ljava/lang/String;

    .line 216
    iput-boolean p2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/editdialog/TextEditDialog;->mWillSelection:Z

    .line 217
    return-void
.end method
