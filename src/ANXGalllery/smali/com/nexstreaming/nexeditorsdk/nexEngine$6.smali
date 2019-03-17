.class Lcom/nexstreaming/nexeditorsdk/nexEngine$6;
.super Ljava/lang/Object;
.source "nexEngine.java"

# interfaces
.implements Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/nexeditorsdk/nexEngine;


# direct methods
.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexEngine;)V
    .locals 0

    .prologue
    .line 4023
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$6;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 4026
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$6;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$2600(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 4031
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$6;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$2700(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4032
    monitor-exit v4

    .line 4120
    :goto_0
    return-void

    .line 4035
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$6;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$2800(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4037
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$6;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$1100(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4038
    monitor-exit v4

    goto :goto_0

    .line 4119
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4040
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$6;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$1100(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getOverlayItems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4041
    monitor-exit v4

    goto :goto_0

    .line 4048
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$6;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$1100(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getOverlayItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 4049
    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->g()I

    move-result v5

    .line 4050
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$6;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$1100(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getOverlayItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v3

    move v2, v3

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    .line 4052
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getStartTime()I

    move-result v7

    .line 4053
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->getEndTime()I

    move-result v8

    .line 4055
    iget-object v9, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$6;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v9}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$2900(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 4074
    if-gt v7, v5, :cond_4

    if-le v8, v5, :cond_4

    .line 4075
    if-nez v9, :cond_3

    .line 4076
    iget-object v7, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$6;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v7}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$2900(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4077
    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->onRenderAwake(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    .line 4078
    add-int/lit8 v2, v2, 0x1

    .line 4083
    :cond_3
    iget-object v7, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$6;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v7}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$2800(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    move v1, v2

    :goto_2
    move v2, v1

    move v1, v0

    .line 4108
    goto :goto_1

    .line 4091
    :cond_4
    if-eqz v9, :cond_7

    .line 4092
    iget-object v7, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$6;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v7}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$2900(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4093
    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->onRenderAsleep(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    .line 4094
    add-int/lit8 v0, v1, 0x1

    move v1, v2

    .line 4095
    goto :goto_2

    .line 4112
    :cond_5
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$6;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$2800(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$3000()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4114
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$6;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$2800(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v1, v3

    .line 4115
    :goto_3
    if-ge v1, v2, :cond_6

    .line 4116
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEngine$6;->a:Lcom/nexstreaming/nexeditorsdk/nexEngine;

    invoke-static {v0}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->access$2800(Lcom/nexstreaming/nexeditorsdk/nexEngine;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    .line 4117
    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->onRender(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    .line 4115
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 4119
    :cond_6
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_7
    move v0, v1

    move v1, v2

    goto :goto_2
.end method
