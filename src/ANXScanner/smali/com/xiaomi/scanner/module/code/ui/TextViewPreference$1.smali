.class Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$1;
.super Ljava/lang/Object;
.source "TextViewPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$1;->this$0:Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$1;->this$0:Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->access$000(Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;)Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$OnSmsClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$1;->this$0:Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->access$000(Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;)Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$OnSmsClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$OnSmsClickListener;->onSmsClick()V

    .line 53
    :cond_0
    return-void
.end method
