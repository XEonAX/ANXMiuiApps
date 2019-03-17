.class Lcom/xiaomi/scanner/ui/BottomModuleContainer$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomModuleContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/ui/BottomModuleContainer;->animatorChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/ui/BottomModuleContainer;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/ui/BottomModuleContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/ui/BottomModuleContainer;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer$3;->this$0:Lcom/xiaomi/scanner/ui/BottomModuleContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 234
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 235
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer$3;->this$0:Lcom/xiaomi/scanner/ui/BottomModuleContainer;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/BottomModuleContainer$3;->this$0:Lcom/xiaomi/scanner/ui/BottomModuleContainer;

    invoke-static {v1}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->access$000(Lcom/xiaomi/scanner/ui/BottomModuleContainer;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/ui/BottomModuleContainer;->access$200(Lcom/xiaomi/scanner/ui/BottomModuleContainer;I)V

    .line 236
    return-void
.end method
