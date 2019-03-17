.class Lcom/miui/gallery/assistant/library/LibraryDownloadTask$1;
.super Ljava/lang/Object;
.source "LibraryDownloadTask.java"

# interfaces
.implements Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/assistant/library/LibraryDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/assistant/library/LibraryDownloadTask;


# direct methods
.method constructor <init>(Lcom/miui/gallery/assistant/library/LibraryDownloadTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/assistant/library/LibraryDownloadTask;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/miui/gallery/assistant/library/LibraryDownloadTask$1;->this$0:Lcom/miui/gallery/assistant/library/LibraryDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadResult(JI)V
    .locals 3
    .param p1, "libraryId"    # J
    .param p3, "resultCode"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryDownloadTask$1;->this$0:Lcom/miui/gallery/assistant/library/LibraryDownloadTask;

    invoke-static {v0}, Lcom/miui/gallery/assistant/library/LibraryDownloadTask;->access$000(Lcom/miui/gallery/assistant/library/LibraryDownloadTask;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryDownloadTask$1;->this$0:Lcom/miui/gallery/assistant/library/LibraryDownloadTask;

    .line 36
    invoke-static {v0}, Lcom/miui/gallery/assistant/library/LibraryDownloadTask;->access$000(Lcom/miui/gallery/assistant/library/LibraryDownloadTask;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 37
    const-string v0, "LibraryDownloadTask"

    const-string v1, "LibraryDownloadTask download success!"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->getInstance()Lcom/miui/gallery/pendingtask/PendingTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/assistant/library/LibraryDownloadTask$1;->this$0:Lcom/miui/gallery/assistant/library/LibraryDownloadTask;

    invoke-static {v1}, Lcom/miui/gallery/assistant/library/LibraryDownloadTask;->access$100(Lcom/miui/gallery/assistant/library/LibraryDownloadTask;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/assistant/library/LibraryDownloadTask$1;->this$0:Lcom/miui/gallery/assistant/library/LibraryDownloadTask;

    invoke-static {v2}, Lcom/miui/gallery/assistant/library/LibraryDownloadTask;->access$200(Lcom/miui/gallery/assistant/library/LibraryDownloadTask;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->postTask(ILjava/lang/Object;)V

    .line 39
    invoke-static {}, Lcom/miui/gallery/assistant/library/LibraryManager;->getInstance()Lcom/miui/gallery/assistant/library/LibraryManager;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/assistant/library/LibraryConstants;->sStoryLibraries:[Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/assistant/library/LibraryManager;->isLibrarysExist([Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/CloudUtils;->getXiaomiAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Lcom/miui/gallery/card/CardManager;->getInstance()Lcom/miui/gallery/card/CardManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/card/CardManager;->triggerGuaranteeScenarios(Z)V

    .line 44
    :cond_0
    return-void
.end method
