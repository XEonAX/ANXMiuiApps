.class Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter;
.super Landroid/widget/BaseAdapter;
.source "TranslateCompareView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompareAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter$Holder;
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 231
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$1;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter;->items:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter;->items:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter;->getItem(I)Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 208
    int-to-long v0, p1

    return-wide v0
.end method

.method public getTextString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 181
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter;->items:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;

    .line 184
    .local v1, "lineInfo":Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;
    invoke-virtual {v1}, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->toText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 186
    .end local v1    # "lineInfo":Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 188
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 214
    if-nez p2, :cond_1

    .line 215
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030043

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 216
    new-instance v0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter$Holder;

    invoke-direct {v0, v4}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter$Holder;-><init>(Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$1;)V

    .line 217
    .local v0, "holder":Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter$Holder;
    const v2, 0x7f0d0104

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter$Holder;->srcText:Landroid/widget/TextView;

    .line 218
    const v2, 0x7f0d0105

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter$Holder;->translateText:Landroid/widget/TextView;

    .line 219
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 223
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter;->getItem(I)Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;

    move-result-object v1

    .line 224
    .local v1, "lineInfo":Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;
    if-eqz v1, :cond_0

    .line 225
    iget-object v2, v0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter$Holder;->srcText:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v2, v0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter$Holder;->translateText:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->toText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :cond_0
    return-object p2

    .line 221
    .end local v0    # "holder":Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter$Holder;
    .end local v1    # "lineInfo":Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter$Holder;

    .restart local v0    # "holder":Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter$Holder;
    goto :goto_0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;>;"
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter;->items:Ljava/util/List;

    .line 193
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter;->notifyDataSetChanged()V

    .line 194
    return-void
.end method
