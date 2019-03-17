.class Lcom/xiaomi/scanner/ui/BottomModuleContainer$1;
.super Ljava/lang/Object;
.source "BottomModuleContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/ui/BottomModuleContainer;->addModuleItemList(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/ui/BottomModuleContainer;

.field final synthetic val$moduleId:I


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/ui/BottomModuleContainer;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/ui/BottomModuleContainer;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer$1;->this$0:Lcom/xiaomi/scanner/ui/BottomModuleContainer;

    iput p2, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer$1;->val$moduleId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer$1;->this$0:Lcom/xiaomi/scanner/ui/BottomModuleContainer;

    invoke-virtual {v2}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 98
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer$1;->this$0:Lcom/xiaomi/scanner/ui/BottomModuleContainer;

    invoke-virtual {v2, v0}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 99
    .local v1, "textView":Landroid/widget/CheckedTextView;
    iget v3, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer$1;->val$moduleId:I

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    invoke-interface {v2}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getModuleId()I

    move-result v2

    if-ne v3, v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer$1;->this$0:Lcom/xiaomi/scanner/ui/BottomModuleContainer;

    invoke-static {v2, v0}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->access$002(Lcom/xiaomi/scanner/ui/BottomModuleContainer;I)I

    .line 101
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 97
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    .line 106
    .end local v1    # "textView":Landroid/widget/CheckedTextView;
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer$1;->this$0:Lcom/xiaomi/scanner/ui/BottomModuleContainer;

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer$1;->this$0:Lcom/xiaomi/scanner/ui/BottomModuleContainer;

    invoke-virtual {v3}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->getChildCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->access$100(Lcom/xiaomi/scanner/ui/BottomModuleContainer;I)V

    .line 107
    return-void
.end method
