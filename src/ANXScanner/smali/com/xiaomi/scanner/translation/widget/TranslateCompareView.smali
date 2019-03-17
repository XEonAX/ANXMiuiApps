.class public Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;
.super Landroid/widget/RelativeLayout;
.source "TranslateCompareView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter;
    }
.end annotation


# static fields
.field private static final NotesPackage:Ljava/lang/String; = "com.miui.notes"


# instance fields
.field private compareAdapter:Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter;

.field private mAppUtilListener:Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
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
    .line 57
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
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
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v3, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$1;

    invoke-direct {v3, p0}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$1;-><init>(Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;)V

    iput-object v3, p0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->mAppUtilListener:Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030042

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 65
    const v3, 0x7f0d00ff

    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 66
    .local v2, "compareList":Landroid/widget/ListView;
    new-instance v3, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter;-><init>(Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$1;)V

    iput-object v3, p0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->compareAdapter:Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter;

    .line 67
    iget-object v3, p0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->compareAdapter:Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    const v3, 0x7f0d0102

    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v3, 0x7f0d0103

    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v3, 0x7f0d0101

    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v3, 0x7f0b000c

    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->setBackgroundResource(I)V

    .line 75
    const v3, 0x7f0d0100

    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, "bottom":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 77
    .local v1, "bottomParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget-boolean v3, Lcom/xiaomi/scanner/util/Util;->hasNativageBar:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->isFullScreenDevice()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getNavigationBarHeight()I

    move-result v3

    :goto_0
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 78
    return-void

    .line 77
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->startNoteActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;)Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->mAppUtilListener:Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;

    return-object v0
.end method

.method private checkIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 156
    invoke-virtual {v2, p2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 157
    .local v0, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private copy()V
    .locals 4

    .prologue
    .line 161
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->compareAdapter:Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter;

    if-eqz v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->compareAdapter:Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter;->getTextString()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "text":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 165
    .local v0, "cm":Landroid/content/ClipboardManager;
    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 166
    const v2, 0x7f0700b3

    invoke-static {v2}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(I)V

    .line 169
    .end local v0    # "cm":Landroid/content/ClipboardManager;
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private save()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$2;-><init>(Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;)V

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->poolExecute(Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;)V

    .line 133
    return-void
.end method

.method private startNoteActivity()V
    .locals 4

    .prologue
    .line 136
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->compareAdapter:Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter;

    if-nez v2, :cond_1

    .line 137
    const-string v2, "compare"

    const-string v3, "adapter null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->compareAdapter:Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter;->getTextString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "text":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v2, "com.miui.notes"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->checkIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 149
    :cond_2
    const v2, 0x7f0700b8

    invoke-static {v2}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(I)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 95
    .local v0, "canBack":Z
    :goto_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->setVisibility(I)V

    .line 96
    return v0

    .line 94
    .end local v0    # "canBack":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 112
    :goto_0
    return-void

    .line 103
    :pswitch_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->setVisibility(I)V

    goto :goto_0

    .line 106
    :pswitch_1
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->save()V

    goto :goto_0

    .line 109
    :pswitch_2
    invoke-direct {p0}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->copy()V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x7f0d0101
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public setCompareList(Ljava/util/List;)V
    .locals 3
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
    .line 81
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;>;"
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->compareAdapter:Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter;

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    .line 82
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 83
    .local v0, "infoIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;

    .line 85
    .local v1, "lineInfo":Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;
    invoke-virtual {v1}, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->toText:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->toText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 89
    .end local v1    # "lineInfo":Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;
    :cond_2
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->compareAdapter:Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter;

    invoke-virtual {v2, p1}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$CompareAdapter;->setItems(Ljava/util/List;)V

    .line 91
    .end local v0    # "infoIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;>;"
    :cond_3
    return-void
.end method
