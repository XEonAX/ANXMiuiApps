.class Lcom/xiaomi/scanner/ui/PlantModuleUI$1;
.super Ljava/lang/Object;
.source "PlantModuleUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/ui/PlantModuleUI;->showResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/ui/PlantModuleUI;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/ui/PlantModuleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/ui/PlantModuleUI;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/PlantModuleUI$1;->this$0:Lcom/xiaomi/scanner/ui/PlantModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PlantModuleUI$1;->this$0:Lcom/xiaomi/scanner/ui/PlantModuleUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/PlantModuleUI;->onBackPressed()Z

    .line 42
    return-void
.end method
