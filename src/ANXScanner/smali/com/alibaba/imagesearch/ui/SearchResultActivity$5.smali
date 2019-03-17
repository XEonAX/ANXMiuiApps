.class Lcom/alibaba/imagesearch/ui/SearchResultActivity$5;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/imagesearch/ui/SearchResultActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/imagesearch/ui/SearchResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$5;->a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 2

    const-string v0, "bc_hybrid:"

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$5;->a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;

    invoke-static {v0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->c(Lcom/alibaba/imagesearch/ui/SearchResultActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$5;->a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;

    invoke-static {v1}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->d(Lcom/alibaba/imagesearch/ui/SearchResultActivity;)Lcom/alibaba/imagesearch/a/a;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/alibaba/imagesearch/utils/c;->a(Ljava/lang/String;Landroid/webkit/WebView;Lcom/alibaba/imagesearch/a/a;)Z

    move-result v0

    const-string v1, ""

    invoke-virtual {p5, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$5;->a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;

    invoke-static {v0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->b(Lcom/alibaba/imagesearch/ui/SearchResultActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$5;->a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;

    invoke-static {v0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->b(Lcom/alibaba/imagesearch/ui/SearchResultActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
