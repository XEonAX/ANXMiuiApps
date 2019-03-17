.class Lcom/miui/gallery/ui/IgnorePeoplePageFragment$5;
.super Ljava/lang/Object;
.source "IgnorePeoplePageFragment.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->onActivityResult(IILandroid/content/Intent;)V
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
.field final synthetic this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$5;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    iput-object p2, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$5;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$5;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 3
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$5;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    iget-object v1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$5;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->access$600(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;)Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$5;->val$name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->access$300(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Ljava/lang/String;)V

    .line 302
    const/4 v0, 0x0

    return-object v0
.end method
