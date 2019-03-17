.class Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2$1;
.super Ljava/lang/Object;
.source "IgnorePeoplePageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2$1;->this$1:Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2$1;->this$1:Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;

    iget-object v0, v0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    iget-object v1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2$1;->this$1:Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;

    iget-object v1, v1, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->dismissDialog(Landroid/app/AlertDialog;)V

    .line 135
    return-void
.end method
