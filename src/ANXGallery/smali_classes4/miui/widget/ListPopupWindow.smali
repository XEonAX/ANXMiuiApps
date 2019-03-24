.class public Lmiui/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/ListPopupWindow$PopupScrollListener;,
        Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;,
        Lmiui/widget/ListPopupWindow$ResizePopupRunnable;,
        Lmiui/widget/ListPopupWindow$ListSelectorHider;,
        Lmiui/widget/ListPopupWindow$PopupDataSetObserver;,
        Lmiui/widget/ListPopupWindow$DropDownListView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field private static final Ud:I = 0xfa

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private Mz:Landroid/graphics/Rect;

.field private Ub:Landroid/database/DataSetObserver;

.field private final Ue:Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

.field private final Uf:Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;

.field private final Ug:Lmiui/widget/ListPopupWindow$PopupScrollListener;

.field private final Uh:Lmiui/widget/ListPopupWindow$ListSelectorHider;

.field Ui:I

.field private Uj:Lmiui/widget/ArrowPopupWindow;

.field private Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

.field private Ul:I

.field private Um:I

.field private Un:I

.field private Uo:I

.field private Up:Z

.field private Uq:Z

.field private Ur:Z

.field private Us:Landroid/view/View;

.field private Ut:I

.field private Uu:Landroid/view/View;

.field private Uv:Landroid/graphics/drawable/Drawable;

.field private Uw:Landroid/widget/AdapterView$OnItemClickListener;

.field private Ux:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private Uy:Ljava/lang/Runnable;

.field private Uz:Z

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 164
    const/4 v0, 0x0

    const v1, 0x10102ff

    invoke-direct {p0, p1, v0, v1}, Lmiui/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 175
    const v0, 0x10102ff

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->Ue:Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

    .line 105
    new-instance v0, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v0, p0, v1}, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->Uf:Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 107
    new-instance v0, Lmiui/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v0, p0, v1}, Lmiui/widget/ListPopupWindow$PopupScrollListener;-><init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->Ug:Lmiui/widget/ListPopupWindow$PopupScrollListener;

    .line 109
    new-instance v0, Lmiui/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v0, p0, v1}, Lmiui/widget/ListPopupWindow$ListSelectorHider;-><init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->Uh:Lmiui/widget/ListPopupWindow$ListSelectorHider;

    .line 111
    const v0, 0x7fffffff

    iput v0, p0, Lmiui/widget/ListPopupWindow;->Ui:I

    .line 121
    const/4 v0, -0x2

    iput v0, p0, Lmiui/widget/ListPopupWindow;->Ul:I

    .line 123
    iput v0, p0, Lmiui/widget/ListPopupWindow;->Um:I

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/ListPopupWindow;->Uq:Z

    .line 133
    iput-boolean v0, p0, Lmiui/widget/ListPopupWindow;->Ur:Z

    .line 137
    iput v0, p0, Lmiui/widget/ListPopupWindow;->Ut:I

    .line 151
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 153
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->Mz:Landroid/graphics/Rect;

    .line 187
    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 188
    new-instance v0, Lmiui/widget/ArrowPopupWindow;

    invoke-direct {v0, p1, p2, p3}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    .line 189
    return-void
.end method

.method static synthetic a(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ListPopupWindow$DropDownListView;
    .locals 0

    .line 38
    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    return-object p0
.end method

.method static synthetic b(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ArrowPopupWindow;
    .locals 0

    .line 38
    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    return-object p0
.end method

.method static synthetic c(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ListPopupWindow$ResizePopupRunnable;
    .locals 0

    .line 38
    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->Ue:Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

    return-object p0
.end method

.method static synthetic d(Lmiui/widget/ListPopupWindow;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private eV()V
    .locals 2

    .line 599
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Us:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Us:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 601
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 602
    check-cast v0, Landroid/view/ViewGroup;

    .line 603
    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->Us:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 606
    :cond_0
    return-void
.end method

.method private eW()I
    .locals 12

    .line 901
    nop

    .line 903
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    const/high16 v1, -0x80000000

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_3

    .line 904
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 912
    new-instance v5, Lmiui/widget/ListPopupWindow$1;

    invoke-direct {v5, p0}, Lmiui/widget/ListPopupWindow$1;-><init>(Lmiui/widget/ListPopupWindow;)V

    iput-object v5, p0, Lmiui/widget/ListPopupWindow;->Uy:Ljava/lang/Runnable;

    .line 922
    new-instance v5, Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-boolean v6, p0, Lmiui/widget/ListPopupWindow;->Uz:Z

    xor-int/2addr v6, v3

    invoke-direct {v5, v0, v6}, Lmiui/widget/ListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    iput-object v5, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    .line 923
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Uv:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 924
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->Uv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lmiui/widget/ListPopupWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 926
    :cond_0
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v5, v6}, Lmiui/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 927
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->Uw:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Lmiui/widget/ListPopupWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 928
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v5, v3}, Lmiui/widget/ListPopupWindow$DropDownListView;->setFocusable(Z)V

    .line 929
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v5, v3}, Lmiui/widget/ListPopupWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    .line 930
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    new-instance v6, Lmiui/widget/ListPopupWindow$2;

    invoke-direct {v6, p0}, Lmiui/widget/ListPopupWindow$2;-><init>(Lmiui/widget/ListPopupWindow;)V

    invoke-virtual {v5, v6}, Lmiui/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 946
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->Ug:Lmiui/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v5, v6}, Lmiui/widget/ListPopupWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 948
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Ux:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v5, :cond_1

    .line 949
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->Ux:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v5, v6}, Lmiui/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 952
    :cond_1
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    .line 954
    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->Us:Landroid/view/View;

    .line 955
    if-eqz v6, :cond_2

    .line 958
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 959
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 961
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 963
    iget v8, p0, Lmiui/widget/ListPopupWindow;->Ut:I

    packed-switch v8, :pswitch_data_0

    .line 975
    const-string v0, "ListPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid hint position "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lmiui/widget/ListPopupWindow;->Ut:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 965
    :pswitch_0
    invoke-virtual {v7, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 966
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 967
    goto :goto_0

    .line 970
    :pswitch_1
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 971
    invoke-virtual {v7, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 972
    nop

    .line 981
    :goto_0
    iget v0, p0, Lmiui/widget/ListPopupWindow;->Um:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 982
    nop

    .line 983
    invoke-virtual {v6, v0, v4}, Landroid/view/View;->measure(II)V

    .line 985
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 986
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v0

    .line 989
    nop

    .line 992
    move v0, v5

    move-object v5, v7

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v6, v5}, Lmiui/widget/ArrowPopupWindow;->setContentView(Landroid/view/View;)V

    .line 993
    goto :goto_2

    .line 994
    :cond_3
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Us:Landroid/view/View;

    .line 995
    if-eqz v0, :cond_4

    .line 996
    nop

    .line 997
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 998
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v6

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v5

    goto :goto_2

    .line 1005
    :cond_4
    move v0, v4

    .line 1006
    :goto_2
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v5}, Lmiui/widget/ArrowPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1007
    if-eqz v5, :cond_5

    .line 1008
    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->Mz:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1009
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Mz:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->Mz:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    .line 1013
    iget-boolean v6, p0, Lmiui/widget/ListPopupWindow;->Up:Z

    if-nez v6, :cond_6

    .line 1014
    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->Mz:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    iput v6, p0, Lmiui/widget/ListPopupWindow;->Uo:I

    goto :goto_3

    .line 1017
    :cond_5
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Mz:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 1021
    move v5, v4

    :cond_6
    :goto_3
    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    .line 1022
    invoke-virtual {v6}, Lmiui/widget/ArrowPopupWindow;->getInputMethodMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    goto :goto_4

    .line 1023
    :cond_7
    move v3, v4

    .line 1024
    :goto_4
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v4

    iget v6, p0, Lmiui/widget/ListPopupWindow;->Uo:I

    .line 1023
    invoke-virtual {p0, v4, v6, v3}, Lmiui/widget/ListPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v3

    .line 1026
    iget-boolean v4, p0, Lmiui/widget/ListPopupWindow;->Uq:Z

    if-nez v4, :cond_a

    iget v4, p0, Lmiui/widget/ListPopupWindow;->Ul:I

    if-ne v4, v2, :cond_8

    goto :goto_7

    .line 1031
    :cond_8
    iget v2, p0, Lmiui/widget/ListPopupWindow;->Um:I

    const/high16 v4, 0x40000000    # 2.0f

    packed-switch v2, :pswitch_data_1

    .line 1045
    iget v1, p0, Lmiui/widget/ListPopupWindow;->Um:I

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1049
    :goto_5
    move v7, v1

    goto :goto_6

    .line 1039
    :pswitch_2
    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1040
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lmiui/widget/ListPopupWindow;->Mz:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->Mz:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v6

    sub-int/2addr v1, v2

    .line 1039
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1043
    goto :goto_5

    .line 1033
    :pswitch_3
    iget-object v2, p0, Lmiui/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1034
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Lmiui/widget/ListPopupWindow;->Mz:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->Mz:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v6

    sub-int/2addr v2, v4

    .line 1033
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1037
    goto :goto_5

    .line 1049
    :goto_6
    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    const/4 v8, 0x0

    const/4 v9, -0x1

    sub-int v10, v3, v0

    const/4 v11, -0x1

    invoke-virtual/range {v6 .. v11}, Lmiui/widget/ListPopupWindow$DropDownListView;->a(IIIII)I

    move-result v1

    .line 1053
    if-lez v1, :cond_9

    .line 1054
    add-int/2addr v0, v5

    .line 1057
    :cond_9
    add-int/2addr v1, v0

    return v1

    .line 1027
    :cond_a
    :goto_7
    add-int/2addr v3, v5

    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method ar(I)V
    .locals 0

    .line 761
    iput p1, p0, Lmiui/widget/ListPopupWindow;->Ui:I

    .line 762
    return-void
.end method

.method public clearListSelection()V
    .locals 2

    .line 652
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    .line 653
    if-eqz v0, :cond_0

    .line 655
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/widget/ListPopupWindow$DropDownListView;->a(Lmiui/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 657
    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->requestLayout()V

    .line 659
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 576
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/ListPopupWindow;->dismiss(Z)V

    .line 577
    return-void
.end method

.method public dismiss(Z)V
    .locals 1

    .line 583
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->dismiss(Z)V

    .line 584
    invoke-direct {p0}, Lmiui/widget/ListPopupWindow;->eV()V

    .line 585
    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    .line 586
    iget-object p1, p0, Lmiui/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ue:Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 587
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .line 372
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uu:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1

    .line 354
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 336
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 458
    iget v0, p0, Lmiui/widget/ListPopupWindow;->Ul:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .line 389
    iget v0, p0, Lmiui/widget/ListPopupWindow;->Un:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .line 614
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 751
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 4

    .line 1078
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1079
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1081
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1082
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1084
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1085
    if-eqz p3, :cond_0

    .line 1086
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 1087
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget v2, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1089
    :cond_0
    const/4 p3, 0x1

    aget v3, v1, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v3, p1

    sub-int/2addr v2, v3

    sub-int/2addr v2, p2

    .line 1090
    aget p1, v1, p3

    iget p3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p3

    add-int/2addr p1, p2

    .line 1093
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1094
    iget-object p2, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p2}, Lmiui/widget/ArrowPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1095
    iget-object p2, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p2}, Lmiui/widget/ArrowPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object p3, p0, Lmiui/widget/ListPopupWindow;->Mz:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1096
    iget-object p2, p0, Lmiui/widget/ListPopupWindow;->Mz:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Lmiui/widget/ListPopupWindow;->Mz:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, p3

    sub-int/2addr p1, p2

    .line 1099
    :cond_1
    return p1
.end method

.method public getPopupWindow()Lmiui/widget/ArrowPopupWindow;
    .locals 1

    .line 195
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    return-object v0
.end method

.method public getPromptPosition()I
    .locals 1

    .line 227
    iget v0, p0, Lmiui/widget/ListPopupWindow;->Ut:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .line 701
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 702
    const/4 v0, 0x0

    return-object v0

    .line 704
    :cond_0
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .line 727
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 730
    :cond_0
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .line 714
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 715
    const/4 v0, -0x1

    return v0

    .line 717
    :cond_0
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .line 740
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 741
    const/4 v0, 0x0

    return-object v0

    .line 743
    :cond_0
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSoftInputMode()I
    .locals 1

    .line 307
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .line 405
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow;->Up:Z

    if-nez v0, :cond_0

    .line 406
    const/4 v0, 0x0

    return v0

    .line 408
    :cond_0
    iget v0, p0, Lmiui/widget/ListPopupWindow;->Uo:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 425
    iget v0, p0, Lmiui/widget/ListPopupWindow;->Um:I

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow;->Uq:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .line 673
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isModal()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow;->Uz:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 665
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11

    .line 777
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 783
    const/16 v0, 0x3e

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    .line 784
    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    const/16 v2, 0x17

    const/16 v3, 0x42

    if-gez v0, :cond_0

    if-eq p1, v3, :cond_a

    if-eq p1, v2, :cond_a

    .line 787
    :cond_0
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    .line 790
    iget-object v4, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v4}, Lmiui/widget/ArrowPopupWindow;->isAboveAnchor()Z

    move-result v4

    .line 792
    const/4 v5, 0x1

    xor-int/2addr v4, v5

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 795
    const v7, 0x7fffffff

    .line 796
    const/high16 v8, -0x80000000

    .line 798
    if-eqz v6, :cond_3

    .line 799
    invoke-interface {v6}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v7

    .line 800
    if-eqz v7, :cond_1

    .line 802
    move v8, v1

    goto :goto_0

    .line 801
    :cond_1
    iget-object v8, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-static {v8, v1, v5}, Lmiui/widget/ListPopupWindow$DropDownListView;->a(Lmiui/widget/ListPopupWindow$DropDownListView;IZ)I

    move-result v8

    .line 802
    :goto_0
    if-eqz v7, :cond_2

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    sub-int/2addr v6, v5

    goto :goto_1

    .line 803
    :cond_2
    iget-object v7, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-static {v7, v6, v1}, Lmiui/widget/ListPopupWindow$DropDownListView;->a(Lmiui/widget/ListPopupWindow$DropDownListView;IZ)I

    move-result v6

    .line 806
    :goto_1
    move v7, v8

    goto :goto_2

    :cond_3
    move v6, v8

    :goto_2
    const/16 v8, 0x13

    if-eqz v4, :cond_4

    if-ne p1, v8, :cond_4

    if-le v0, v7, :cond_5

    :cond_4
    const/16 v9, 0x14

    if-nez v4, :cond_6

    if-ne p1, v9, :cond_6

    if-lt v0, v6, :cond_6

    .line 810
    :cond_5
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->clearListSelection()V

    .line 811
    iget-object p1, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p1, v5}, Lmiui/widget/ArrowPopupWindow;->setInputMethodMode(I)V

    .line 812
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->show()V

    .line 813
    return v5

    .line 817
    :cond_6
    iget-object v10, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-static {v10, v1}, Lmiui/widget/ListPopupWindow$DropDownListView;->a(Lmiui/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 820
    iget-object v10, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v10, p1, p2}, Lmiui/widget/ListPopupWindow$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p2

    .line 825
    if-eqz p2, :cond_8

    .line 828
    iget-object p2, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lmiui/widget/ArrowPopupWindow;->setInputMethodMode(I)V

    .line 833
    iget-object p2, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {p2}, Lmiui/widget/ListPopupWindow$DropDownListView;->requestFocusFromTouch()Z

    .line 834
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->show()V

    .line 836
    if-eq p1, v2, :cond_7

    if-eq p1, v3, :cond_7

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    .line 843
    :cond_7
    :pswitch_0
    return v5

    .line 846
    :cond_8
    if-eqz v4, :cond_9

    if-ne p1, v9, :cond_9

    .line 849
    if-ne v0, v6, :cond_a

    .line 850
    return v5

    .line 852
    :cond_9
    if-nez v4, :cond_a

    if-ne p1, v8, :cond_a

    if-ne v0, v7, :cond_a

    .line 854
    return v5

    .line 860
    :cond_a
    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 875
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_2

    .line 876
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0, p1, p2}, Lmiui/widget/ListPopupWindow$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p2

    .line 877
    if-eqz p2, :cond_1

    .line 878
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 884
    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiui/widget/ListPopupWindow;->dismiss(Z)V

    .line 888
    :cond_1
    :goto_0
    return p2

    .line 890
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public performItemClick(I)Z
    .locals 7

    .line 685
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uw:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 687
    iget-object v2, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    .line 688
    invoke-virtual {v2}, Lmiui/widget/ListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v2, v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 689
    invoke-virtual {v2}, Lmiui/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 690
    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->Uw:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    move v4, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 692
    :cond_0
    const/4 p1, 0x1

    return p1

    .line 694
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public postShow()V
    .locals 2

    .line 513
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->Uy:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 514
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 205
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ub:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lmiui/widget/ListPopupWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->Ub:Landroid/database/DataSetObserver;

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->Ub:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 210
    :cond_1
    :goto_0
    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 211
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Ub:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 215
    :cond_2
    iget-object p1, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    if-eqz p1, :cond_3

    .line 216
    iget-object p1, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 218
    :cond_3
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->Uu:Landroid/view/View;

    .line 383
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1

    .line 363
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setAnimationStyle(I)V

    .line 364
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 345
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 346
    return-void
.end method

.method public setContentWidth(I)V
    .locals 2

    .line 445
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 446
    if-eqz v0, :cond_0

    .line 447
    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->Mz:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 448
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Mz:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->Mz:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/widget/ListPopupWindow;->Um:I

    goto :goto_0

    .line 450
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/widget/ListPopupWindow;->setWidth(I)V

    .line 452
    :goto_0
    return-void
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0

    .line 297
    iput-boolean p1, p0, Lmiui/widget/ListPopupWindow;->Uq:Z

    .line 298
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0

    .line 273
    iput-boolean p1, p0, Lmiui/widget/ListPopupWindow;->Ur:Z

    .line 274
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 467
    iput p1, p0, Lmiui/widget/ListPopupWindow;->Ul:I

    .line 468
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    .line 398
    iput p1, p0, Lmiui/widget/ListPopupWindow;->Un:I

    .line 399
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1

    .line 629
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setInputMethodMode(I)V

    .line 630
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->Uv:Landroid/graphics/drawable/Drawable;

    .line 330
    return-void
.end method

.method public setModal(Z)V
    .locals 1

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/ListPopupWindow;->Uz:Z

    .line 262
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setFocusable(Z)V

    .line 263
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    .line 595
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 596
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->Uw:Landroid/widget/AdapterView$OnItemClickListener;

    .line 479
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->Ux:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 490
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0

    .line 240
    iput p1, p0, Lmiui/widget/ListPopupWindow;->Ut:I

    .line 241
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1

    .line 499
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    .line 500
    if-eqz v0, :cond_0

    .line 501
    invoke-direct {p0}, Lmiui/widget/ListPopupWindow;->eV()V

    .line 503
    :cond_0
    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->Us:Landroid/view/View;

    .line 504
    if-eqz v0, :cond_1

    .line 505
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->show()V

    .line 507
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 2

    .line 638
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    .line 639
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 640
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/widget/ListPopupWindow$DropDownListView;->a(Lmiui/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 641
    invoke-virtual {v0, p1}, Lmiui/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 642
    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 643
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmiui/widget/ListPopupWindow$DropDownListView;->setItemChecked(IZ)V

    .line 646
    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1

    .line 320
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setSoftInputMode(I)V

    .line 321
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0

    .line 417
    iput p1, p0, Lmiui/widget/ListPopupWindow;->Uo:I

    .line 418
    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/widget/ListPopupWindow;->Up:Z

    .line 419
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 435
    iput p1, p0, Lmiui/widget/ListPopupWindow;->Um:I

    .line 436
    return-void
.end method

.method public show()V
    .locals 11

    .line 521
    invoke-direct {p0}, Lmiui/widget/ListPopupWindow;->eW()I

    move-result v0

    .line 523
    nop

    .line 524
    nop

    .line 526
    iget v1, p0, Lmiui/widget/ListPopupWindow;->Um:I

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 527
    goto :goto_0

    .line 529
    :cond_0
    iget v1, p0, Lmiui/widget/ListPopupWindow;->Um:I

    if-ne v1, v2, :cond_1

    .line 530
    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v1, v4}, Lmiui/widget/ArrowPopupWindow;->setContentWidth(I)V

    goto :goto_0

    .line 532
    :cond_1
    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    iget v4, p0, Lmiui/widget/ListPopupWindow;->Um:I

    invoke-virtual {v1, v4}, Lmiui/widget/ArrowPopupWindow;->setContentWidth(I)V

    .line 536
    :goto_0
    const/4 v9, -0x1

    iget v1, p0, Lmiui/widget/ListPopupWindow;->Ul:I

    if-ne v1, v3, :cond_2

    .line 537
    goto :goto_1

    .line 539
    :cond_2
    iget v1, p0, Lmiui/widget/ListPopupWindow;->Ul:I

    if-ne v1, v2, :cond_3

    .line 540
    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v1, v0}, Lmiui/widget/ArrowPopupWindow;->setContentHeight(I)V

    goto :goto_1

    .line 542
    :cond_3
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    iget v1, p0, Lmiui/widget/ListPopupWindow;->Ul:I

    invoke-virtual {v0, v1}, Lmiui/widget/ArrowPopupWindow;->setContentHeight(I)V

    .line 546
    :goto_1
    const/4 v10, -0x1

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/ArrowPopupWindow;->setFocusable(Z)V

    .line 547
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->isShowing()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 548
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    iget-boolean v3, p0, Lmiui/widget/ListPopupWindow;->Ur:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lmiui/widget/ListPopupWindow;->Uq:Z

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lmiui/widget/ArrowPopupWindow;->setOutsideTouchable(Z)V

    .line 550
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v6

    iget v7, p0, Lmiui/widget/ListPopupWindow;->Un:I

    iget v8, p0, Lmiui/widget/ListPopupWindow;->Uo:I

    invoke-virtual/range {v5 .. v10}, Lmiui/widget/ArrowPopupWindow;->update(Landroid/view/View;IIII)V

    goto :goto_4

    .line 553
    :cond_5
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, v9, v10}, Lmiui/widget/ArrowPopupWindow;->setWindowLayoutMode(II)V

    .line 557
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    iget-boolean v4, p0, Lmiui/widget/ListPopupWindow;->Ur:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lmiui/widget/ListPopupWindow;->Uq:Z

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Lmiui/widget/ArrowPopupWindow;->setOutsideTouchable(Z)V

    .line 558
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->Uf:Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Lmiui/widget/ArrowPopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 559
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uj:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lmiui/widget/ListPopupWindow;->Un:I

    iget v4, p0, Lmiui/widget/ListPopupWindow;->Uo:I

    invoke-virtual {v0, v1, v2, v4}, Lmiui/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    .line 561
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0, v3}, Lmiui/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 563
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow;->Uz:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->Uk:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 564
    :cond_7
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->clearListSelection()V

    .line 566
    :cond_8
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow;->Uz:Z

    if-nez v0, :cond_9

    .line 567
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->Uh:Lmiui/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 570
    :cond_9
    :goto_4
    return-void
.end method
