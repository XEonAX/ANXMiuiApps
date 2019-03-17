.class Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;
.super Ljava/lang/Object;
.source "IgnorePeoplePageFragment.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->recoveryPeople(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/AlertDialog;)V
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

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$localId:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$serverId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    iput-object p2, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;->val$localId:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;->val$serverId:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 7
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 123
    iget-object v1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;->val$name:Ljava/lang/String;

    .line 124
    .local v1, "recoveryName":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;->val$name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 126
    iget-object v3, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;->val$name:Ljava/lang/String;

    const-string v4, "-"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v1, v3, v4

    .line 128
    :cond_0
    new-instance v2, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    iget-object v3, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;->val$localId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;->val$serverId:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;->val$name:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v3, v6}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 129
    .local v2, "recoveryPeople":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    iget-object v3, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    iget-object v3, v3, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v3, v1}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->getGroupByPeopleName(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    move-result-object v0

    .line 131
    .local v0, "existPeople":Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    iget-object v3, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->access$200(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2$1;

    invoke-direct {v4, p0}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2$1;-><init>(Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    if-nez v0, :cond_1

    .line 138
    iget-object v3, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    invoke-static {v3, v2, v1}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->access$300(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Ljava/lang/String;)V

    .line 147
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 140
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    invoke-static {v3}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->access$200(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2$2;

    invoke-direct {v4, p0, v2, v0}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2$2;-><init>(Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;Lcom/miui/gallery/cloud/peopleface/PeopleFace;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
