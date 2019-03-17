.class public Lcom/xiaomi/scanner/ui/PlantModuleUI;
.super Ljava/lang/Object;
.source "PlantModuleUI.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private fullRoot:Landroid/widget/FrameLayout;

.field private mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

.field private mPlantResult:Lcom/xiaomi/scanner/ui/PlantResultView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "PlantModuleUI"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/ui/PlantModuleUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/xiaomi/scanner/app/ScanActivity;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/PlantModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    .line 24
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PlantModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    const v1, 0x7f0d0090

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/PlantModuleUI;->fullRoot:Landroid/widget/FrameLayout;

    .line 26
    invoke-direct {p0}, Lcom/xiaomi/scanner/ui/PlantModuleUI;->updateTitle()V

    .line 27
    return-void
.end method

.method private changeTo(Z)V
    .locals 2
    .param p1, "full"    # Z

    .prologue
    .line 48
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/PlantModuleUI;->fullRoot:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 49
    if-nez p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PlantModuleUI;->fullRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 51
    invoke-virtual {p0}, Lcom/xiaomi/scanner/ui/PlantModuleUI;->onDestroy()V

    .line 53
    :cond_0
    return-void

    .line 48
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateTitle()V
    .locals 2

    .prologue
    .line 30
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/PlantModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getAppUI()Lcom/xiaomi/scanner/app/AppUI;

    move-result-object v0

    .line 31
    .local v0, "appUI":Lcom/xiaomi/scanner/app/AppUI;
    if-eqz v0, :cond_0

    .line 32
    const v1, 0x7f070090

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/app/AppUI;->setTitle(I)V

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/PlantModuleUI;->fullRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 57
    .local v0, "canBack":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/ui/PlantModuleUI;->changeTo(Z)V

    .line 59
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/PlantModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/app/ScanActivity;->getCaptureModule()Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->startPreview()V

    .line 61
    :cond_0
    return v0

    .end local v0    # "canBack":Z
    :cond_1
    move v0, v1

    .line 56
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PlantModuleUI;->mPlantResult:Lcom/xiaomi/scanner/ui/PlantResultView;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PlantModuleUI;->mPlantResult:Lcom/xiaomi/scanner/ui/PlantResultView;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/PlantResultView;->onDestroy()V

    .line 68
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/PlantModuleUI;->mPlantResult:Lcom/xiaomi/scanner/ui/PlantResultView;

    .line 69
    return-void
.end method

.method public showResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "resultPage"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/ui/PlantModuleUI;->changeTo(Z)V

    .line 38
    new-instance v0, Lcom/xiaomi/scanner/ui/PlantResultView;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/PlantModuleUI;->mActivity:Lcom/xiaomi/scanner/app/ScanActivity;

    new-instance v2, Lcom/xiaomi/scanner/ui/PlantModuleUI$1;

    invoke-direct {v2, p0}, Lcom/xiaomi/scanner/ui/PlantModuleUI$1;-><init>(Lcom/xiaomi/scanner/ui/PlantModuleUI;)V

    invoke-direct {v0, v1, v2, p1}, Lcom/xiaomi/scanner/ui/PlantResultView;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/ui/PlantModuleUI;->mPlantResult:Lcom/xiaomi/scanner/ui/PlantResultView;

    .line 44
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PlantModuleUI;->fullRoot:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/PlantModuleUI;->mPlantResult:Lcom/xiaomi/scanner/ui/PlantResultView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 45
    return-void
.end method
