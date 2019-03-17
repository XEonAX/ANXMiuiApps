.class Lcom/miui/gallery/cloud/TimeSetReceiver$1;
.super Ljava/lang/Object;
.source "TimeSetReceiver.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/TimeSetReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloud/TimeSetReceiver;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloud/TimeSetReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cloud/TimeSetReceiver;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/miui/gallery/cloud/TimeSetReceiver$1;->this$0:Lcom/miui/gallery/cloud/TimeSetReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 2
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v1, 0x0

    .line 24
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_CACHE_URI:Landroid/net/Uri;

    invoke-static {v0, v1, v1}, Lcom/miui/gallery/util/GalleryUtils;->safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 25
    return-object v1
.end method
