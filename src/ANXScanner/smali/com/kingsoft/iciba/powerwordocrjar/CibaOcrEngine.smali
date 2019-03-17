.class public Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/kingsoft/iciba/a/a;

.field b:J

.field private c:Ljava/lang/String;

.field private d:Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryResultListener;

.field private e:Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryViewResultListener;

.field private f:Lcom/kingsoft/iciba/powerwordocrjar/n;

.field private g:Landroid/content/Context;

.field private h:Lcom/kingsoft/iciba/powerwordocrjar/m;

.field private i:I

.field private j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

.field private k:I

.field private l:I

.field private m:Lcom/kingsoft/iciba/a/a/a;

.field private n:Lcom/kingsoft/iciba/powerwordocrjar/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a:Lcom/kingsoft/iciba/a/a;

    const-wide/32 v0, 0x3ea3b87

    iput-wide v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->b:J

    const/4 v0, 0x4

    iput v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->i:I

    new-instance v0, Lcom/kingsoft/iciba/powerwordocrjar/a;

    invoke-direct {v0, p0}, Lcom/kingsoft/iciba/powerwordocrjar/a;-><init>(Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;)V

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->m:Lcom/kingsoft/iciba/a/a/a;

    new-instance v0, Lcom/kingsoft/iciba/powerwordocrjar/b;

    invoke-direct {v0, p0}, Lcom/kingsoft/iciba/powerwordocrjar/b;-><init>(Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;)V

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->n:Lcom/kingsoft/iciba/powerwordocrjar/f;

    invoke-direct {p0, p1}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;Landroid/content/Context;)Landroid/view/View;
    .locals 11

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {p2, v2}, Lcom/hanvon/ocrtranslate/a;->a(Landroid/content/Context;F)I

    move-result v5

    iget-object v2, p1, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->shiyiBeans:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    move v1, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;

    const/4 v7, 0x3

    if-lt v2, v7, :cond_1

    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    add-int/lit8 v5, v1, 0xa

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v9, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v8}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->b(Landroid/widget/TextView;)V

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v9}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->b(Landroid/widget/TextView;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v10, v0, Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;->cixing:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_2
    iget-object v0, v0, Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;->shiyi:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    iget-object v10, v0, Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;->cixing:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    int-to-float v10, v1

    cmpl-float v10, v8, v10

    if-lez v10, :cond_2

    float-to-int v1, v8

    goto :goto_2

    :cond_4
    return-object v3
.end method

.method static synthetic a(Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;Landroid/content/Context;)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a(Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;Landroid/content/Context;)Landroid/view/View;
    .locals 11

    const/16 v10, 0x11

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v0, p1, Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;->word:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p2, v0}, Lcom/hanvon/ocrtranslate/a;->a(Landroid/content/Context;F)I

    move-result v3

    mul-int/lit8 v0, v3, 0x2

    invoke-virtual {v2, v3, v3, v3, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    iget v0, v0, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->backgroundColor:I

    if-ne v0, v7, :cond_7

    :cond_1
    const/high16 v0, -0x4e000000

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_1
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    iget v1, v1, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->wordSize:I

    if-ne v1, v7, :cond_8

    :cond_2
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_2
    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    iget v1, v1, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->wordColor:I

    if-eq v1, v7, :cond_3

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    iget v1, v1, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->wordColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v1, p1, Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;->word:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget v0, p1, Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;->status:I

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;->baseInfoBeans:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;->baseInfoBeans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    :cond_4
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    iget v1, v1, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->tipsSize:I

    if-eq v1, v7, :cond_5

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    iget v1, v1, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->tipsSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_5
    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    iget v1, v1, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->tipsColor:I

    if-eq v1, v7, :cond_6

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    iget v1, v1, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->tipsColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    invoke-static {p2}, Lcom/hanvon/ocrtranslate/a;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "\u4e0d\u6e05\u6670?\u6211\u518d\u8bd5\u8bd5\u5427"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8, v3, v8, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_4
    move-object v0, v2

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    iget v0, v0, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->backgroundColor:I

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    iget v1, v1, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->wordSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_2

    :cond_9
    const-string v1, "\u672c\u5730\u65e0\u91ca\u4e49\uff0c\u8bf7\u6253\u5f00\u7f51\u7edc\u8fdb\u884c\u67e5\u8be2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_a
    iget-object v0, p1, Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;->baseInfoBeans:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;

    iget-object v1, v0, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->usSymbol:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->ukSymbol:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v0, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->chSymbol:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    iget-object v1, p1, Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;->baseInfoBeans:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;

    invoke-direct {p0, v1, p2}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->b(Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8, v8}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->k:I

    mul-int/lit8 v6, v3, 0x2

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_10

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :goto_5
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_c
    iget-object v1, v0, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->shiyiBeans:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    iget-object v0, v0, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->shiyiBeans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p1, Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;->baseInfoBeans:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;

    invoke-direct {p0, v0, p2}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a(Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_d
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    iget v1, v1, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->tipsSize:I

    if-eq v1, v7, :cond_e

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    iget v1, v1, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->tipsSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_e
    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    iget v1, v1, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->tipsColor:I

    if-eq v1, v7, :cond_f

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    iget v1, v1, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->tipsColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_f
    const-string v1, "\u67e5\u770b\u5b8c\u6574\u91ca\u4e49"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8, v3, v8, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/kingsoft/iciba/powerwordocrjar/c;

    invoke-direct {v1, p0, p2, p1}, Lcom/kingsoft/iciba/powerwordocrjar/c;-><init>(Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;Landroid/content/Context;Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :cond_10
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_5
.end method

.method static synthetic a(Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;)Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryViewResultListener;
    .locals 1

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->e:Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryViewResultListener;

    return-object v0
.end method

.method static synthetic a(Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;Ljava/lang/String;)Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;
    .locals 1

    invoke-direct {p0, p1}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a(Ljava/lang/String;)Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;
    .locals 14

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-instance v4, Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;

    invoke-direct {v4}, Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "status"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    iput v2, v4, Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;->status:I

    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "word_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;->word:Ljava/lang/String;

    const-string v2, "baseInfo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "translate_type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_2

    const-string v2, "symbols"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move v3, v1

    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_3

    new-instance v7, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;

    invoke-direct {v7}, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;-><init>()V

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "ph_am"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->usSymbol:Ljava/lang/String;

    const-string v2, "ph_en"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->ukSymbol:Ljava/lang/String;

    const-string v2, "ph_other"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->ttsSymbol:Ljava/lang/String;

    const-string v2, "word_symbol"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->chSymbol:Ljava/lang/String;

    const-string v2, "parts"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    move v2, v1

    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v9, Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;

    invoke-direct {v9}, Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;-><init>()V

    const-string v10, "part"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;->cixing:Ljava/lang/String;

    const-string v10, "means"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_2
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v0, v12, :cond_0

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;->shiyi:Ljava/lang/String;

    iget-object v0, v7, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->shiyiBeans:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v2, v1, :cond_3

    new-instance v1, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;

    invoke-direct {v1}, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;-><init>()V

    new-instance v2, Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;

    invoke-direct {v2}, Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;-><init>()V

    const-string v3, "translate_result"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;->shiyi:Ljava/lang/String;

    iget-object v0, v1, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->shiyiBeans:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_3
    iput-object v5, v4, Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;->baseInfoBeans:Ljava/util/ArrayList;

    return-object v4

    :cond_4
    :try_start_1
    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "word_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;->word:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private a(I[B[I)Ljava/lang/String;
    .locals 5

    const-string v1, ""

    if-ltz p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, p3, v3

    const-string v4, "ucs-2"

    invoke-direct {v0, p2, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;III[B[IIIII[I[I[I[I[I)Ljava/lang/String;
    .locals 19

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->l:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->c:Ljava/lang/String;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    invoke-static/range {v3 .. v18}, Lcom/hanvon/ocrtranslate/Ocr;->instantTransArea(Ljava/lang/String;Ljava/lang/String;III[B[IIIII[I[I[I[I[I)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v0, v3, v1, v2}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a(I[B[I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\r\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[`~@#^&*+=|{}\\[\\]<>/~@#%\u2026\u2026&*\uff08\uff09\u2014\u2014+|{}\u3010\u3011]"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private a(ILjava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_3

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x65

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->m:Lcom/kingsoft/iciba/a/a/a;

    invoke-direct {p0, p2, v0}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a(Ljava/lang/String;Lcom/kingsoft/iciba/a/a/a;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_1
    invoke-direct {p0, p2, v0}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_1
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_2
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_3
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const/4 v0, 0x4

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;

    invoke-direct {v0}, Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;-><init>()V

    iput-object p2, v0, Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;->word:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->e:Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryViewResultListener;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->l:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->g:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a(Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->e:Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryViewResultListener;

    invoke-interface {v2, v1}, Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryViewResultListener;->iksCibaQueryViewResultListener(Landroid/view/View;)V

    :cond_4
    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->d:Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryResultListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->d:Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryResultListener;

    invoke-interface {v1, v0}, Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryResultListener;->iksCibaQueryResultListener(Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x67 -> :sswitch_2
        0x68 -> :sswitch_3
        0x69 -> :sswitch_4
    .end sparse-switch
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->g:Landroid/content/Context;

    new-instance v0, Lcom/kingsoft/iciba/a/a;

    invoke-direct {v0, p1}, Lcom/kingsoft/iciba/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a:Lcom/kingsoft/iciba/a/a;

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a:Lcom/kingsoft/iciba/a/a;

    iget-wide v2, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/kingsoft/iciba/a/a;->a(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/db/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->c:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "db"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_2

    const-string v0, "db"

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/hanvon/ocrtranslate/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    iget v0, v0, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->symbolColor:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    iget v0, v0, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->symbolColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    iget v0, v0, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->symbolSize:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    iget v0, v0, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->symbolSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->f:Lcom/kingsoft/iciba/powerwordocrjar/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/kingsoft/iciba/powerwordocrjar/n;

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->n:Lcom/kingsoft/iciba/powerwordocrjar/f;

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/iciba/powerwordocrjar/n;-><init>(Landroid/content/Context;Lcom/kingsoft/iciba/powerwordocrjar/f;)V

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->f:Lcom/kingsoft/iciba/powerwordocrjar/n;

    :cond_0
    new-instance v0, Lcom/kingsoft/iciba/powerwordocrjar/m;

    invoke-direct {v0}, Lcom/kingsoft/iciba/powerwordocrjar/m;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->h:Lcom/kingsoft/iciba/powerwordocrjar/m;

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->h:Lcom/kingsoft/iciba/powerwordocrjar/m;

    iput-object p1, v0, Lcom/kingsoft/iciba/powerwordocrjar/m;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->h:Lcom/kingsoft/iciba/powerwordocrjar/m;

    iput p2, v0, Lcom/kingsoft/iciba/powerwordocrjar/m;->b:I

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->h:Lcom/kingsoft/iciba/powerwordocrjar/m;

    const/4 v1, 0x1

    iput v1, v0, Lcom/kingsoft/iciba/powerwordocrjar/m;->d:I

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->f:Lcom/kingsoft/iciba/powerwordocrjar/n;

    iget-object v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->h:Lcom/kingsoft/iciba/powerwordocrjar/m;

    invoke-virtual {v0, v1}, Lcom/kingsoft/iciba/powerwordocrjar/n;->a(Lcom/kingsoft/iciba/powerwordocrjar/m;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/kingsoft/iciba/a/a/a;)V
    .locals 3

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a:Lcom/kingsoft/iciba/a/a;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Lcom/kingsoft/iciba/a/a;->a(Ljava/lang/String;ILcom/kingsoft/iciba/a/a/a;)V

    return-void
.end method

.method static synthetic b(Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;)I
    .locals 1

    iget v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->l:I

    return v0
.end method

.method private b(Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;Landroid/content/Context;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p2, v0}, Lcom/hanvon/ocrtranslate/a;->a(Landroid/content/Context;F)I

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {p2, v1}, Lcom/hanvon/ocrtranslate/a;->a(Landroid/content/Context;F)I

    move-result v1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6, v0, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p1, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->ukSymbol:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6, v6, v0, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a(Landroid/widget/TextView;)V

    const-string v3, "\u82f1"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6, v6, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/kingsoft/iciba/powerwordocrjar/SymbolTextView;

    invoke-direct {v0, p2}, Lcom/kingsoft/iciba/powerwordocrjar/SymbolTextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a(Landroid/widget/TextView;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->ukSymbol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/kingsoft/iciba/powerwordocrjar/SymbolTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p1, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->usSymbol:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a(Landroid/widget/TextView;)V

    invoke-virtual {v1, v6, v6, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v3, "\u7f8e"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/kingsoft/iciba/powerwordocrjar/SymbolTextView;

    invoke-direct {v1, p2}, Lcom/kingsoft/iciba/powerwordocrjar/SymbolTextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a(Landroid/widget/TextView;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->usSymbol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/kingsoft/iciba/powerwordocrjar/SymbolTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p1, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->chSymbol:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/kingsoft/iciba/powerwordocrjar/SymbolTextView;

    invoke-direct {v0, p2}, Lcom/kingsoft/iciba/powerwordocrjar/SymbolTextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a(Landroid/widget/TextView;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->chSymbol:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/iciba/powerwordocrjar/SymbolTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-object v2
.end method

.method private b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    sparse-switch p2, :sswitch_data_0

    const-string v0, "[`~!@#$%^&*()+=|{}:;\\[\\].<>/?~\uff01@#\uffe5%\u2026\u2026&*\uff08\uff09\u2014\u2014+|{}\u3010\u3011\uff1b\uff1a\u201d\u201c\u3002\uff0c\u3001\uff1f]"

    :goto_0
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "[^\u4e00-\u9fa5]+"

    goto :goto_0

    :sswitch_1
    const-string v0, "[^A-Za-z]+"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x65 -> :sswitch_1
    .end sparse-switch
.end method

.method private b(Landroid/widget/TextView;)V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    iget v0, v0, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->meansColor:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    iget v0, v0, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->meansColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    iget v0, v0, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->meansSize:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    iget v0, v0, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->meansSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;)Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryResultListener;
    .locals 1

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->d:Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryResultListener;

    return-object v0
.end method


# virtual methods
.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->i:I

    return v0
.end method

.method public instantRecogArea(Ljava/lang/String;III[B[IIIII[I[I[I[I[I)Ljava/lang/String;
    .locals 1

    invoke-direct/range {p0 .. p15}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a(Ljava/lang/String;III[B[IIIII[I[I[I[I[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public instantTransArea(Ljava/lang/String;III[B[IIIII[I[I[I[I[I)V
    .locals 1

    invoke-direct/range {p0 .. p15}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a(Ljava/lang/String;III[B[IIIII[I[I[I[I[I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a(ILjava/lang/String;)V

    return-void
.end method

.method public instantTransPoint(Ljava/lang/String;III[B[III[I[I[I[I[I)V
    .locals 17

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->l:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->c:Ljava/lang/String;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    invoke-static/range {v3 .. v16}, Lcom/hanvon/ocrtranslate/Ocr;->instantTransPoint(Ljava/lang/String;Ljava/lang/String;III[B[III[I[I[I[I[I)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v0, v3, v1, v2}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a(I[B[I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_2

    const-string v3, "\r\n"

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v4, 0x2

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_1

    aget v8, p10, v3

    iput v8, v7, Landroid/graphics/Rect;->left:I

    aget v8, p11, v3

    iput v8, v7, Landroid/graphics/Rect;->top:I

    aget v8, p12, v3

    iput v8, v7, Landroid/graphics/Rect;->right:I

    aget v8, p13, v3

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, v7, Landroid/graphics/Rect;->left:I

    move/from16 v0, p7

    if-le v0, v8, :cond_0

    iget v8, v7, Landroid/graphics/Rect;->right:I

    move/from16 v0, p7

    if-ge v0, v8, :cond_0

    iget v8, v7, Landroid/graphics/Rect;->top:I

    move/from16 v0, p8

    if-le v0, v8, :cond_0

    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p8

    if-ge v0, v8, :cond_0

    :goto_1
    invoke-static {v5, v3}, Lcom/hanvon/ocrtranslate/CNTools;->nativeGetLongestSubstr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a(ILjava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    move-object v3, v5

    goto :goto_2
.end method

.method public setOnIKSCibaQueryResultListener(Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->d:Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryResultListener;

    return-void
.end method

.method public setOnIKSCibaQueryViewResultListener(Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryViewResultListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->e:Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryViewResultListener;

    iput p2, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->k:I

    return-void
.end method

.method public setViewConfigure(Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;)V
    .locals 0

    iput-object p1, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->j:Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;

    return-void
.end method

.method public showDetailMeaning(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "com.kingsoft"

    invoke-static {p1, v0}, Lcom/hanvon/ocrtranslate/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a:Lcom/kingsoft/iciba/a/a;

    invoke-static {p1, p2, p3}, Lcom/kingsoft/iciba/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    if-nez p4, :cond_3

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/CibaOcrEngine;->a:Lcom/kingsoft/iciba/a/a;

    invoke-static {p1, p2, p3}, Lcom/kingsoft/iciba/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.iciba.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
