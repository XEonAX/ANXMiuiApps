.class Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;
.super Landroid/os/AsyncTask;
.source "FeedSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->startWenbaSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;->this$0:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;->doInBackground([Ljava/lang/Void;)[B

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[B
    .locals 2
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;->this$0:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;->this$0:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->access$100(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/scanner/util/PictureDecoder;->decodeSafely(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->access$002(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 81
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;->this$0:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->access$100(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/scanner/util/FileUtil;->readFileToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 76
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;->onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .locals 3
    .param p1, "fileBytes"    # [B

    .prologue
    .line 86
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;->this$0:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->access$000(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;->this$0:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->access$000(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;->this$0:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->access$200(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;->this$0:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->access$000(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 88
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;->this$0:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->access$300(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;)Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;->this$0:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800c5

    .line 89
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x1

    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/scanner/module/study/ui/WrapFeedSearchView;->setTopSpanHeight(IZ)V

    .line 91
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    .line 92
    :cond_1
    invoke-static {}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->access$400()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    const-string v1, "updateFeed: invalid picture"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;->this$0:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    const v1, 0x7f070057

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->access$500(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;I)V

    .line 117
    :goto_0
    return-void

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;->this$0:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->access$600(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;->this$0:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    new-instance v1, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1$1;-><init>(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$1;)V

    invoke-static {v0, p1, v1}, Lcom/baidu/homework/api/ZybAPI;->picSearch(Landroid/content/Context;[BLcom/baidu/homework/network/NetworkCallback;)Lcom/baidu/homework/network/Request;

    goto :goto_0
.end method
