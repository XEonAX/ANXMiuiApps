.class Lcom/xiaomi/scanner/module/ModulesInfo$1$1;
.super Ljava/lang/Object;
.source "ModulesInfo.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/ModulesInfo$1;->createModuleBaseInfo()Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/ModulesInfo$1;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/ModulesInfo$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/module/ModulesInfo$1;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1$1;->this$0:Lcom/xiaomi/scanner/module/ModulesInfo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconResourceId()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1$1;->this$0:Lcom/xiaomi/scanner/module/ModulesInfo$1;

    iget v0, v0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$iconResId:I

    return v0
.end method

.method public getModuleId()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1$1;->this$0:Lcom/xiaomi/scanner/module/ModulesInfo$1;

    iget v0, v0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$moduleId:I

    return v0
.end method

.method public getScopeNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1$1;->this$0:Lcom/xiaomi/scanner/module/ModulesInfo$1;

    iget-object v0, v0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getSortId()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1$1;->this$0:Lcom/xiaomi/scanner/module/ModulesInfo$1;

    iget v0, v0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$sortId:I

    return v0
.end method

.method public getTitleResourceId()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1$1;->this$0:Lcom/xiaomi/scanner/module/ModulesInfo$1;

    iget v0, v0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$titleResId:I

    return v0
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/xiaomi/scanner/module/ModulesInfo$1$1;->this$0:Lcom/xiaomi/scanner/module/ModulesInfo$1;

    iget v0, v0, Lcom/xiaomi/scanner/module/ModulesInfo$1;->val$weight:I

    return v0
.end method
