.class Lcom/xiaomi/scanner/setting/SettingActivity$1;
.super Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/setting/SettingActivity;->updateDefaultFunctionList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/setting/SettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/setting/SettingActivity;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/xiaomi/scanner/setting/SettingActivity$1;->this$0:Lcom/xiaomi/scanner/setting/SettingActivity;

    invoke-direct {p0}, Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 66
    const-string v0, "defaultFunctionSelect"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/util/SPUtils;->getLocal(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/xiaomi/scanner/setting/SettingActivity$1;->onBackground()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onMainResult(Ljava/lang/Integer;)V
    .locals 10
    .param p1, "selectModuleIndex"    # Ljava/lang/Integer;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;->onMainResult(Ljava/lang/Object;)V

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "defaultIndex":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getModuleInfoListByWeight()Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 74
    .local v5, "moduleInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 114
    :goto_0
    return-void

    .line 77
    :cond_0
    const/4 v6, -0x1

    .line 78
    .local v6, "select":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v2, "functionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 80
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    .line 81
    .local v4, "info":Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;
    invoke-interface {v4}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getModuleId()I

    move-result v7

    iget-object v8, p0, Lcom/xiaomi/scanner/setting/SettingActivity$1;->this$0:Lcom/xiaomi/scanner/setting/SettingActivity;

    invoke-virtual {v8}, Lcom/xiaomi/scanner/setting/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0004

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 82
    move v0, v3

    .line 84
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v4}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getModuleId()I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 85
    move v6, v3

    .line 87
    :cond_2
    iget-object v7, p0, Lcom/xiaomi/scanner/setting/SettingActivity$1;->this$0:Lcom/xiaomi/scanner/setting/SettingActivity;

    invoke-virtual {v7}, Lcom/xiaomi/scanner/setting/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-interface {v4}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getTitleResourceId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 89
    .end local v4    # "info":Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;
    :cond_3
    iget-object v7, p0, Lcom/xiaomi/scanner/setting/SettingActivity$1;->this$0:Lcom/xiaomi/scanner/setting/SettingActivity;

    invoke-virtual {v7}, Lcom/xiaomi/scanner/setting/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700a2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v7, p0, Lcom/xiaomi/scanner/setting/SettingActivity$1;->this$0:Lcom/xiaomi/scanner/setting/SettingActivity;

    const v8, 0x7f03005f

    invoke-direct {v1, v7, v8, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 92
    .local v1, "functionAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v7, 0x1090009

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 93
    iget-object v7, p0, Lcom/xiaomi/scanner/setting/SettingActivity$1;->this$0:Lcom/xiaomi/scanner/setting/SettingActivity;

    invoke-static {v7}, Lcom/xiaomi/scanner/setting/SettingActivity;->access$000(Lcom/xiaomi/scanner/setting/SettingActivity;)Landroid/widget/Spinner;

    move-result-object v7

    const v8, 0x7f07009f

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setPromptId(I)V

    .line 94
    iget-object v7, p0, Lcom/xiaomi/scanner/setting/SettingActivity$1;->this$0:Lcom/xiaomi/scanner/setting/SettingActivity;

    invoke-static {v7}, Lcom/xiaomi/scanner/setting/SettingActivity;->access$000(Lcom/xiaomi/scanner/setting/SettingActivity;)Landroid/widget/Spinner;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 95
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, -0x64

    if-ne v7, v8, :cond_5

    .line 96
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    .line 102
    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/xiaomi/scanner/setting/SettingActivity$1;->this$0:Lcom/xiaomi/scanner/setting/SettingActivity;

    invoke-static {v7}, Lcom/xiaomi/scanner/setting/SettingActivity;->access$000(Lcom/xiaomi/scanner/setting/SettingActivity;)Landroid/widget/Spinner;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 103
    iget-object v7, p0, Lcom/xiaomi/scanner/setting/SettingActivity$1;->this$0:Lcom/xiaomi/scanner/setting/SettingActivity;

    invoke-static {v7}, Lcom/xiaomi/scanner/setting/SettingActivity;->access$000(Lcom/xiaomi/scanner/setting/SettingActivity;)Landroid/widget/Spinner;

    move-result-object v7

    new-instance v8, Lcom/xiaomi/scanner/setting/SettingActivity$1$1;

    invoke-direct {v8, p0, v5}, Lcom/xiaomi/scanner/setting/SettingActivity$1$1;-><init>(Lcom/xiaomi/scanner/setting/SettingActivity$1;Ljava/util/List;)V

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_0

    .line 97
    :cond_5
    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    .line 98
    move v6, v0

    goto :goto_2

    .line 99
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lt v6, v7, :cond_4

    .line 100
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public bridge synthetic onMainResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/setting/SettingActivity$1;->onMainResult(Ljava/lang/Integer;)V

    return-void
.end method
