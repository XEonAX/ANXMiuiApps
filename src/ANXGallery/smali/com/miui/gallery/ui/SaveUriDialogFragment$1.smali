.class Lcom/miui/gallery/ui/SaveUriDialogFragment$1;
.super Ljava/lang/Object;
.source "SaveUriDialogFragment.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/SaveUriDialogFragment;->save(Landroid/net/Uri;)V
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
.field final synthetic this$0:Lcom/miui/gallery/ui/SaveUriDialogFragment;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/SaveUriDialogFragment;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/SaveUriDialogFragment;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/miui/gallery/ui/SaveUriDialogFragment$1;->this$0:Lcom/miui/gallery/ui/SaveUriDialogFragment;

    iput-object p2, p0, Lcom/miui/gallery/ui/SaveUriDialogFragment$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/SaveUriDialogFragment$1;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/String;
    .locals 2
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/gallery/ui/SaveUriDialogFragment$1;->this$0:Lcom/miui/gallery/ui/SaveUriDialogFragment;

    iget-object v1, p0, Lcom/miui/gallery/ui/SaveUriDialogFragment$1;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/SaveUriDialogFragment;->access$000(Lcom/miui/gallery/ui/SaveUriDialogFragment;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
