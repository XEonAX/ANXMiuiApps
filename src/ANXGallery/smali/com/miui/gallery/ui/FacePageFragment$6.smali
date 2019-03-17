.class Lcom/miui/gallery/ui/FacePageFragment$6;
.super Ljava/lang/Object;
.source "FacePageFragment.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/FacePageFragment;->seeIfHasRecommendFace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/FacePageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/FacePageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/FacePageFragment;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/miui/gallery/ui/FacePageFragment$6;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/FacePageFragment$6;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 4
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v3, 0x0

    .line 308
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment$6;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/FacePageFragment;->access$900(Lcom/miui/gallery/ui/FacePageFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment$6;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    new-instance v1, Lcom/miui/gallery/util/face/CheckoutRecommendPeople;

    iget-object v2, p0, Lcom/miui/gallery/ui/FacePageFragment$6;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-direct {v1, v3, v2}, Lcom/miui/gallery/util/face/CheckoutRecommendPeople;-><init>(Landroid/os/Handler;Lcom/miui/gallery/util/face/CheckoutRecommendPeople$CheckoutStatusListener;)V

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/FacePageFragment;->access$1002(Lcom/miui/gallery/ui/FacePageFragment;Lcom/miui/gallery/util/face/CheckoutRecommendPeople;)Lcom/miui/gallery/util/face/CheckoutRecommendPeople;

    .line 310
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment$6;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/FacePageFragment;->access$1000(Lcom/miui/gallery/ui/FacePageFragment;)Lcom/miui/gallery/util/face/CheckoutRecommendPeople;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/FacePageFragment$6;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/FacePageFragment;->getServerIdOfAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/face/CheckoutRecommendPeople;->getRecommendPeopleFromNet(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment$6;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/FacePageFragment;->access$902(Lcom/miui/gallery/ui/FacePageFragment;Z)Z

    .line 315
    :cond_0
    return-object v3
.end method
