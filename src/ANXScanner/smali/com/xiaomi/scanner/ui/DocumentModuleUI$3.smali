.class Lcom/xiaomi/scanner/ui/DocumentModuleUI$3;
.super Ljava/lang/Object;
.source "DocumentModuleUI.java"

# interfaces
.implements Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/ui/DocumentModuleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/ui/DocumentModuleUI;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/ui/DocumentModuleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/ui/DocumentModuleUI;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI$3;->this$0:Lcom/xiaomi/scanner/ui/DocumentModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;ZLjava/lang/Object;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "success"    # Z
    .param p3, "extra"    # Ljava/lang/Object;

    .prologue
    .line 431
    if-eqz p2, :cond_0

    const-string v0, "com.miui.notes"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/DocumentModuleUI$3;->this$0:Lcom/xiaomi/scanner/ui/DocumentModuleUI;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/ui/DocumentModuleUI;->access$200(Lcom/xiaomi/scanner/ui/DocumentModuleUI;Ljava/lang/String;)V

    .line 434
    :cond_0
    return-void
.end method
