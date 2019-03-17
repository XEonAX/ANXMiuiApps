.class Lcom/miui/gallery/receiver/GalleryTestReceiver$2;
.super Ljava/lang/Object;
.source "GalleryTestReceiver.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/receiver/GalleryTestReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
.field final synthetic this$0:Lcom/miui/gallery/receiver/GalleryTestReceiver;


# direct methods
.method constructor <init>(Lcom/miui/gallery/receiver/GalleryTestReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/receiver/GalleryTestReceiver;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/miui/gallery/receiver/GalleryTestReceiver$2;->this$0:Lcom/miui/gallery/receiver/GalleryTestReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/miui/gallery/receiver/GalleryTestReceiver$2;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 1
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 44
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/settingssync/GallerySettingsSyncHelper;->doSync(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method
