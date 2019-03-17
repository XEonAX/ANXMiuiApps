.class Lcom/miui/gallery/hybrid/HybridLoadingProgressView$1;
.super Ljava/lang/Object;
.source "HybridLoadingProgressView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->onError(ZLcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

.field final synthetic val$state:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;


# direct methods
.method constructor <init>(Lcom/miui/gallery/hybrid/HybridLoadingProgressView;Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$1;->this$0:Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    iput-object p2, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$1;->val$state:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 207
    iget-object v1, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$1;->val$state:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    sget-object v2, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;->NETWORK_ERROR:Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridLoadingState;

    if-ne v1, v2, :cond_1

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 210
    iget-object v1, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$1;->this$0:Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    invoke-virtual {v1}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 214
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$1;->this$0:Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    invoke-static {v1}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->access$000(Lcom/miui/gallery/hybrid/HybridLoadingProgressView;)Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridOnRefreshListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$1;->this$0:Lcom/miui/gallery/hybrid/HybridLoadingProgressView;

    invoke-static {v1}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView;->access$000(Lcom/miui/gallery/hybrid/HybridLoadingProgressView;)Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridOnRefreshListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/hybrid/HybridLoadingProgressView$HybridOnRefreshListener;->onRefresh()V

    goto :goto_0
.end method
