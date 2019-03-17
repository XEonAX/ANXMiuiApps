.class public Lcom/miui/gallery/collage/utils/TextEditDialog;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "TextEditDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/collage/utils/TextEditDialog$LayoutListener;
    }
.end annotation


# instance fields
.field private mContainerView:Landroid/widget/FrameLayout;

.field private mEditText:Landroid/widget/EditText;

.field private mMax:I

.field private mScreenHeight:I

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mWholeView:Landroid/view/View;

.field private mWillEditText:Ljava/lang/String;

.field private mWillSelection:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 34
    iput-boolean v1, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mWillSelection:Z

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mMax:I

    .line 37
    iput v1, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mScreenHeight:I

    .line 141
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/collage/utils/TextEditDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/utils/TextEditDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/collage/utils/TextEditDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/utils/TextEditDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mWillEditText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/collage/utils/TextEditDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/utils/TextEditDialog;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mWillSelection:Z

    return v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/collage/utils/TextEditDialog;)Landroid/text/TextWatcher;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/utils/TextEditDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/collage/utils/TextEditDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/utils/TextEditDialog;

    .prologue
    .line 27
    iget v0, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mMax:I

    return v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/collage/utils/TextEditDialog;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/utils/TextEditDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mContainerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/collage/utils/TextEditDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/utils/TextEditDialog;

    .prologue
    .line 27
    iget v0, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$800(Landroid/view/View;ILandroid/graphics/Rect;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/graphics/Rect;

    .prologue
    .line 27
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/collage/utils/TextEditDialog;->getHeightDifference(Landroid/view/View;ILandroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/collage/utils/TextEditDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/collage/utils/TextEditDialog;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/utils/TextEditDialog;->setBottomMargin(I)V

    return-void
.end method

.method private static getHeightDifference(Landroid/view/View;ILandroid/graphics/Rect;)I
    .locals 4
    .param p0, "targetView"    # Landroid/view/View;
    .param p1, "screenHeight"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 167
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 168
    .local v1, "location":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 169
    const/4 v2, 0x1

    aget v2, v1, v2

    sub-int v2, p1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v0, v2, v3

    .line 170
    .local v0, "heightOffset":I
    invoke-virtual {p0, p2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 171
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    sub-int v2, p1, v2

    sub-int/2addr v2, v0

    return v2
.end method

.method private setBottomMargin(I)V
    .locals 2
    .param p1, "margin"    # I

    .prologue
    const/4 v1, 0x0

    .line 161
    iget-object v0, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 164
    :cond_0
    return-void
.end method


# virtual methods
.method public isShowing()Z
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/miui/gallery/collage/utils/TextEditDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 193
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

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/miui/gallery/collage/utils/TextEditDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 107
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 109
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 110
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 111
    iget-object v2, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 114
    .end local v1    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f110029

    .line 72
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/utils/TextEditDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 73
    .local v0, "dialog":Landroid/app/Dialog;
    new-instance v3, Lcom/miui/gallery/collage/utils/TextEditDialog$3;

    invoke-direct {v3, p0}, Lcom/miui/gallery/collage/utils/TextEditDialog$3;-><init>(Lcom/miui/gallery/collage/utils/TextEditDialog;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 92
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 93
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_0

    .line 94
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 95
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 96
    .local v1, "screenSize":Landroid/graphics/Point;
    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 97
    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mScreenHeight:I

    .line 98
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 100
    .end local v1    # "screenSize":Landroid/graphics/Point;
    :cond_0
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 43
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/miui/gallery/collage/utils/TextEditDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mContainerView:Landroid/widget/FrameLayout;

    .line 44
    iget-object v2, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mContainerView:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v2, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/collage/utils/TextEditDialog$LayoutListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/miui/gallery/collage/utils/TextEditDialog$LayoutListener;-><init>(Lcom/miui/gallery/collage/utils/TextEditDialog;Lcom/miui/gallery/collage/utils/TextEditDialog$1;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 47
    const v2, 0x7f040154

    iget-object v3, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mWholeView:Landroid/view/View;

    .line 48
    iget-object v2, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mWholeView:Landroid/view/View;

    const v3, 0x7f1202a5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mEditText:Landroid/widget/EditText;

    .line 50
    iget-object v2, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mWholeView:Landroid/view/View;

    const v3, 0x7f1202a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "delete":Landroid/view/View;
    new-instance v2, Lcom/miui/gallery/collage/utils/TextEditDialog$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/collage/utils/TextEditDialog$1;-><init>(Lcom/miui/gallery/collage/utils/TextEditDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v2, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mWholeView:Landroid/view/View;

    const v3, 0x7f1202a4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 59
    .local v1, "submit":Landroid/view/View;
    new-instance v2, Lcom/miui/gallery/collage/utils/TextEditDialog$2;

    invoke-direct {v2, p0}, Lcom/miui/gallery/collage/utils/TextEditDialog$2;-><init>(Lcom/miui/gallery/collage/utils/TextEditDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v2, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 66
    iget-object v2, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 67
    iget-object v2, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mContainerView:Landroid/widget/FrameLayout;

    return-object v2
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/miui/gallery/collage/utils/TextEditDialog;->dismissSafely()V

    .line 138
    invoke-super {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onPause()V

    .line 139
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 118
    invoke-super {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onStart()V

    .line 119
    invoke-virtual {p0}, Lcom/miui/gallery/collage/utils/TextEditDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 120
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 121
    const/16 v3, 0x50

    invoke-virtual {v1, v3}, Landroid/view/Window;->setGravity(I)V

    .line 122
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 123
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, -0x1

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 124
    const/4 v3, -0x2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 125
    const/4 v3, 0x0

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 126
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 127
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/collage/utils/TextEditDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 130
    .local v2, "windowActivity":Landroid/view/Window;
    if-eqz v2, :cond_1

    .line 131
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 133
    :cond_1
    return-void
.end method

.method public setMaxEditLength(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mMax:I

    .line 189
    return-void
.end method

.method public setTextWatch(Landroid/text/TextWatcher;)V
    .locals 0
    .param p1, "textWatcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mTextWatcher:Landroid/text/TextWatcher;

    .line 176
    return-void
.end method

.method public setWillEditText(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "willEditText"    # Ljava/lang/String;
    .param p2, "isSelection"    # Z

    .prologue
    .line 179
    iput-object p1, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mWillEditText:Ljava/lang/String;

    .line 180
    iput-boolean p2, p0, Lcom/miui/gallery/collage/utils/TextEditDialog;->mWillSelection:Z

    .line 181
    return-void
.end method
