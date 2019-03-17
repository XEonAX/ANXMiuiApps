.class Lcom/xiaomi/scanner/setting/SettingActivity$2;
.super Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/setting/SettingActivity;->updatePreferencePay()V
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
    .line 119
    iput-object p1, p0, Lcom/xiaomi/scanner/setting/SettingActivity$2;->this$0:Lcom/xiaomi/scanner/setting/SettingActivity;

    invoke-direct {p0}, Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 122
    const-string v0, "preferencePaySelect"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/util/SPUtils;->getLocal(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/xiaomi/scanner/setting/SettingActivity$2;->onBackground()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onMainResult(Ljava/lang/Integer;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;->onMainResult(Ljava/lang/Object;)V

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v2, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/xiaomi/scanner/util/Constants;->PREFERENCE_PAY_LIST:[I

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget v1, v4, v3

    .line 130
    .local v1, "id":I
    iget-object v6, p0, Lcom/xiaomi/scanner/setting/SettingActivity$2;->this$0:Lcom/xiaomi/scanner/setting/SettingActivity;

    invoke-virtual {v6}, Lcom/xiaomi/scanner/setting/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "id":I
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/xiaomi/scanner/setting/SettingActivity$2;->this$0:Lcom/xiaomi/scanner/setting/SettingActivity;

    const v4, 0x7f03005f

    invoke-direct {v0, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 133
    .local v0, "functionAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 134
    iget-object v3, p0, Lcom/xiaomi/scanner/setting/SettingActivity$2;->this$0:Lcom/xiaomi/scanner/setting/SettingActivity;

    invoke-static {v3}, Lcom/xiaomi/scanner/setting/SettingActivity;->access$100(Lcom/xiaomi/scanner/setting/SettingActivity;)Landroid/widget/Spinner;

    move-result-object v3

    const v4, 0x7f0700a0

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setPromptId(I)V

    .line 135
    iget-object v3, p0, Lcom/xiaomi/scanner/setting/SettingActivity$2;->this$0:Lcom/xiaomi/scanner/setting/SettingActivity;

    invoke-static {v3}, Lcom/xiaomi/scanner/setting/SettingActivity;->access$100(Lcom/xiaomi/scanner/setting/SettingActivity;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 136
    iget-object v3, p0, Lcom/xiaomi/scanner/setting/SettingActivity$2;->this$0:Lcom/xiaomi/scanner/setting/SettingActivity;

    invoke-static {v3}, Lcom/xiaomi/scanner/setting/SettingActivity;->access$100(Lcom/xiaomi/scanner/setting/SettingActivity;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 137
    iget-object v3, p0, Lcom/xiaomi/scanner/setting/SettingActivity$2;->this$0:Lcom/xiaomi/scanner/setting/SettingActivity;

    invoke-static {v3}, Lcom/xiaomi/scanner/setting/SettingActivity;->access$100(Lcom/xiaomi/scanner/setting/SettingActivity;)Landroid/widget/Spinner;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/scanner/setting/SettingActivity$2$1;

    invoke-direct {v4, p0}, Lcom/xiaomi/scanner/setting/SettingActivity$2$1;-><init>(Lcom/xiaomi/scanner/setting/SettingActivity$2;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 148
    return-void
.end method

.method public bridge synthetic onMainResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 119
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/setting/SettingActivity$2;->onMainResult(Ljava/lang/Integer;)V

    return-void
.end method
