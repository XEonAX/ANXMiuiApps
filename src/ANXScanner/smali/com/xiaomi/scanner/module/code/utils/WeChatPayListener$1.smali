.class Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener$1;
.super Ljava/lang/Object;
.source "WeChatPayListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->toWechat(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener$1;->this$0:Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 49
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 50
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener$1;->this$0:Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;->access$000(Lcom/xiaomi/scanner/module/code/utils/WeChatPayListener;)V

    .line 51
    return-void
.end method
