.class Lcom/xiaomi/scanner/dialog/CtaDialog$SpanClick;
.super Landroid/text/style/ClickableSpan;
.source "CtaDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/dialog/CtaDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpanClick"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/xiaomi/scanner/dialog/CtaDialog$SpanClick;->url:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/xiaomi/scanner/dialog/CtaDialog$SpanClick;->context:Landroid/content/Context;

    .line 112
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/xiaomi/scanner/dialog/CtaDialog$SpanClick;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/xiaomi/scanner/dialog/CtaDialog$SpanClick;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void
.end method
