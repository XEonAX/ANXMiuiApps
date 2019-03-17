.class Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaPollingRunnable;
.super Ljava/lang/Object;
.source "PhotoPageFragmentBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessingMediaPollingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)V
    .locals 0

    .prologue
    .line 962
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaPollingRunnable;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase;Lcom/miui/gallery/ui/PhotoPageFragmentBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PhotoPageFragmentBase$1;

    .prologue
    .line 962
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaPollingRunnable;-><init>(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 965
    const-string v0, "PhotoPageFragmentBase"

    const-string v1, "Query processing medias by polling, interval: %dms"

    const/16 v2, 0x2710

    .line 966
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 965
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 967
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaPollingRunnable;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaPollingRunnable;->this$0:Lcom/miui/gallery/ui/PhotoPageFragmentBase;

    .line 968
    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageFragmentBase;->access$1600(Lcom/miui/gallery/ui/PhotoPageFragmentBase;)Lcom/miui/gallery/ui/PhotoPageFragmentBase$ProcessingMediaLoaderCallback;

    move-result-object v3

    .line 967
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 970
    return-void
.end method
