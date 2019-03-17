.class Lcom/xiaomi/scanner/setting/SettingActivity$1$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/setting/SettingActivity$1;->onMainResult(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/scanner/setting/SettingActivity$1;

.field final synthetic val$moduleInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/setting/SettingActivity$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaomi/scanner/setting/SettingActivity$1;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/xiaomi/scanner/setting/SettingActivity$1$1;->this$1:Lcom/xiaomi/scanner/setting/SettingActivity$1;

    iput-object p2, p0, Lcom/xiaomi/scanner/setting/SettingActivity$1$1;->val$moduleInfoList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "positon"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/xiaomi/scanner/setting/SettingActivity$1$1;->val$moduleInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/scanner/setting/SettingActivity$1$1;->val$moduleInfoList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    invoke-interface {v1}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getModuleId()I

    move-result v0

    .line 107
    .local v0, "moduleId":I
    :goto_0
    const-string v1, "defaultFunctionSelect"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    return-void

    .line 106
    .end local v0    # "moduleId":I
    :cond_0
    const/16 v0, -0x64

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
