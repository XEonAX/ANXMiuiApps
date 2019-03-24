.class public Lmiui/widget/GuidePopupWindow;
.super Lmiui/widget/ArrowPopupWindow;
.source "SourceFile"


# static fields
.field public static final ARROW_BOTTOM_LEFT_MODE:I = 0x0

.field public static final ARROW_BOTTOM_MODE:I = 0x0

.field public static final ARROW_BOTTOM_RIGHT_MODE:I = 0x0

.field public static final ARROW_LEFT_MODE:I = 0x3

.field public static final ARROW_RIGHT_MODE:I = 0x2

.field public static final ARROW_TOP_LEFT_MODE:I = 0x1

.field public static final ARROW_TOP_MODE:I = 0x1

.field public static final ARROW_TOP_RIGHT_MODE:I = 0x1

.field private static final Tu:I = 0x1388


# instance fields
.field private Rp:I

.field private Tt:Landroid/widget/LinearLayout;

.field private Tv:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;)V

    .line 218
    new-instance p1, Lmiui/widget/GuidePopupWindow$1;

    invoke-direct {p1, p0}, Lmiui/widget/GuidePopupWindow$1;-><init>(Lmiui/widget/GuidePopupWindow;)V

    iput-object p1, p0, Lmiui/widget/GuidePopupWindow;->Tv:Ljava/lang/Runnable;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 218
    new-instance p1, Lmiui/widget/GuidePopupWindow$1;

    invoke-direct {p1, p0}, Lmiui/widget/GuidePopupWindow$1;-><init>(Lmiui/widget/GuidePopupWindow;)V

    iput-object p1, p0, Lmiui/widget/GuidePopupWindow;->Tv:Ljava/lang/Runnable;

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 218
    new-instance p1, Lmiui/widget/GuidePopupWindow$1;

    invoke-direct {p1, p0}, Lmiui/widget/GuidePopupWindow$1;-><init>(Lmiui/widget/GuidePopupWindow;)V

    iput-object p1, p0, Lmiui/widget/GuidePopupWindow;->Tv:Ljava/lang/Runnable;

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 218
    new-instance p1, Lmiui/widget/GuidePopupWindow$1;

    invoke-direct {p1, p0}, Lmiui/widget/GuidePopupWindow$1;-><init>(Lmiui/widget/GuidePopupWindow;)V

    iput-object p1, p0, Lmiui/widget/GuidePopupWindow;->Tv:Ljava/lang/Runnable;

    .line 122
    return-void
.end method

.method private M(Ljava/lang/String;)V
    .locals 6

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    return-void

    .line 161
    :cond_0
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 162
    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_1

    .line 165
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/GuidePopupWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 166
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 167
    sget v4, Lcom/miui/internal/R$layout;->guide_popup_text_view:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 168
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v3, p0, Lmiui/widget/GuidePopupWindow;->Tt:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_2
    return-void

    .line 163
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected onPrepareWindow()V
    .locals 5

    .line 126
    invoke-super {p0}, Lmiui/widget/ArrowPopupWindow;->onPrepareWindow()V

    .line 128
    const/16 v0, 0x1388

    iput v0, p0, Lmiui/widget/GuidePopupWindow;->Rp:I

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/GuidePopupWindow;->setFocusable(Z)V

    .line 131
    invoke-virtual {p0}, Lmiui/widget/GuidePopupWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 132
    sget v2, Lcom/miui/internal/R$layout;->guide_popup_content_view:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lmiui/widget/GuidePopupWindow;->Tt:Landroid/widget/LinearLayout;

    .line 133
    iget-object v1, p0, Lmiui/widget/GuidePopupWindow;->Tt:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lmiui/widget/GuidePopupWindow;->setContentView(Landroid/view/View;)V

    .line 135
    iget-object v1, p0, Lmiui/widget/GuidePopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ArrowPopupView;->enableShowingAnimation(Z)V

    .line 136
    return-void
.end method

.method public setGuideText(I)V
    .locals 1

    .line 153
    invoke-virtual {p0}, Lmiui/widget/GuidePopupWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-virtual {p0, p1}, Lmiui/widget/GuidePopupWindow;->setGuideText(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public setGuideText(Ljava/lang/String;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lmiui/widget/GuidePopupWindow;->M(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public setOffset(II)V
    .locals 1

    .line 207
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ArrowPopupView;->setOffset(II)V

    .line 208
    return-void
.end method

.method public setShowDuration(I)V
    .locals 0

    .line 215
    iput p1, p0, Lmiui/widget/GuidePopupWindow;->Rp:I

    .line 216
    return-void
.end method

.method public show(Landroid/view/View;IIZ)V
    .locals 0

    .line 195
    invoke-virtual {p0, p1, p2, p3}, Lmiui/widget/GuidePopupWindow;->show(Landroid/view/View;II)V

    .line 196
    if-eqz p4, :cond_0

    .line 197
    iget-object p1, p0, Lmiui/widget/GuidePopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    iget-object p2, p0, Lmiui/widget/GuidePopupWindow;->Tv:Ljava/lang/Runnable;

    iget p3, p0, Lmiui/widget/GuidePopupWindow;->Rp:I

    int-to-long p3, p3

    invoke-virtual {p1, p2, p3, p4}, Lcom/miui/internal/widget/ArrowPopupView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 199
    :cond_0
    return-void
.end method

.method public show(Landroid/view/View;Z)V
    .locals 1

    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lmiui/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 182
    return-void
.end method
