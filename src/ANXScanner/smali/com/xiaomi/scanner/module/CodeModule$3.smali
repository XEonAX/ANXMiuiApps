.class Lcom/xiaomi/scanner/module/CodeModule$3;
.super Ljava/lang/Object;
.source "CodeModule.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/CodeModule;->handleDecodeSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/CodeModule;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$type:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/CodeModule;Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/module/CodeModule;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/xiaomi/scanner/module/CodeModule$3;->this$0:Lcom/xiaomi/scanner/module/CodeModule;

    iput-object p2, p0, Lcom/xiaomi/scanner/module/CodeModule$3;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/scanner/module/CodeModule$3;->val$type:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInspected(I)V
    .locals 3
    .param p1, "risk"    # I

    .prologue
    .line 268
    if-nez p1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule$3;->this$0:Lcom/xiaomi/scanner/module/CodeModule;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule$3;->val$text:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/module/CodeModule;->access$400(Lcom/xiaomi/scanner/module/CodeModule;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule$3;->this$0:Lcom/xiaomi/scanner/module/CodeModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/CodeModule;->access$500(Lcom/xiaomi/scanner/module/CodeModule;)V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule$3;->this$0:Lcom/xiaomi/scanner/module/CodeModule;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/CodeModule$3;->val$text:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/scanner/module/CodeModule$3;->val$type:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/scanner/module/CodeModule;->access$600(Lcom/xiaomi/scanner/module/CodeModule;Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)V

    .line 275
    iget-object v0, p0, Lcom/xiaomi/scanner/module/CodeModule$3;->this$0:Lcom/xiaomi/scanner/module/CodeModule;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/CodeModule;->access$500(Lcom/xiaomi/scanner/module/CodeModule;)V

    goto :goto_0
.end method
