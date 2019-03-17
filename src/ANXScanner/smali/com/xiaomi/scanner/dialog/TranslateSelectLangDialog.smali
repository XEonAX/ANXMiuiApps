.class public Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;
.super Landroid/app/AlertDialog;
.source "TranslateSelectLangDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$ConfirmClick;
    }
.end annotation


# instance fields
.field private confirmClick:Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$ConfirmClick;

.field private desLang:Ljava/lang/String;

.field private desPicker:Lcom/xiaomi/scanner/ui/WheelPicker;

.field private desWheelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectPosition:I

.field private srcLang:Ljava/lang/String;

.field private srcWheelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "themeResId"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;)Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$ConfirmClick;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->confirmClick:Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$ConfirmClick;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->srcLang:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->srcLang:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;

    .prologue
    .line 21
    iget v0, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->selectPosition:I

    return v0
.end method

.method static synthetic access$202(Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->selectPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->srcWheelList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->desLang:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->desLang:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->desWheelList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;)Lcom/xiaomi/scanner/ui/WheelPicker;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->desPicker:Lcom/xiaomi/scanner/ui/WheelPicker;

    return-object v0
.end method

.method public static showDialog(Landroid/app/Activity;Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$ConfirmClick;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "confirmClick"    # Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$ConfirmClick;
    .param p2, "srcLang"    # Ljava/lang/String;
    .param p3, "desLang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$ConfirmClick;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p4, "srcWheelList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "desWheelList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    new-instance v0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;

    const v1, 0x7f0900e4

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;-><init>(Landroid/content/Context;I)V

    .line 38
    .local v0, "dialog":Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;
    iput-object p1, v0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->confirmClick:Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$ConfirmClick;

    .line 39
    iput-object p2, v0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->srcLang:Ljava/lang/String;

    .line 40
    iput-object p3, v0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->desLang:Ljava/lang/String;

    .line 41
    iput-object p4, v0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->srcWheelList:Ljava/util/List;

    .line 42
    iput-object p5, v0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->desWheelList:Ljava/util/List;

    .line 43
    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v1, 0x7f030036

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->setContentView(I)V

    .line 54
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->setCanceledOnTouchOutside(Z)V

    .line 56
    const v1, 0x7f0d00d1

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$1;

    invoke-direct {v2, p0}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$1;-><init>(Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v1, 0x7f0d00d5

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$2;

    invoke-direct {v2, p0}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$2;-><init>(Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v1, 0x7f0d00d3

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/ui/WheelPicker;

    .line 75
    .local v0, "srcPicker":Lcom/xiaomi/scanner/ui/WheelPicker;
    const v1, 0x7f0d00d4

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/ui/WheelPicker;

    iput-object v1, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->desPicker:Lcom/xiaomi/scanner/ui/WheelPicker;

    .line 76
    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->desPicker:Lcom/xiaomi/scanner/ui/WheelPicker;

    new-instance v2, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$3;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$3;-><init>(Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;Lcom/xiaomi/scanner/ui/WheelPicker;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/ui/WheelPicker;->setOnWheelChangeListener(Lcom/xiaomi/scanner/ui/WheelPicker$OnWheelChangeListener;)V

    .line 93
    new-instance v1, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$4;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog$4;-><init>(Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/WheelPicker;->setOnWheelChangeListener(Lcom/xiaomi/scanner/ui/WheelPicker$OnWheelChangeListener;)V

    .line 110
    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->desWheelList:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->desLang:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->selectPosition:I

    .line 112
    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->srcWheelList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/WheelPicker;->setData(Ljava/util/List;)V

    .line 113
    iget v1, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->selectPosition:I

    invoke-virtual {v0, v1, v3}, Lcom/xiaomi/scanner/ui/WheelPicker;->setSelectedItemPosition(IZ)V

    .line 115
    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->desPicker:Lcom/xiaomi/scanner/ui/WheelPicker;

    iget-object v2, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->desWheelList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/xiaomi/scanner/ui/WheelPicker;->setData(Ljava/util/List;)V

    .line 116
    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->desPicker:Lcom/xiaomi/scanner/ui/WheelPicker;

    iget v2, p0, Lcom/xiaomi/scanner/dialog/TranslateSelectLangDialog;->selectPosition:I

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/scanner/ui/WheelPicker;->setSelectedItemPosition(IZ)V

    .line 117
    return-void
.end method
