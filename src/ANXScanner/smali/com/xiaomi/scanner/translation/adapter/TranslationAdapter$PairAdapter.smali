.class abstract Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$PairAdapter;
.super Landroid/widget/BaseAdapter;
.source "TranslationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PairAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$PairAdapter;->this$0:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 139
    iget-object v0, p1, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$PairAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 140
    return-void
.end method

.method private initializeItemView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 160
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$PairAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03003c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/ui/LanguagePairLayout;

    .line 162
    .local v0, "itemLayout":Lcom/xiaomi/scanner/ui/LanguagePairLayout;
    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/LanguagePairLayout;->initAsItem()V

    .line 163
    return-object v0
.end method


# virtual methods
.method protected abstract getDest(I)Ljava/lang/String;
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 144
    int-to-long v0, p1

    return-wide v0
.end method

.method protected abstract getSource(I)Ljava/lang/String;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 149
    if-nez p2, :cond_0

    .line 150
    invoke-direct {p0, p3}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$PairAdapter;->initializeItemView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 152
    check-cast v0, Lcom/xiaomi/scanner/ui/LanguagePairLayout;

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$PairAdapter;->getSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$PairAdapter;->getDest(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/scanner/ui/LanguagePairLayout;->setLanguageEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-object p2
.end method
