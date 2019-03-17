.class Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;
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
    name = "BGMEdit"
.end annotation


# instance fields
.field private mBGMUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Ljava/lang/String;)V
    .locals 0
    .param p2, "mBGMUri"    # Ljava/lang/String;

    .prologue
    .line 1265
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1266
    iput-object p2, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;->mBGMUri:Ljava/lang/String;

    .line 1267
    return-void
.end method

.method static synthetic access$2400(Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;->mBGMUri:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public applyChange()V
    .locals 5

    .prologue
    .line 1269
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;->mBGMUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1270
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2700(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1271
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "edit_type_smart_effect_template"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;

    .line 1272
    .local v2, "smartEffectTemplate":Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;
    if-eqz v2, :cond_0

    .line 1273
    invoke-virtual {v2}, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->applyChange()V

    .line 1278
    .end local v2    # "smartEffectTemplate":Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "bg_audio"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    :cond_1
    :goto_1
    return-void

    .line 1276
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1500(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;->mBGMUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setBackgroundMusicPath(Ljava/lang/String;)Z

    goto :goto_0

    .line 1280
    :cond_3
    const-string v0, ""

    .line 1281
    .local v0, "filePath":Ljava/lang/String;
    sget-object v3, Lcom/miui/gallery/video/editor/NexVideoEditor$18;->$SwitchMap$com$nostra13$universalimageloader$core$download$ImageDownloader$Scheme:[I

    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;->mBGMUri:Ljava/lang/String;

    invoke-static {v4}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1286
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;->mBGMUri:Ljava/lang/String;

    .line 1289
    :goto_2
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2700(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1290
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2700(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setBackgroundMusicPath(Ljava/lang/String;)Z

    .line 1294
    :goto_3
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "bg_audio"

    invoke-virtual {v3, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;->mBGMUri:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1296
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1297
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "manufacturer"

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    const-string v3, "model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    const-string/jumbo v3, "video_editor"

    const-string/jumbo v4, "video_editor_bgm_empty_file_error"

    invoke-static {v3, v4, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 1283
    .end local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_0
    sget-object v3, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    iget-object v4, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;->mBGMUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->crop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1284
    goto :goto_2

    .line 1292
    :cond_4
    iget-object v3, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$BGMEdit;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1500(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->setBackgroundMusicPath(Ljava/lang/String;)Z

    goto :goto_3

    .line 1281
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
