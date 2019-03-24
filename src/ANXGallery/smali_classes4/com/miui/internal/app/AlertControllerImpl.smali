.class public Lcom/miui/internal/app/AlertControllerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/app/AlertControllerImpl$ButtonHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlertController"

.field private static final cl:I = 0x300

.field private static final cm:Lmiui/reflect/Method;

.field private static final cn:I


# instance fields
.field private aR:Lmiui/app/ActionBar;

.field private cA:Landroid/widget/Button;

.field private cB:Ljava/lang/CharSequence;

.field private cC:Landroid/os/Message;

.field private cD:Landroid/widget/Button;

.field private cE:Ljava/lang/CharSequence;

.field private cF:Landroid/os/Message;

.field private cG:Landroid/widget/Button;

.field private cH:Ljava/lang/CharSequence;

.field private cI:Landroid/os/Message;

.field private cJ:Landroid/widget/ScrollView;

.field private cK:Landroid/content/DialogInterface;

.field private cL:Landroid/view/View$OnClickListener;

.field private cM:Z

.field private cN:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

.field private cO:Landroid/view/Window$Callback;

.field private final cj:Ljava/lang/Runnable;

.field private final co:I

.field private final cp:I

.field private final cq:I

.field private final cr:I

.field private final cs:I

.field private final ct:Landroid/view/Window;

.field private cu:Landroid/view/ViewGroup;

.field private cv:Landroid/widget/ListView;

.field private cw:Lmiui/widget/EditableListViewWrapper;

.field private cx:Landroid/widget/TextView;

.field private cy:Landroid/widget/TextView;

.field private cz:Landroid/widget/Button;

.field private mActionBarView:Lcom/miui/internal/widget/ActionBarView;

.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mCheckBoxMessage:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private mCheckedItems:[Z

.field private mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIsChecked:Z

.field private mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private mMessage:Ljava/lang/CharSequence;

.field private mOnActionItemClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTitle:Ljava/lang/CharSequence;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    invoke-static {}, Lcom/miui/internal/app/AlertControllerImpl;->t()Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/app/AlertControllerImpl;->cm:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 5

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIconId:I

    .line 164
    new-instance v1, Lcom/miui/internal/app/AlertControllerImpl$1;

    invoke-direct {v1, p0}, Lcom/miui/internal/app/AlertControllerImpl$1;-><init>(Lcom/miui/internal/app/AlertControllerImpl;)V

    iput-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cL:Landroid/view/View$OnClickListener;

    .line 184
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItem:I

    .line 337
    new-instance v1, Lcom/miui/internal/app/AlertControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/miui/internal/app/AlertControllerImpl$2;-><init>(Lcom/miui/internal/app/AlertControllerImpl;)V

    iput-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cj:Ljava/lang/Runnable;

    .line 936
    new-instance v1, Lcom/miui/internal/app/AlertControllerImpl$6;

    invoke-direct {v1, p0}, Lcom/miui/internal/app/AlertControllerImpl$6;-><init>(Lcom/miui/internal/app/AlertControllerImpl;)V

    iput-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cN:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    .line 949
    new-instance v1, Lcom/miui/internal/app/AlertControllerImpl$7;

    invoke-direct {v1, p0}, Lcom/miui/internal/app/AlertControllerImpl$7;-><init>(Lcom/miui/internal/app/AlertControllerImpl;)V

    iput-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cO:Landroid/view/Window$Callback;

    .line 227
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    .line 228
    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cK:Landroid/content/DialogInterface;

    .line 229
    iput-object p3, p0, Lcom/miui/internal/app/AlertControllerImpl;->ct:Landroid/view/Window;

    .line 230
    iget-object p3, p0, Lcom/miui/internal/app/AlertControllerImpl;->ct:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 233
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge p3, v2, :cond_0

    const-string p3, "ro.miui.notch"

    .line 234
    invoke-static {p3, v0}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-ne p3, v1, :cond_0

    sget-object p3, Lcom/miui/internal/app/AlertControllerImpl;->cm:Lmiui/reflect/Method;

    if-eqz p3, :cond_0

    .line 235
    sget-object p3, Lcom/miui/internal/app/AlertControllerImpl;->cm:Lmiui/reflect/Method;

    const-class v2, Landroid/view/Window;

    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->ct:Landroid/view/Window;

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v4, 0x300

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-virtual {p3, v2, v3, v1}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 237
    :cond_0
    new-instance p3, Lcom/miui/internal/app/AlertControllerImpl$ButtonHandler;

    invoke-direct {p3, p2}, Lcom/miui/internal/app/AlertControllerImpl$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mHandler:Landroid/os/Handler;

    .line 239
    const/4 p2, 0x0

    sget-object p3, Lcom/miui/internal/R$styleable;->AlertDialog:[I

    const v1, 0x101005d

    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 243
    sget p2, Lcom/miui/internal/R$styleable;->AlertDialog_layout:I

    sget p3, Lcom/miui/internal/R$layout;->alert_dialog:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cs:I

    .line 245
    sget p2, Lcom/miui/internal/R$styleable;->AlertDialog_listLayout:I

    sget p3, Lcom/miui/internal/R$layout;->select_dialog:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->co:I

    .line 248
    sget p2, Lcom/miui/internal/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    sget p3, Lcom/miui/internal/R$layout;->select_dialog_multichoice:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:I

    .line 251
    sget p2, Lcom/miui/internal/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    sget p3, Lmiui/R$layout;->select_dialog_singlechoice:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cq:I

    .line 254
    sget p2, Lcom/miui/internal/R$styleable;->AlertDialog_listItemLayout:I

    sget p3, Lcom/miui/internal/R$layout;->select_dialog_item:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cr:I

    .line 258
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 259
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cA:Landroid/widget/Button;

    return-object p0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 5

    .line 586
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 588
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 590
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 593
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/miui/internal/R$dimen;->dialog_title_vertical_padding:I

    .line 594
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 595
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 598
    :cond_0
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$dimen;->dialog_title_horizontal_padding:I

    .line 599
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 601
    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    if-eqz v3, :cond_1

    .line 602
    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    goto :goto_0

    .line 604
    :cond_1
    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    if-eqz v4, :cond_2

    .line 605
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 607
    :cond_2
    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v4, v3, v0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 610
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cu:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->alertTitle:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 612
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 613
    goto :goto_1

    .line 614
    :cond_3
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 615
    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 616
    sget v0, Lcom/miui/internal/R$id;->alertTitle:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cx:Landroid/widget/TextView;

    .line 618
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cx:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    .line 621
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cx:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 624
    :cond_4
    iget p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIconId:I

    if-eqz p1, :cond_6

    .line 625
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cx:Landroid/widget/TextView;

    iget v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIconId:I

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 628
    :cond_5
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 631
    :cond_6
    :goto_1
    return-void
.end method

.method private a(Landroid/widget/FrameLayout;)V
    .locals 7

    .line 773
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 774
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cu:Landroid/view/ViewGroup;

    const v1, 0x102002b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 776
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 778
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 779
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 783
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 785
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$dimen;->dialog_custom_vertical_padding:I

    .line 786
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 788
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    if-eqz v2, :cond_1

    .line 789
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    .line 790
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cM:Z

    .line 792
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/miui/internal/R$dimen;->dialog_custom_horizontal_padding:I

    .line 793
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 795
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    if-eqz v5, :cond_3

    .line 796
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    goto :goto_1

    .line 798
    :cond_3
    move v5, v2

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    if-eqz v6, :cond_4

    .line 799
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    .line 801
    :cond_4
    const v6, 0x102000d

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 802
    if-eqz v6, :cond_5

    instance-of v6, v6, Lmiui/widget/ProgressBar;

    if-nez v6, :cond_5

    .line 803
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 804
    iput-boolean v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->cM:Z

    goto :goto_3

    .line 805
    :cond_5
    sget v6, Lcom/miui/internal/R$id;->datePicker:I

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_7

    sget v6, Lcom/miui/internal/R$id;->timePicker:I

    .line 806
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_7

    sget v6, Lcom/miui/internal/R$id;->dateTimePicker:I

    .line 807
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_6

    goto :goto_2

    .line 812
    :cond_6
    nop

    .line 813
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    .line 812
    invoke-virtual {p1, v5, v1, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 814
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_3

    .line 808
    :cond_7
    :goto_2
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 809
    invoke-direct {p0}, Lcom/miui/internal/app/AlertControllerImpl;->x()V

    .line 810
    iput-boolean v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->cM:Z

    .line 817
    :cond_8
    :goto_3
    goto :goto_4

    .line 818
    :cond_9
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 820
    :goto_4
    return-void
.end method

.method private a(Landroid/widget/TextView;I)V
    .locals 4

    .line 634
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 636
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string v1, "setBreakStrategy"

    const-string v2, "(I)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    .line 637
    const-class v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    goto :goto_0

    .line 638
    :catch_0
    move-exception p1

    .line 641
    :cond_0
    :goto_0
    return-void
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 421
    iget-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    instance-of p2, p1, Lcom/miui/internal/widget/SingleCenterTextView;

    if-eqz p2, :cond_1

    .line 425
    check-cast p1, Lcom/miui/internal/widget/SingleCenterTextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/internal/widget/SingleCenterTextView;->setEnableSingleCenter(Z)V

    .line 427
    :cond_1
    return-void

    .line 422
    :cond_2
    :goto_0
    return-void
.end method

.method static a(Landroid/view/View;)Z
    .locals 4

    .line 262
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 263
    return v1

    .line 266
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 267
    return v2

    .line 270
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 271
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 272
    :cond_2
    if-lez v0, :cond_3

    .line 273
    add-int/lit8 v0, v0, -0x1

    .line 274
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 275
    invoke-static {v3}, Lcom/miui/internal/app/AlertControllerImpl;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 276
    return v1

    .line 280
    :cond_3
    return v2
.end method

.method private a(Landroid/widget/TextView;)Z
    .locals 2

    .line 926
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    .line 927
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 928
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .line 929
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result p1

    if-lez p1, :cond_0

    .line 930
    return v1

    .line 933
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->a(Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result p0

    return p0
.end method

.method private a(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 5

    .line 367
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;

    .line 368
    iget v2, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;->id:I

    iget-object v3, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;->label:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2, v4, v3}, Lcom/miui/internal/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    iget v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;->icon:I

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x2

    .line 369
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 370
    goto :goto_0

    .line 371
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cC:Landroid/os/Message;

    return-object p0
.end method

.method private b(Landroid/view/ViewGroup;)V
    .locals 4

    .line 644
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cu:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cJ:Landroid/widget/ScrollView;

    .line 646
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cJ:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 649
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cu:Landroid/view/ViewGroup;

    sget v2, Lmiui/R$id;->message:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/TextView;

    .line 650
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 651
    return-void

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessage:Ljava/lang/CharSequence;

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    .line 655
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/app/AlertControllerImpl;->a(Landroid/widget/TextView;I)V

    .line 656
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessage:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/app/AlertControllerImpl;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 658
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cu:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 662
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 663
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->dialog_message_without_title_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 665
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    .line 666
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    .line 665
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 668
    :cond_1
    goto/16 :goto_1

    .line 669
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 670
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cJ:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 672
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/ListView;

    if-eqz v0, :cond_4

    .line 673
    invoke-direct {p0}, Lcom/miui/internal/app/AlertControllerImpl;->w()V

    .line 675
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cJ:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 676
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 678
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 681
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 682
    invoke-direct {p0}, Lcom/miui/internal/app/AlertControllerImpl;->x()V

    .line 686
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cx:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 687
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cx:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 688
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cu:Landroid/view/ViewGroup;

    sget v2, Lcom/miui/internal/R$id;->topPanel:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 690
    :try_start_0
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/miui/internal/R$attr;->dialogTitleBackground:I

    invoke-static {v2, v3}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    goto :goto_0

    .line 691
    :catch_0
    move-exception v0

    .line 695
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    .line 696
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    .line 695
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 699
    :cond_3
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cx:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getChoiceMode()I

    move-result p1

    if-nez p1, :cond_5

    .line 700
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cx:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/miui/internal/R$style;->TextAppearance_DialogTitle_SimpleList:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 703
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 706
    :cond_5
    :goto_1
    return-void
.end method

.method private b(Landroid/widget/FrameLayout;)V
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 833
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 834
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 835
    iget-boolean v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIsChecked:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 836
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckBoxMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 837
    goto :goto_0

    .line 838
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 840
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->b(Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result p0

    return p0
.end method

.method private b(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 0

    .line 376
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic c(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cD:Landroid/widget/Button;

    return-object p0
.end method

.method private c(Landroid/view/ViewGroup;)V
    .locals 8

    .line 843
    nop

    .line 844
    nop

    .line 845
    nop

    .line 847
    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cA:Landroid/widget/Button;

    .line 848
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cA:Landroid/widget/Button;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 849
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cA:Landroid/widget/Button;

    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->cL:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 850
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cB:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cA:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cA:Landroid/widget/Button;

    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->cB:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 854
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cA:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 855
    nop

    .line 856
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cA:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->a(Landroid/widget/TextView;)Z

    move-result v0

    .line 857
    nop

    .line 861
    move v5, v0

    move v0, v2

    move v4, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    move v4, v0

    move v5, v4

    :goto_1
    const v6, 0x102001a

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/miui/internal/app/AlertControllerImpl;->cD:Landroid/widget/Button;

    .line 862
    iget-object v6, p0, Lcom/miui/internal/app/AlertControllerImpl;->cD:Landroid/widget/Button;

    if-eqz v6, :cond_3

    .line 863
    iget-object v6, p0, Lcom/miui/internal/app/AlertControllerImpl;->cD:Landroid/widget/Button;

    iget-object v7, p0, Lcom/miui/internal/app/AlertControllerImpl;->cL:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 864
    iget-object v6, p0, Lcom/miui/internal/app/AlertControllerImpl;->cE:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 865
    iget-object v6, p0, Lcom/miui/internal/app/AlertControllerImpl;->cD:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 867
    :cond_2
    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->cD:Landroid/widget/Button;

    iget-object v5, p0, Lcom/miui/internal/app/AlertControllerImpl;->cE:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 868
    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->cD:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 869
    nop

    .line 870
    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->cD:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/miui/internal/app/AlertControllerImpl;->a(Landroid/widget/TextView;)Z

    move-result v5

    .line 871
    add-int/lit8 v0, v0, 0x1

    .line 875
    move v4, v2

    :cond_3
    :goto_2
    const v6, 0x102001b

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/miui/internal/app/AlertControllerImpl;->cG:Landroid/widget/Button;

    .line 876
    iget-object v6, p0, Lcom/miui/internal/app/AlertControllerImpl;->cG:Landroid/widget/Button;

    if-eqz v6, :cond_5

    .line 877
    iget-object v6, p0, Lcom/miui/internal/app/AlertControllerImpl;->cG:Landroid/widget/Button;

    iget-object v7, p0, Lcom/miui/internal/app/AlertControllerImpl;->cL:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 878
    iget-object v6, p0, Lcom/miui/internal/app/AlertControllerImpl;->cH:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 879
    iget-object v6, p0, Lcom/miui/internal/app/AlertControllerImpl;->cG:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 881
    :cond_4
    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->cG:Landroid/widget/Button;

    iget-object v5, p0, Lcom/miui/internal/app/AlertControllerImpl;->cH:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 882
    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->cG:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 883
    nop

    .line 884
    iget-object v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->cG:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/miui/internal/app/AlertControllerImpl;->a(Landroid/widget/TextView;)Z

    move-result v5

    .line 885
    add-int/lit8 v0, v0, 0x1

    .line 889
    move v4, v2

    :cond_5
    :goto_3
    if-eqz v4, :cond_c

    .line 890
    sget v1, Lcom/miui/internal/R$id;->buttonGroup:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 893
    if-nez v5, :cond_6

    const/4 v1, 0x2

    if-le v0, v1, :cond_9

    .line 895
    :cond_6
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 896
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 899
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cA:Landroid/widget/Button;

    const/4 v1, -0x1

    if-eqz v0, :cond_7

    .line 900
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cA:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 901
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 902
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cA:Landroid/widget/Button;

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 904
    :cond_7
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cG:Landroid/widget/Button;

    if-eqz v0, :cond_8

    .line 905
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cG:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 906
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 907
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cG:Landroid/widget/Button;

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 909
    :cond_8
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cD:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 910
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cD:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 911
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 912
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cD:Landroid/widget/Button;

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 916
    :cond_9
    iget-boolean v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cM:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/ListView;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    .line 917
    :cond_a
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    .line 918
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    .line 917
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 920
    :cond_b
    goto :goto_4

    .line 921
    :cond_c
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 923
    :goto_4
    return-void
.end method

.method static synthetic c(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    return-void
.end method

.method static synthetic d(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cF:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cG:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Message;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cI:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic g(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/content/DialogInterface;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cK:Landroid/content/DialogInterface;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/os/Handler;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic i(Lcom/miui/internal/app/AlertControllerImpl;)Lmiui/widget/EditableListViewWrapper;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cw:Lmiui/widget/EditableListViewWrapper;

    return-object p0
.end method

.method static synthetic j(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cz:Landroid/widget/Button;

    return-object p0
.end method

.method private setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_0

    .line 351
    return-void

    .line 354
    :cond_0
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 355
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cN:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v0, p1, v1}, Lcom/miui/internal/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    .line 358
    :cond_1
    return-void
.end method

.method private static t()Lmiui/reflect/Method;
    .locals 3

    .line 74
    :try_start_0
    const-class v0, Landroid/view/Window;

    const-string v1, "addExtraFlags"

    const-string v2, "(I)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method private u()V
    .locals 5

    .line 295
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/miui/internal/R$layout;->screen_action_bar:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 297
    sget v1, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ActionBarView;

    iput-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    .line 298
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cO:Landroid/view/Window$Callback;

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 301
    sget v1, Lcom/miui/internal/R$id;->split_action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ActionBarContainer;

    .line 303
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 304
    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v3, v1}, Lcom/miui/internal/widget/ActionBarView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    .line 305
    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v3, v2}, Lcom/miui/internal/widget/ActionBarView;->setSplitActionBar(Z)V

    .line 306
    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v3, v2}, Lcom/miui/internal/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    .line 308
    sget v3, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/widget/ActionBarContextView;

    .line 310
    invoke-virtual {v3, v1}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    .line 311
    invoke-virtual {v3, v2}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V

    .line 312
    invoke-virtual {v3, v2}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .line 316
    :cond_0
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 317
    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/miui/internal/app/AlertControllerImpl;->cs:I

    invoke-static {v3, v4, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 319
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->ct:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 320
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ct:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cj:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 323
    new-instance v0, Lcom/miui/internal/app/ActionBarImpl;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cK:Landroid/content/DialogInterface;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Lcom/miui/internal/app/ActionBarImpl;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->aR:Lmiui/app/ActionBar;

    .line 324
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->aR:Lmiui/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setDisplayOptions(I)V

    .line 326
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarView;->setCollapsable(Z)V

    .line 327
    goto :goto_0

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ct:Landroid/view/Window;

    iget v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cs:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 330
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-nez v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ct:Landroid/view/Window;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 332
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ct:Landroid/view/Window;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 335
    :cond_2
    :goto_0
    return-void
.end method

.method private v()V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cu:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 552
    if-eqz v0, :cond_0

    .line 553
    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->a(Landroid/view/ViewGroup;)V

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cu:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->contentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 559
    if-eqz v0, :cond_1

    .line 560
    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->b(Landroid/view/ViewGroup;)V

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cu:Landroid/view/ViewGroup;

    sget v1, Lmiui/R$id;->customPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 566
    if-eqz v0, :cond_2

    .line 567
    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->a(Landroid/widget/FrameLayout;)V

    .line 571
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cu:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->checkboxPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 573
    if-eqz v0, :cond_3

    .line 574
    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->b(Landroid/widget/FrameLayout;)V

    .line 578
    :cond_3
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cu:Landroid/view/ViewGroup;

    sget v1, Lcom/miui/internal/R$id;->buttonPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 580
    if-eqz v0, :cond_4

    .line 581
    invoke-direct {p0, v0}, Lcom/miui/internal/app/AlertControllerImpl;->c(Landroid/view/ViewGroup;)V

    .line 583
    :cond_4
    return-void
.end method

.method private w()V
    .locals 3

    .line 709
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v0

    .line 710
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_6

    .line 711
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 712
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cu:Landroid/view/ViewGroup;

    sget v2, Lcom/miui/internal/R$id;->cancel:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 713
    if-eqz v1, :cond_0

    .line 714
    new-instance v2, Lcom/miui/internal/app/AlertControllerImpl$3;

    invoke-direct {v2, p0}, Lcom/miui/internal/app/AlertControllerImpl$3;-><init>(Lcom/miui/internal/app/AlertControllerImpl;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 722
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cu:Landroid/view/ViewGroup;

    sget v2, Lcom/miui/internal/R$id;->select:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 723
    if-eqz v1, :cond_1

    .line 724
    iput-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cz:Landroid/widget/Button;

    .line 725
    new-instance v2, Lcom/miui/internal/app/AlertControllerImpl$4;

    invoke-direct {v2, p0, v1}, Lcom/miui/internal/app/AlertControllerImpl$4;-><init>(Lcom/miui/internal/app/AlertControllerImpl;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 736
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cz:Landroid/widget/Button;

    if-eqz v1, :cond_4

    .line 737
    new-instance v1, Lmiui/widget/EditableListViewWrapper;

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/ListView;

    invoke-direct {v1, v2}, Lmiui/widget/EditableListViewWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cw:Lmiui/widget/EditableListViewWrapper;

    .line 738
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 739
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cw:Lmiui/widget/EditableListViewWrapper;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lmiui/widget/EditableListViewWrapper;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 740
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    .line 742
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/ListView;

    new-instance v2, Lcom/miui/internal/app/AlertControllerImpl$5;

    invoke-direct {v2, p0, v0}, Lcom/miui/internal/app/AlertControllerImpl$5;-><init>(Lcom/miui/internal/app/AlertControllerImpl;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 751
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItems:[Z

    if-eqz v0, :cond_2

    .line 752
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItems:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 753
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cw:Lmiui/widget/EditableListViewWrapper;

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItems:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {v1, v0, v2}, Lmiui/widget/EditableListViewWrapper;->setItemChecked(IZ)V

    .line 752
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 756
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cz:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cw:Lmiui/widget/EditableListViewWrapper;

    invoke-virtual {v1}, Lmiui/widget/EditableListViewWrapper;->isAllItemsChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 757
    sget v1, Lmiui/R$string;->deselect_all:I

    goto :goto_1

    :cond_3
    sget v1, Lmiui/R$string;->select_all:I

    .line 756
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 758
    goto :goto_2

    .line 759
    :cond_4
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 761
    :goto_2
    goto :goto_3

    .line 762
    :cond_5
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 766
    :cond_6
    :goto_3
    iget v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItem:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_7

    .line 767
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/ListView;

    iget v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItem:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 768
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/ListView;

    iget v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItem:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 770
    :cond_7
    return-void
.end method

.method private x()V
    .locals 4

    .line 823
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cx:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->dialog_title_average_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 826
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cx:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cx:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/app/AlertControllerImpl;->cx:Landroid/widget/TextView;

    .line 827
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    .line 826
    invoke-virtual {v1, v2, v0, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 829
    :cond_0
    return-void
.end method


# virtual methods
.method createMenu()Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 2

    .line 361
    new-instance v0, Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 362
    invoke-virtual {v0, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    .line 363
    return-object v0
.end method

.method public getActionBar()Lmiui/app/ActionBar;
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->aR:Lmiui/app/ActionBar;

    return-object v0
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 0

    .line 514
    packed-switch p1, :pswitch_data_0

    .line 522
    const/4 p1, 0x0

    return-object p1

    .line 516
    :pswitch_0
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cA:Landroid/widget/Button;

    return-object p1

    .line 518
    :pswitch_1
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cD:Landroid/widget/Button;

    return-object p1

    .line 520
    :pswitch_2
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cG:Landroid/widget/Button;

    return-object p1

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCheckedItems()[Z
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItems:[Z

    return-object v0
.end method

.method public getDialogInterface()Landroid/content/DialogInterface;
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cK:Landroid/content/DialogInterface;

    return-object v0
.end method

.method public getListItemLayout()I
    .locals 1

    .line 482
    iget v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cr:I

    return v0
.end method

.method public getListLayout()I
    .locals 1

    .line 478
    iget v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->co:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/ListView;

    return-object v0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMultiChoiceItemLayout()I
    .locals 1

    .line 490
    iget v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cp:I

    return v0
.end method

.method public getSingleChoiceItemLayout()I
    .locals 1

    .line 486
    iget v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cq:I

    return v0
.end method

.method public installContent()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ct:Landroid/view/Window;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 289
    :cond_1
    invoke-direct {p0}, Lcom/miui/internal/app/AlertControllerImpl;->u()V

    .line 290
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->ct:Landroid/view/Window;

    sget v1, Lcom/miui/internal/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cu:Landroid/view/ViewGroup;

    .line 291
    invoke-direct {p0}, Lcom/miui/internal/app/AlertControllerImpl;->v()V

    .line 292
    return-void
.end method

.method public isChecked()Z
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cu:Landroid/view/ViewGroup;

    const v1, 0x1020001

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIsChecked:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 540
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cJ:Landroid/widget/ScrollView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cJ:Landroid/widget/ScrollView;

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 545
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cJ:Landroid/widget/ScrollView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cJ:Landroid/widget/ScrollView;

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1

    .line 381
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mOnActionItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    .line 382
    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mOnActionItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cK:Landroid/content/DialogInterface;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    invoke-interface {p1, v0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 384
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0

    .line 389
    return-void
.end method

.method public setActionItems(Ljava/util/ArrayList;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;",
            ">;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 465
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mActionItems:Ljava/util/ArrayList;

    .line 466
    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mOnActionItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 467
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mAdapter:Landroid/widget/ListAdapter;

    .line 532
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 0

    .line 439
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 440
    iget-object p4, p0, Lcom/miui/internal/app/AlertControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 443
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 460
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 445
    :pswitch_0
    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cB:Ljava/lang/CharSequence;

    .line 446
    iput-object p4, p0, Lcom/miui/internal/app/AlertControllerImpl;->cC:Landroid/os/Message;

    .line 447
    goto :goto_0

    .line 450
    :pswitch_1
    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cE:Ljava/lang/CharSequence;

    .line 451
    iput-object p4, p0, Lcom/miui/internal/app/AlertControllerImpl;->cF:Landroid/os/Message;

    .line 452
    goto :goto_0

    .line 455
    :pswitch_2
    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->cH:Ljava/lang/CharSequence;

    .line 456
    iput-object p4, p0, Lcom/miui/internal/app/AlertControllerImpl;->cI:Landroid/os/Message;

    .line 457
    nop

    .line 462
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCheckBox(ZLjava/lang/CharSequence;)V
    .locals 0

    .line 434
    iput-boolean p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIsChecked:Z

    .line 435
    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckBoxMessage:Ljava/lang/CharSequence;

    .line 436
    return-void
.end method

.method public setCheckedItem(I)V
    .locals 0

    .line 535
    iput p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItem:I

    .line 536
    return-void
.end method

.method public setCheckedItems([Z)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCheckedItems:[Z

    .line 499
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    .line 410
    return-void
.end method

.method public setIcon(I)V
    .locals 0

    .line 397
    iput p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIconId:I

    .line 398
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 399
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 393
    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mIconId:I

    .line 394
    return-void
.end method

.method public setListView(Landroid/widget/ListView;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->cv:Landroid/widget/ListView;

    .line 475
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 413
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mMessage:Ljava/lang/CharSequence;

    .line 414
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cy:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 418
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 402
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mTitle:Ljava/lang/CharSequence;

    .line 403
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cx:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl;->cx:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl;->mView:Landroid/view/View;

    .line 431
    return-void
.end method
