.class Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto$2;
.super Ljava/lang/Object;
.source "CacheOfAllFacesInOnePhoto.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto;->requestFacesOfThePhoto(Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto$PhotoViewProvider;Ljava/lang/String;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/FutureListener",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/miui/gallery/cloud/peopleface/PeopleFace;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto;

.field final synthetic val$photoServerId:Ljava/lang/String;

.field final synthetic val$provider:Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto$PhotoViewProvider;


# direct methods
.method constructor <init>(Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto;Ljava/lang/String;Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto$PhotoViewProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto$2;->this$0:Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto;

    iput-object p2, p0, Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto$2;->val$photoServerId:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto$2;->val$provider:Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto$PhotoViewProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/miui/gallery/threadpool/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/peopleface/PeopleFace;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Ljava/util/ArrayList<Lcom/miui/gallery/cloud/peopleface/PeopleFace;>;>;"
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto$2;->this$0:Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto;

    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto$2;->val$photoServerId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto;->saveFacesOfThePhoto(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto$2;->val$provider:Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto$PhotoViewProvider;

    invoke-interface {v0}, Lcom/miui/gallery/data/CacheOfAllFacesInOnePhoto$PhotoViewProvider;->onInvalidated()V

    .line 55
    :cond_0
    return-void
.end method
