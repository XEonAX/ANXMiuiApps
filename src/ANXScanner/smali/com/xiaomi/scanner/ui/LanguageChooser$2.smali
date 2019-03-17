.class Lcom/xiaomi/scanner/ui/LanguageChooser$2;
.super Ljava/lang/Object;
.source "LanguageChooser.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/ui/LanguageChooser;
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
    .line 209
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/LanguageChooser$2;->this$0:Lcom/xiaomi/scanner/ui/LanguageChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/LanguageChooser$2;->this$0:Lcom/xiaomi/scanner/ui/LanguageChooser;

    invoke-static {v1}, Lcom/xiaomi/scanner/ui/LanguageChooser;->access$000(Lcom/xiaomi/scanner/ui/LanguageChooser;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 213
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/LanguageChooser$2;->this$0:Lcom/xiaomi/scanner/ui/LanguageChooser;

    invoke-static {v1}, Lcom/xiaomi/scanner/ui/LanguageChooser;->access$100(Lcom/xiaomi/scanner/ui/LanguageChooser;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    .local v0, "selectedLanguage":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/LanguageChooser$2;->this$0:Lcom/xiaomi/scanner/ui/LanguageChooser;

    invoke-static {v1}, Lcom/xiaomi/scanner/ui/LanguageChooser;->access$200(Lcom/xiaomi/scanner/ui/LanguageChooser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    invoke-static {}, Lcom/xiaomi/scanner/ui/LanguageChooser;->access$300()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchLanguage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/scanner/ui/LanguageChooser$2;->this$0:Lcom/xiaomi/scanner/ui/LanguageChooser;

    invoke-static {v3}, Lcom/xiaomi/scanner/ui/LanguageChooser;->access$200(Lcom/xiaomi/scanner/ui/LanguageChooser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/LanguageChooser$2;->this$0:Lcom/xiaomi/scanner/ui/LanguageChooser;

    invoke-static {v1, v0}, Lcom/xiaomi/scanner/ui/LanguageChooser;->access$202(Lcom/xiaomi/scanner/ui/LanguageChooser;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/LanguageChooser$2;->this$0:Lcom/xiaomi/scanner/ui/LanguageChooser;

    invoke-static {v1}, Lcom/xiaomi/scanner/ui/LanguageChooser;->access$500(Lcom/xiaomi/scanner/ui/LanguageChooser;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/ui/LanguageChooser$2;->this$0:Lcom/xiaomi/scanner/ui/LanguageChooser;

    invoke-static {v2, p3}, Lcom/xiaomi/scanner/ui/LanguageChooser;->access$400(Lcom/xiaomi/scanner/ui/LanguageChooser;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/LanguageChooser$2;->this$0:Lcom/xiaomi/scanner/ui/LanguageChooser;

    invoke-static {v1, v0}, Lcom/xiaomi/scanner/ui/LanguageChooser;->access$600(Lcom/xiaomi/scanner/ui/LanguageChooser;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/xiaomi/scanner/ui/LanguageChooser$2;->this$0:Lcom/xiaomi/scanner/ui/LanguageChooser;

    invoke-static {v1, v0}, Lcom/xiaomi/scanner/ui/LanguageChooser;->access$700(Lcom/xiaomi/scanner/ui/LanguageChooser;Ljava/lang/String;)V

    .line 221
    :cond_0
    return-void
.end method
