.class final Lcom/miui/gallery/ui/AIAlbumStatusHelper$1;
.super Ljava/lang/Object;
.source "AIAlbumStatusHelper.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/AIAlbumStatusHelper;->requestOpenCloudControlSearch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AIAlbumStatusHelper$1;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 1
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 139
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$Search;->setIsUserSearchSwitchOpen(Z)V

    .line 140
    invoke-static {}, Lcom/miui/gallery/search/core/source/server/OpenSearchRequest;->request()I

    .line 141
    const/4 v0, 0x0

    return-object v0
.end method
