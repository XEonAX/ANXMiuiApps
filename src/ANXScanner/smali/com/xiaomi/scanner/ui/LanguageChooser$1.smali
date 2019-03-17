.class Lcom/xiaomi/scanner/ui/LanguageChooser$1;
.super Ljava/lang/Object;
.source "LanguageChooser.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/ui/LanguageChooser;->initLanguageList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/ui/LanguageChooser;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/ui/LanguageChooser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/ui/LanguageChooser;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/LanguageChooser$1;->this$0:Lcom/xiaomi/scanner/ui/LanguageChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/LanguageChooser$1;->this$0:Lcom/xiaomi/scanner/ui/LanguageChooser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/LanguageChooser;->setSelected(Z)V

    .line 151
    return-void
.end method
