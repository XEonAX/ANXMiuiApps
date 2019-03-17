.class Lcom/xiaomi/scanner/ui/PlantResultView$1;
.super Ljava/lang/Object;
.source "PlantResultView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/ui/PlantResultView;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/ui/PlantResultView;

.field final synthetic val$onClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/ui/PlantResultView;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/ui/PlantResultView;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/PlantResultView$1;->this$0:Lcom/xiaomi/scanner/ui/PlantResultView;

    iput-object p2, p0, Lcom/xiaomi/scanner/ui/PlantResultView$1;->val$onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PlantResultView$1;->val$onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/PlantResultView$1;->val$onClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 45
    :cond_0
    return-void
.end method
