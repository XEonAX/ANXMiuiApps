.class Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;
.super Ljava/lang/Object;
.source "NexVideoEditor.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/NexVideoEditor$Change;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/NexVideoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterEffect"
.end annotation


# instance fields
.field private mFilter:Lcom/miui/gallery/video/editor/Filter;

.field final synthetic this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/Filter;)V
    .locals 0
    .param p2, "filter"    # Lcom/miui/gallery/video/editor/Filter;

    .prologue
    .line 1330
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1331
    iput-object p2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;->mFilter:Lcom/miui/gallery/video/editor/Filter;

    .line 1332
    return-void
.end method

.method static synthetic access$2500(Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;)Lcom/miui/gallery/video/editor/Filter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;->mFilter:Lcom/miui/gallery/video/editor/Filter;

    return-object v0
.end method


# virtual methods
.method public applyChange()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1335
    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;->mFilter:Lcom/miui/gallery/video/editor/Filter;

    if-eqz v4, :cond_3

    .line 1336
    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2700(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1337
    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2700(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v1

    .line 1338
    .local v1, "count":I
    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    iget-object v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;->mFilter:Lcom/miui/gallery/video/editor/Filter;

    invoke-virtual {v5}, Lcom/miui/gallery/video/editor/Filter;->getFilterId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2800(Lcom/miui/gallery/video/editor/NexVideoEditor;Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    move-result-object v2

    .line 1339
    .local v2, "effect":Lcom/nexstreaming/nexeditorsdk/nexColorEffect;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1340
    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2700(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    .line 1341
    .local v0, "clip":Lcom/nexstreaming/nexeditorsdk/nexClip;
    invoke-virtual {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setColorEffect(Lcom/nexstreaming/nexeditorsdk/nexColorEffect;)V

    .line 1339
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1344
    .end local v0    # "clip":Lcom/nexstreaming/nexeditorsdk/nexClip;
    .end local v1    # "count":I
    .end local v2    # "effect":Lcom/nexstreaming/nexeditorsdk/nexColorEffect;
    .end local v3    # "i":I
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    iget-object v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;->mFilter:Lcom/miui/gallery/video/editor/Filter;

    invoke-virtual {v5}, Lcom/miui/gallery/video/editor/Filter;->getFilterId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2800(Lcom/miui/gallery/video/editor/NexVideoEditor;Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    move-result-object v2

    .line 1345
    .restart local v2    # "effect":Lcom/nexstreaming/nexeditorsdk/nexColorEffect;
    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1400(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setColorEffect(Lcom/nexstreaming/nexeditorsdk/nexColorEffect;)V

    .line 1347
    :cond_1
    const-string v4, "NONE"

    iget-object v5, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;->mFilter:Lcom/miui/gallery/video/editor/Filter;

    invoke-virtual {v5}, Lcom/miui/gallery/video/editor/Filter;->getFilterId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1348
    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "filter"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    .end local v2    # "effect":Lcom/nexstreaming/nexeditorsdk/nexColorEffect;
    :goto_1
    return-void

    .line 1350
    .restart local v2    # "effect":Lcom/nexstreaming/nexeditorsdk/nexColorEffect;
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "filter"

    invoke-virtual {v4, v5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1353
    .end local v2    # "effect":Lcom/nexstreaming/nexeditorsdk/nexColorEffect;
    :cond_3
    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1400(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setColorEffect(Lcom/nexstreaming/nexeditorsdk/nexColorEffect;)V

    .line 1354
    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$FilterEffect;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v4}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "filter"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
