.class Lcom/miui/gallery/assistant/manager/ImageFeatureManger$5;
.super Ljava/lang/Object;
.source "ImageFeatureManger.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->scheduleNewImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;


# direct methods
.method constructor <init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$5;->this$0:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$5;->handle(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handle(Landroid/database/Cursor;)Ljava/util/List;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 304
    .local v0, "mediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    :cond_0
    new-instance v1, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    invoke-direct {v1, p1}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    .end local v0    # "mediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
