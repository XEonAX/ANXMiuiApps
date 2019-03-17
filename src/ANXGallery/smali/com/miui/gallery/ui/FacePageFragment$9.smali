.class Lcom/miui/gallery/ui/FacePageFragment$9;
.super Ljava/lang/Object;
.source "FacePageFragment.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/FacePageFragment;->refreshFaceCover()V
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
        "Ljava/lang/Boolean;",
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
    .line 498
    iput-object p1, p0, Lcom/miui/gallery/ui/FacePageFragment$9;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 501
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 502
    .local v1, "isFresh":Ljava/lang/Boolean;
    new-array v0, v5, [Landroid/graphics/RectF;

    .line 503
    .local v0, "faceRegion":[Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment$9;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/FacePageFragment;->access$1900(Lcom/miui/gallery/ui/FacePageFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/miui/gallery/provider/FaceManager;->queryCoverImageOfOnePerson(Ljava/lang/String;[Landroid/graphics/RectF;)Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment$9;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/FacePageFragment;->access$2000(Lcom/miui/gallery/ui/FacePageFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 505
    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment$9;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v3, v2}, Lcom/miui/gallery/ui/FacePageFragment;->access$2002(Lcom/miui/gallery/ui/FacePageFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 506
    iget-object v3, p0, Lcom/miui/gallery/ui/FacePageFragment$9;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    aget-object v4, v0, v4

    invoke-static {v3, v4}, Lcom/miui/gallery/ui/FacePageFragment;->access$2102(Lcom/miui/gallery/ui/FacePageFragment;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 507
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 509
    :cond_0
    return-object v1
.end method

.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 498
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/FacePageFragment$9;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
