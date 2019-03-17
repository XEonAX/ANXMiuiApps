.class Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;
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
    name = "TrimInfo"
.end annotation


# instance fields
.field private end:I

.field private start:I

.field final synthetic this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/NexVideoEditor;II)V
    .locals 0
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1363
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1364
    iput p2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;->start:I

    .line 1365
    iput p3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;->end:I

    .line 1366
    return-void
.end method


# virtual methods
.method public applyChange()V
    .locals 4

    .prologue
    .line 1378
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1400(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1379
    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;->start:I

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;->end:I

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;->end:I

    iget-object v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/NexVideoEditor;->getVideoTotalTime()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 1380
    :cond_0
    const-string v1, "NexVideoEditor"

    const-string v2, "TrimInfo: end time is lower than start time "

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    :cond_1
    :goto_0
    return-void

    .line 1383
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1400(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;->start:I

    iget v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;->end:I

    invoke-virtual {v1, v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setTrim(II)V

    .line 1384
    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;->start:I

    if-nez v1, :cond_4

    iget v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;->end:I

    iget-object v2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/NexVideoEditor;->getVideoTotalTime()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 1385
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;

    move-result-object v1

    const-string/jumbo v2, "trim"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1800(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1390
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1800(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/video/editor/NexVideoEditor$TextClip;->applyChange()V

    .line 1393
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "edit_type_smart_effect_template"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;

    .line 1394
    .local v0, "smartEffectTemplate":Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;
    if-eqz v0, :cond_1

    .line 1395
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->applyChange()V

    goto :goto_0

    .line 1387
    .end local v0    # "smartEffectTemplate":Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;
    :cond_4
    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$TrimInfo;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;

    move-result-object v1

    const-string/jumbo v2, "trim"

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
