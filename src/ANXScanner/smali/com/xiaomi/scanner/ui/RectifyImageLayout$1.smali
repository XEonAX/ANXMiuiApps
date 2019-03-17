.class Lcom/xiaomi/scanner/ui/RectifyImageLayout$1;
.super Ljava/lang/Object;
.source "RectifyImageLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/ui/RectifyImageLayout;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/ui/RectifyImageLayout;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/ui/RectifyImageLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/ui/RectifyImageLayout;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout$1;->this$0:Lcom/xiaomi/scanner/ui/RectifyImageLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout$1;->this$0:Lcom/xiaomi/scanner/ui/RectifyImageLayout;

    iget-object v1, p0, Lcom/xiaomi/scanner/ui/RectifyImageLayout$1;->this$0:Lcom/xiaomi/scanner/ui/RectifyImageLayout;

    invoke-static {v1}, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->access$000(Lcom/xiaomi/scanner/ui/RectifyImageLayout;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/ui/RectifyImageLayout;->access$100(Lcom/xiaomi/scanner/ui/RectifyImageLayout;Landroid/graphics/Bitmap;)V

    .line 241
    return-void
.end method
