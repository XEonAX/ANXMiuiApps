.class public Lcom/xiaomi/scanner/ui/StudyModuleUI;
.super Ljava/lang/Object;
.source "StudyModuleUI.java"


# instance fields
.field private final mActivity:Lcom/xiaomi/scanner/app/ScanActivity;


# direct methods
.method public constructor <init>(Lcom/xiaomi/scanner/app/ScanActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "activity"    # Lcom/xiaomi/scanner/app/ScanActivity;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/StudyModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 15
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/StudyModuleUI;->initUI()V

    .line 16
    return-void
.end method

.method private initUI()V
    .locals 2

    .prologue
    .line 19
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/StudyModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getAppUI()Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v0

    .line 20
    .local v0, "appUI":Lcom/xiaomi/scanner/app/AppUI;
    if-eqz v0, :cond_0

    .line 21
    const v1, 0x7f0700ab

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/app/AppUI;->setTitle(I)V

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public onResume()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method
