.class Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$2;
.super Lcom/miui/gallery/threadpool/FutureHandler;
.source "PhotoPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;->execute(Lcom/miui/gallery/model/BaseDataItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/threadpool/FutureHandler",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;

.field final synthetic val$dataItem:Lcom/miui/gallery/model/BaseDataItem;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;

    .prologue
    .line 4281
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$2;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;

    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$2;->val$dataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-direct {p0}, Lcom/miui/gallery/threadpool/FutureHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Lcom/miui/gallery/threadpool/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4284
    .local p1, "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$2;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;->access$6900(Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;)Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4285
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$2;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;->access$6900(Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask;)Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$2;->val$dataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-interface {v0, v1}, Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$Callback;->onDataItemRecognized(Lcom/miui/gallery/model/BaseDataItem;)V

    .line 4287
    :cond_0
    return-void
.end method
