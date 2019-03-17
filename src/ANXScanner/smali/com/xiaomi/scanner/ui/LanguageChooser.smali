.class public Lcom/xiaomi/scanner/ui/LanguageChooser;
.super Landroid/widget/LinearLayout;
.source "LanguageChooser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/ui/LanguageChooser$LanguageSwitchListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private mCurrentLanguage:Ljava/lang/String;

.field private mLanguageEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageEntryKey:Ljava/lang/String;

.field mLanguageItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mLanguageList:Landroid/widget/ListView;

.field private mLanguageListHeight:I

.field private mLanguageListWidth:I

.field private mLanguageListWindow:Landroid/widget/PopupWindow;

.field private mLanguageNameView:Landroid/widget/TextView;

.field private mLanguageValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListPopupMargin:I

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/ui/LanguageChooser$LanguageSwitchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPersist:Z

.field private mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "LanguageChooser"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/ui/LanguageChooser;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 209
    new-instance v2, Lcom/xiaomi/scanner/ui/LanguageChooser$2;

    invoke-direct {v2, p0}, Lcom/xiaomi/scanner/ui/LanguageChooser$2;-><init>(Lcom/xiaomi/scanner/ui/LanguageChooser;)V

    iput-object v2, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 51
    sget-object v2, Lcom/xiaomi/scanner/R$styleable;->LanguageChooser:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-static {}, Lcom/xiaomi/scanner/camera/CameraServicesImpl;->instance()Lcom/xiaomi/scanner/camera/CameraServicesImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/scanner/camera/CameraServicesImpl;->getSettingsManager()Lcom/xiaomi/scanner/settings/SettingsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    .line 55
    const/4 v2, 0x1

    .line 56
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 55
    invoke-direct {p0, v2}, Lcom/xiaomi/scanner/ui/LanguageChooser;->charSequenceToString([Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageEntries:Ljava/util/List;

    .line 58
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 57
    invoke-direct {p0, v2}, Lcom/xiaomi/scanner/ui/LanguageChooser;->charSequenceToString([Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageValues:Ljava/util/List;

    .line 59
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageEntryKey:Ljava/lang/String;

    .line 60
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mPersist:Z

    .line 62
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/LanguageChooser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 63
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v2, 0x2

    const v3, 0x7f08001d

    .line 64
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 63
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageListWidth:I

    .line 65
    const/4 v2, 0x3

    const v3, 0x7f0800cf

    .line 66
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 65
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageListHeight:I

    .line 67
    const/4 v2, 0x4

    const v3, 0x7f08008b

    .line 68
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 67
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mListPopupMargin:I

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/ui/LanguageChooser;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/LanguageChooser;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageListWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/ui/LanguageChooser;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/LanguageChooser;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageValues:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/ui/LanguageChooser;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/LanguageChooser;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mCurrentLanguage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/xiaomi/scanner/ui/LanguageChooser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/LanguageChooser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mCurrentLanguage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/xiaomi/scanner/ui/LanguageChooser;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaomi/scanner/ui/LanguageChooser;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/LanguageChooser;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/ui/LanguageChooser;->getLanguageEntry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaomi/scanner/ui/LanguageChooser;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/LanguageChooser;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaomi/scanner/ui/LanguageChooser;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/LanguageChooser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/ui/LanguageChooser;->saveLanguage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaomi/scanner/ui/LanguageChooser;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/ui/LanguageChooser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/ui/LanguageChooser;->notifyLanguageChange(Ljava/lang/String;)V

    return-void
.end method

.method private charSequenceToString([Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 5
    .param p1, "values"    # [Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 198
    :cond_0
    return-object v0

    .line 195
    :cond_1
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p1, v2

    .line 196
    .local v1, "value":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getLanguageEntry(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 184
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getLanguageIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageValues:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 162
    :goto_0
    return v0

    .line 161
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/ui/LanguageChooser;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLanguageIndex: invalid language "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSavedLanguage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/LanguageChooser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 167
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isInternationalBuild()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f07014c

    .line 166
    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "defaultLanguage":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageEntryKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    const-string v2, "default_scope"

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageEntryKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/xiaomi/scanner/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .end local v0    # "defaultLanguage":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 167
    :cond_1
    const v1, 0x7f07014b

    goto :goto_0
.end method

.method private initLanguageList()V
    .locals 8

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/LanguageChooser;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 133
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03003d

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 134
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0d00f6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageList:Landroid/widget/ListView;

    .line 135
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageList:Landroid/widget/ListView;

    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/LanguageChooser;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f030047

    iget-object v7, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageEntries:Ljava/util/List;

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageList:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 138
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 140
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/LanguageChooser;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800ce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 142
    .local v1, "itemHeight":I
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v1

    iget v4, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageListHeight:I

    if-ge v3, v4, :cond_0

    .line 143
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v1

    iput v3, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageListHeight:I

    .line 145
    :cond_0
    new-instance v3, Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageListWidth:I

    iget v5, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageListHeight:I

    invoke-direct {v3, v2, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageListWindow:Landroid/widget/PopupWindow;

    .line 146
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageListWindow:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageListWindow:Landroid/widget/PopupWindow;

    new-instance v4, Lcom/xiaomi/scanner/ui/LanguageChooser$1;

    invoke-direct {v4, p0}, Lcom/xiaomi/scanner/ui/LanguageChooser$1;-><init>(Lcom/xiaomi/scanner/ui/LanguageChooser;)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 153
    return-void
.end method

.method private notifyLanguageChange(Ljava/lang/String;)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/ui/LanguageChooser$LanguageSwitchListener;

    .line 204
    .local v0, "listener":Lcom/xiaomi/scanner/ui/LanguageChooser$LanguageSwitchListener;
    invoke-interface {v0, p1}, Lcom/xiaomi/scanner/ui/LanguageChooser$LanguageSwitchListener;->onLanguageSwitched(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    .end local v0    # "listener":Lcom/xiaomi/scanner/ui/LanguageChooser$LanguageSwitchListener;
    :cond_0
    return-void
.end method

.method private saveLanguage(Ljava/lang/String;)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageEntryKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mPersist:Z

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    const-string v1, "default_scope"

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageEntryKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/xiaomi/scanner/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    return-void
.end method

.method private showLanguageList(Landroid/view/View;)V
    .locals 8
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    .line 111
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageListWindow:Landroid/widget/PopupWindow;

    if-nez v2, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/LanguageChooser;->initLanguageList()V

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageListWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 116
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageListWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->update()V

    .line 117
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 118
    .local v1, "location":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 119
    iget-object v3, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageListWindow:Landroid/widget/PopupWindow;

    invoke-static {p1}, Lcom/xiaomi/scanner/util/AppUtil;->isRtlLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x800003

    :goto_0
    or-int/lit8 v2, v2, 0x30

    iget v4, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mListPopupMargin:I

    aget v5, v1, v7

    iget v6, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mListPopupMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageListHeight:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, p1, v2, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 121
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mCurrentLanguage:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/xiaomi/scanner/ui/LanguageChooser;->getLanguageIndex(Ljava/lang/String;)I

    move-result v0

    .line 122
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 123
    sget-object v2, Lcom/xiaomi/scanner/ui/LanguageChooser;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showLanguageList: invalid language "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mCurrentLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x0

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageList:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 127
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 128
    return-void

    .line 119
    .end local v0    # "index":I
    :cond_2
    const v2, 0x800005

    goto :goto_0
.end method


# virtual methods
.method public addLanguageSwitchListener(Lcom/xiaomi/scanner/ui/LanguageChooser$LanguageSwitchListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaomi/scanner/ui/LanguageChooser$LanguageSwitchListener;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mListeners:Ljava/util/List;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_1
    return-void
.end method

.method public clearLanguageSwitchListener()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/LanguageChooser;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/ui/LanguageChooser;->setSelected(Z)V

    .line 77
    invoke-direct {p0, p0}, Lcom/xiaomi/scanner/ui/LanguageChooser;->showLanguageList(Landroid/view/View;)V

    .line 79
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 87
    invoke-virtual {p0, p0}, Lcom/xiaomi/scanner/ui/LanguageChooser;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v1, 0x7f0d00de

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/ui/LanguageChooser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageNameView:Landroid/widget/TextView;

    .line 89
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/LanguageChooser;->getSavedLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mCurrentLanguage:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mCurrentLanguage:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/ui/LanguageChooser;->getLanguageIndex(Ljava/lang/String;)I

    move-result v0

    .line 91
    .local v0, "index":I
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/LanguageChooser;->mLanguageNameView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/LanguageChooser;->getLanguageEntry(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method
