.class Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1$1;
.super Ljava/lang/Object;
.source "FeedSearchActivity.java"

# interfaces
.implements Lcom/baidu/homework/network/NetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;->onPostExecute([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/homework/network/NetworkCallback",
        "<",
        "Lcom/baidu/homework/model/SearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1$1;->this$1:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/baidu/homework/model/SearchResult;)V
    .locals 6
    .param p1, "result"    # Lcom/baidu/homework/model/SearchResult;

    .prologue
    .line 100
    invoke-static {}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->access$400()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result.getStatus():"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/homework/model/SearchResult;->getStatus()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lcom/baidu/homework/model/SearchResult;->getStatus()I

    move-result v0

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p1, Lcom/baidu/homework/model/SearchResult;->htmls:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 103
    invoke-static {}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->access$400()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result.htmls.length:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/baidu/homework/model/SearchResult;->htmls:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 104
    const-string v0, "study_success"

    invoke-static {v0}, Lcom/xiaomi/scanner/stats/UsageStatistics;->trackEvent(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1$1;->this$1:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;

    iget-object v0, v0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;->this$0:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->access$600(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1$1;->this$1:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;

    iget-object v0, v0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;->this$0:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->access$700(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;)V

    .line 107
    iget-object v0, p1, Lcom/baidu/homework/model/SearchResult;->htmls:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 108
    .local v2, "html":Ljava/lang/String;
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1$1;->this$1:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;

    iget-object v0, v0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;->this$0:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->access$800(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "https://www.zybang.com"

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v2    # "html":Ljava/lang/String;
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1$1;->this$1:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;

    iget-object v0, v0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;->this$0:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->access$900(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1$1;->this$1:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;

    iget-object v0, v0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;->this$0:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    invoke-virtual {p1}, Lcom/baidu/homework/model/SearchResult;->getStatus()I

    move-result v1

    const v3, 0x7f07005a

    invoke-static {v0, v1, v3}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->access$1000(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;II)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 97
    check-cast p1, Lcom/baidu/homework/model/SearchResult;

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1$1;->onResponse(Lcom/baidu/homework/model/SearchResult;)V

    return-void
.end method
