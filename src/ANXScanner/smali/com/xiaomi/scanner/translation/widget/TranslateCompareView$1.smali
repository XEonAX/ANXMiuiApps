.class Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$1;
.super Ljava/lang/Object;
.source "TranslateCompareView.java"

# interfaces
.implements Lcom/xiaomi/scanner/util/AppUtil$AppUtilListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$1;->this$0:Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;ZLjava/lang/Object;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "success"    # Z
    .param p3, "extra"    # Ljava/lang/Object;

    .prologue
    .line 46
    if-eqz p2, :cond_0

    const-string v0, "com.miui.notes"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView$1;->this$0:Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;

    invoke-static {v0}, Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;->access$000(Lcom/xiaomi/scanner/translation/widget/TranslateCompareView;)V

    .line 49
    :cond_0
    return-void
.end method
