.class Lcom/miui/gallery/ui/PeoplePageFragment$7$1;
.super Ljava/lang/Object;
.source "PeoplePageFragment.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PeoplePageFragment$7;->onRelationSelected(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$1:Lcom/miui/gallery/ui/PeoplePageFragment$7;

.field final synthetic val$relation:Ljava/lang/String;

.field final synthetic val$relationText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PeoplePageFragment$7;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PeoplePageFragment$7;

    .prologue
    .line 781
    iput-object p1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$7$1;->this$1:Lcom/miui/gallery/ui/PeoplePageFragment$7;

    iput-object p2, p0, Lcom/miui/gallery/ui/PeoplePageFragment$7$1;->val$relation:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/gallery/ui/PeoplePageFragment$7$1;->val$relationText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 781
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PeoplePageFragment$7$1;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 3
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 784
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$7$1;->this$1:Lcom/miui/gallery/ui/PeoplePageFragment$7;

    iget-object v0, v0, Lcom/miui/gallery/ui/PeoplePageFragment$7;->val$selectIds:[J

    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$7$1;->val$relation:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/ui/PeoplePageFragment$7$1;->val$relationText:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->moveFaceToRelationGroup([JLjava/lang/String;Ljava/lang/String;)Z

    .line 785
    const/4 v0, 0x0

    return-object v0
.end method
