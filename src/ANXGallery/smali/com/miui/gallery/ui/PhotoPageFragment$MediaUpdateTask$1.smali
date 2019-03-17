.class Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask$1;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;->execute(Ljava/lang/String;Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask$Callback;)V
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
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;

    .prologue
    .line 3665
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask$1;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask;

    iput-object p2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3665
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask$1;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 4
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 3668
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 3669
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask$1;->val$path:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/miui/gallery/scanner/MediaScanner;->scanSingleFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 3670
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask$1;->val$path:Ljava/lang/String;

    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    .line 3671
    .local v1, "type":I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$MediaUpdateTask$1;->val$path:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/miui/gallery/util/MediaStoreUtils;->insert(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    .line 3672
    const/4 v2, 0x0

    return-object v2

    .line 3670
    .end local v1    # "type":I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
