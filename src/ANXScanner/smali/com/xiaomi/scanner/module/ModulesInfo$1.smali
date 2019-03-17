.class final Lcom/xiaomi/scanner/module/ModulesInfo$1;
.super Ljava/lang/Object;
.source "ModulesInfo.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/ModulesInfo;->registerModule(Lcom/xiaomi/scanner/module/ModuleManager;IIILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$iconResId:I

.field final synthetic val$moduleId:I

.field final synthetic val$namespace:Ljava/lang/String;

.field final synthetic val$sortId:I

.field final synthetic val$titleResId:I

.field final synthetic val$weight:I


# direct methods
.method constructor <init>(IIIIILjava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput p1, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$weight:I

    iput p2, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$sortId:I

    iput p3, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$moduleId:I

    iput p4, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$iconResId:I

    iput p5, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$titleResId:I

    iput-object p6, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$namespace:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createModule(Landroid/content/Context;Lcom/xiaomi/scanner/app/AppController;)Lcom/xiaomi/scanner/module/ModuleController;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "app"    # Lcom/xiaomi/scanner/app/AppController;

    .prologue
    .line 185
    iget v0, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$moduleId:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 186
    new-instance v0, Lcom/xiaomi/scanner/module/ShoppingModule;

    iget v1, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$moduleId:I

    invoke-direct {v0, p2, v1}, Lcom/xiaomi/scanner/module/ShoppingModule;-><init>(Lcom/xiaomi/scanner/app/AppController;I)V

    .line 200
    :goto_0
    return-object v0

    .line 187
    :cond_0
    iget v0, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$moduleId:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 188
    new-instance v0, Lcom/xiaomi/scanner/module/AmazonShoppingModule;

    iget v1, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$moduleId:I

    invoke-direct {v0, p2, v1}, Lcom/xiaomi/scanner/module/AmazonShoppingModule;-><init>(Lcom/xiaomi/scanner/app/AppController;I)V

    goto :goto_0

    .line 189
    :cond_1
    iget v0, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$moduleId:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 190
    new-instance v0, Lcom/xiaomi/scanner/translation/TranslationModule;

    iget v1, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$moduleId:I

    invoke-direct {v0, p2, v1}, Lcom/xiaomi/scanner/translation/TranslationModule;-><init>(Lcom/xiaomi/scanner/app/AppController;I)V

    goto :goto_0

    .line 191
    :cond_2
    iget v0, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$moduleId:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 192
    new-instance v0, Lcom/xiaomi/scanner/module/StudyModule;

    iget v1, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$moduleId:I

    invoke-direct {v0, p2, v1}, Lcom/xiaomi/scanner/module/StudyModule;-><init>(Lcom/xiaomi/scanner/app/AppController;I)V

    goto :goto_0

    .line 193
    :cond_3
    iget v0, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$moduleId:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 194
    new-instance v0, Lcom/xiaomi/scanner/module/DocumentModule;

    iget v1, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$moduleId:I

    invoke-direct {v0, p2, v1}, Lcom/xiaomi/scanner/module/DocumentModule;-><init>(Lcom/xiaomi/scanner/app/AppController;I)V

    goto :goto_0

    .line 195
    :cond_4
    iget v0, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$moduleId:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 196
    new-instance v0, Lcom/xiaomi/scanner/module/BusinessCardModule;

    iget v1, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$moduleId:I

    invoke-direct {v0, p2, v1}, Lcom/xiaomi/scanner/module/BusinessCardModule;-><init>(Lcom/xiaomi/scanner/app/AppController;I)V

    goto :goto_0

    .line 197
    :cond_5
    iget v0, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$moduleId:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 198
    new-instance v0, Lcom/xiaomi/scanner/module/PlantModule;

    iget v1, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$moduleId:I

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/module/PlantModule;-><init>(I)V

    goto/16 :goto_0

    .line 200
    :cond_6
    new-instance v0, Lcom/xiaomi/scanner/module/CodeModule;

    iget v1, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$moduleId:I

    invoke-direct {v0, p2, v1}, Lcom/xiaomi/scanner/module/CodeModule;-><init>(Lcom/xiaomi/scanner/app/AppController;I)V

    goto/16 :goto_0
.end method

.method public createModuleBaseInfo()Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/xiaomi/scanner/module/ModulesInfo$1$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/ModulesInfo$1$1;-><init>(Lcom/xiaomi/scanner/module/ModulesInfo$1;)V

    return-object v0
.end method
