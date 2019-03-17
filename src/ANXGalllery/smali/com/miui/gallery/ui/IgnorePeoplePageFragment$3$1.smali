.class Lcom/miui/gallery/ui/IgnorePeoplePageFragment$3$1;
.super Ljava/lang/Object;
.source "IgnorePeoplePageFragment.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/IgnorePeoplePageFragment$3;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$1:Lcom/miui/gallery/ui/IgnorePeoplePageFragment$3;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/IgnorePeoplePageFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/IgnorePeoplePageFragment$3;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$3$1;->this$1:Lcom/miui/gallery/ui/IgnorePeoplePageFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$3$1;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 3
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$3$1;->this$1:Lcom/miui/gallery/ui/IgnorePeoplePageFragment$3;

    iget-object v0, v0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$3;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    iget-object v1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$3$1;->this$1:Lcom/miui/gallery/ui/IgnorePeoplePageFragment$3;

    iget-object v1, v1, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$3;->val$recoveryPeople:Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    iget-object v2, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$3$1;->this$1:Lcom/miui/gallery/ui/IgnorePeoplePageFragment$3;

    iget-object v2, v2, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$3;->val$existPeopleName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->access$500(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x0

    return-object v0
.end method
