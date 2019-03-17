.class Lcom/xiaomi/scanner/ui/ShutterButton$1;
.super Ljava/lang/Object;
.source "ShutterButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/ui/ShutterButton;->drawableStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/ui/ShutterButton;

.field final synthetic val$pressed:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/ui/ShutterButton;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/ui/ShutterButton;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/ShutterButton$1;->this$0:Lcom/xiaomi/scanner/ui/ShutterButton;

    iput-boolean p2, p0, Lcom/xiaomi/scanner/ui/ShutterButton$1;->val$pressed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/ShutterButton$1;->this$0:Lcom/xiaomi/scanner/ui/ShutterButton;

    iget-boolean v1, p0, Lcom/xiaomi/scanner/ui/ShutterButton$1;->val$pressed:Z

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/ui/ShutterButton;->access$000(Lcom/xiaomi/scanner/ui/ShutterButton;Z)V

    .line 88
    return-void
.end method
