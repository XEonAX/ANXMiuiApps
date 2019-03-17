.class public Lcom/xiaomi/scanner/ui/BusinessCardResultView;
.super Landroid/widget/RelativeLayout;
.source "BusinessCardResultView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/ui/BusinessCardResultView$FinishClick;,
        Lcom/xiaomi/scanner/ui/BusinessCardResultView$CustomClickSpannable;
    }
.end annotation


# instance fields
.field private businessCardItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/bean/BusinessCardItem;",
            ">;"
        }
    .end annotation
.end field

.field private businessContent:Landroid/widget/TextView;

.field private finishClick:Lcom/xiaomi/scanner/ui/BusinessCardResultView$FinishClick;

.field private imageBC:Landroid/widget/ImageView;

.field private indexSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private shadow:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 64
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 68
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->indexSet:Ljava/util/Set;

    .line 73
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->init()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/ui/BusinessCardResultView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/BusinessCardResultView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->businessContent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/ui/BusinessCardResultView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/BusinessCardResultView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->shadow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/ui/BusinessCardResultView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/BusinessCardResultView;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->reportBlueClick(I)V

    return-void
.end method

.method private addItemClickListenerAndColor(Ljava/lang/String;ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p4, "content"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-virtual {p4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 177
    .local v1, "startIndex":I
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->indexSet:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    invoke-virtual {p4, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 180
    :cond_0
    if-gez v1, :cond_1

    .line 186
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->indexSet:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int v0, v1, v2

    .line 185
    .local v0, "endIndex":I
    new-instance v2, Lcom/xiaomi/scanner/ui/BusinessCardResultView$CustomClickSpannable;

    new-instance v3, Lcom/xiaomi/scanner/bean/BusinessClickBean;

    invoke-direct {v3, p2, p1}, Lcom/xiaomi/scanner/bean/BusinessClickBean;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, p0, v3}, Lcom/xiaomi/scanner/ui/BusinessCardResultView$CustomClickSpannable;-><init>(Lcom/xiaomi/scanner/ui/BusinessCardResultView;Lcom/xiaomi/scanner/bean/BusinessClickBean;)V

    const/16 v3, 0x22

    invoke-virtual {p3, v2, v1, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private getStringFromCard(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/bean/BusinessCardItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "cardItemInfos":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/scanner/bean/BusinessCardItem;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 165
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/bean/BusinessCardItem;

    .line 166
    .local v2, "item":Lcom/xiaomi/scanner/bean/BusinessCardItem;
    iget-object v3, v2, Lcom/xiaomi/scanner/bean/BusinessCardItem;->itemName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/xiaomi/scanner/bean/BusinessCardItem;->itemValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_0

    .line 168
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v2    # "item":Lcom/xiaomi/scanner/bean/BusinessCardItem;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private hasCanClick(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 159
    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reportBlueClick(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "id":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 253
    :goto_0
    if-eqz v0, :cond_0

    .line 254
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->trackBCEvent(Ljava/lang/String;)V

    .line 256
    :cond_0
    return-void

    .line 237
    :sswitch_0
    const-string v0, "business_card_phone_click"

    .line 238
    goto :goto_0

    .line 241
    :sswitch_1
    const-string v0, "business_card_address_click"

    .line 242
    goto :goto_0

    .line 244
    :sswitch_2
    const-string v0, "business_card_email_click"

    .line 245
    goto :goto_0

    .line 247
    :sswitch_3
    const-string v0, "business_card_date_click"

    .line 248
    goto :goto_0

    .line 250
    :sswitch_4
    const-string v0, "business_card_link_click"

    goto :goto_0

    .line 234
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_2
        0xe -> :sswitch_1
        0xf -> :sswitch_1
        0x11 -> :sswitch_4
        0x12 -> :sswitch_3
    .end sparse-switch
.end method

.method private textForCopy()Ljava/lang/String;
    .locals 5

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v0, "contentBuild":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->businessCardItems:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->businessCardItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->businessCardItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 125
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->businessCardItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/bean/BusinessCardItem;

    .line 126
    .local v2, "info":Lcom/xiaomi/scanner/bean/BusinessCardItem;
    iget-object v3, v2, Lcom/xiaomi/scanner/bean/BusinessCardItem;->itemName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/xiaomi/scanner/bean/BusinessCardItem;->itemValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->businessCardItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_0

    .line 128
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "i":I
    .end local v2    # "info":Lcom/xiaomi/scanner/bean/BusinessCardItem;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private trackBCEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaomi/scanner/app/ScanActivity;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/ScanActivity;->isOnlyBusinessCardScan()Z

    move-result v0

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackBCEvent(ZLjava/lang/String;)V

    .line 262
    :cond_0
    return-void
.end method


# virtual methods
.method protected copy()V
    .locals 4

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 117
    .local v0, "cm":Landroid/content/ClipboardManager;
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->textForCopy()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 118
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07003a

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 119
    return-void
.end method

.method protected init()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03001e

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 87
    const v0, 0x7f0d007f

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v0, 0x7f0d0083

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v0, 0x7f0d0082

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v0, 0x7f0d0084

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->businessContent:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0d0080

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->imageBC:Landroid/widget/ImageView;

    .line 93
    const v0, 0x7f0d0085

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->shadow:Landroid/view/View;

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 96
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->businessContent:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 98
    :cond_0
    const v0, 0x7f0b000c

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->setBackgroundResource(I)V

    .line 100
    sget-boolean v0, Lcom/xiaomi/scanner/util/Util;->hasNativageBar:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->isFullScreenDevice()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getNavigationBarHeight()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->setPadding(IIII)V

    .line 101
    return-void

    :cond_1
    move v0, v1

    .line 100
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 206
    :goto_0
    :pswitch_0
    return-void

    .line 192
    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->finishClick:Lcom/xiaomi/scanner/ui/BusinessCardResultView$FinishClick;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->finishClick:Lcom/xiaomi/scanner/ui/BusinessCardResultView$FinishClick;

    invoke-interface {v0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView$FinishClick;->onFinishClick()V

    .line 195
    :cond_0
    const-string v0, "business_card_result_back"

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->trackBCEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->copy()V

    .line 199
    const-string v0, "business_card_copy_click"

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->trackBCEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :pswitch_3
    const-string v0, "business_card_create_contact"

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->trackBCEvent(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->businessCardItems:Ljava/util/List;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/xiaomi/scanner/module/code/utils/Utils;->newContact(Ljava/util/List;Landroid/app/Activity;)V

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d007f
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public setFinishClick(Lcom/xiaomi/scanner/ui/BusinessCardResultView$FinishClick;)V
    .locals 0
    .param p1, "finishClick"    # Lcom/xiaomi/scanner/ui/BusinessCardResultView$FinishClick;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->finishClick:Lcom/xiaomi/scanner/ui/BusinessCardResultView$FinishClick;

    .line 61
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 79
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->indexSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 82
    :cond_0
    return-void
.end method

.method public showResult(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/bean/BusinessCardItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "cardItemList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/scanner/bean/BusinessCardItem;>;"
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->businessCardItems:Ljava/util/List;

    .line 137
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->getStringFromCard(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "content":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 143
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/bean/BusinessCardItem;

    .line 144
    .local v2, "item":Lcom/xiaomi/scanner/bean/BusinessCardItem;
    iget v4, v2, Lcom/xiaomi/scanner/bean/BusinessCardItem;->itemType:I

    invoke-direct {p0, v4}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->hasCanClick(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    iget-object v4, v2, Lcom/xiaomi/scanner/bean/BusinessCardItem;->itemValue:Ljava/lang/String;

    iget v5, v2, Lcom/xiaomi/scanner/bean/BusinessCardItem;->itemType:I

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->addItemClickListenerAndColor(Ljava/lang/String;ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 148
    .end local v2    # "item":Lcom/xiaomi/scanner/bean/BusinessCardItem;
    :cond_3
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->businessContent:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 149
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->businessContent:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->businessContent:Landroid/widget/TextView;

    new-instance v4, Lcom/xiaomi/scanner/ui/BusinessCardResultView$1;

    invoke-direct {v4, p0}, Lcom/xiaomi/scanner/ui/BusinessCardResultView$1;-><init>(Lcom/xiaomi/scanner/ui/BusinessCardResultView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public updateView(Landroid/graphics/Bitmap;Ljava/util/List;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/bean/BusinessCardItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/scanner/bean/BusinessCardItem;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->imageBC:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 112
    :cond_0
    invoke-virtual {p0, p2}, Lcom/xiaomi/scanner/ui/BusinessCardResultView;->showResult(Ljava/util/List;)V

    .line 113
    return-void
.end method
