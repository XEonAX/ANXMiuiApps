.class Lcom/miui/gallery/ui/FacePageFragment$11;
.super Ljava/lang/Object;
.source "FacePageFragment.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/FacePageFragment;->refreshFaceNameIfNeeded()V
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
        "Ljava/lang/String;",
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
    .line 524
    iput-object p1, p0, Lcom/miui/gallery/ui/FacePageFragment$11;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 524
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/FacePageFragment$11;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/String;
    .locals 2
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/miui/gallery/ui/FacePageFragment$11;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/FacePageFragment;->access$500(Lcom/miui/gallery/ui/FacePageFragment;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/gallery/provider/FaceManager;->queryPersonName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
