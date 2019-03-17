.class Lcom/miui/gallery/util/photoview/TileView$TileDecodeHandler;
.super Landroid/os/Handler;
.source "TileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/photoview/TileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileDecodeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/photoview/TileView;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/util/photoview/TileView;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/miui/gallery/util/photoview/TileView$TileDecodeHandler;->this$0:Lcom/miui/gallery/util/photoview/TileView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/util/photoview/TileView;Lcom/miui/gallery/util/photoview/TileView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/util/photoview/TileView;
    .param p2, "x1"    # Lcom/miui/gallery/util/photoview/TileView$1;

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/photoview/TileView$TileDecodeHandler;-><init>(Lcom/miui/gallery/util/photoview/TileView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 352
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 354
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 355
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/gallery/util/photoview/Tile;

    .line 356
    .local v0, "tile":Lcom/miui/gallery/util/photoview/Tile;
    invoke-virtual {v0}, Lcom/miui/gallery/util/photoview/Tile;->getTileRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/photoview/TileView;->makeTileKey(Landroid/graphics/Rect;)I

    move-result v1

    .line 357
    .local v1, "tileKey":I
    iget-object v2, p0, Lcom/miui/gallery/util/photoview/TileView$TileDecodeHandler;->this$0:Lcom/miui/gallery/util/photoview/TileView;

    invoke-static {v2}, Lcom/miui/gallery/util/photoview/TileView;->access$100(Lcom/miui/gallery/util/photoview/TileView;)Lcom/miui/gallery/util/photoview/TileDecodeManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/gallery/util/photoview/TileDecodeManager;->removeDecodingTile(I)V

    .line 358
    invoke-virtual {v0}, Lcom/miui/gallery/util/photoview/Tile;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    iget-object v2, p0, Lcom/miui/gallery/util/photoview/TileView$TileDecodeHandler;->this$0:Lcom/miui/gallery/util/photoview/TileView;

    invoke-static {v2}, Lcom/miui/gallery/util/photoview/TileView;->access$200(Lcom/miui/gallery/util/photoview/TileView;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 360
    iget-object v2, p0, Lcom/miui/gallery/util/photoview/TileView$TileDecodeHandler;->this$0:Lcom/miui/gallery/util/photoview/TileView;

    invoke-static {v2}, Lcom/miui/gallery/util/photoview/TileView;->access$300(Lcom/miui/gallery/util/photoview/TileView;)Z

    goto :goto_0

    .line 362
    :cond_1
    invoke-virtual {v0}, Lcom/miui/gallery/util/photoview/Tile;->recycle()V

    goto :goto_0

    .line 367
    .end local v0    # "tile":Lcom/miui/gallery/util/photoview/Tile;
    .end local v1    # "tileKey":I
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 368
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/gallery/util/photoview/Tile;

    .line 369
    .restart local v0    # "tile":Lcom/miui/gallery/util/photoview/Tile;
    invoke-virtual {v0}, Lcom/miui/gallery/util/photoview/Tile;->getTileRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/photoview/TileView;->makeTileKey(Landroid/graphics/Rect;)I

    move-result v1

    .line 370
    .restart local v1    # "tileKey":I
    iget-object v2, p0, Lcom/miui/gallery/util/photoview/TileView$TileDecodeHandler;->this$0:Lcom/miui/gallery/util/photoview/TileView;

    invoke-static {v2}, Lcom/miui/gallery/util/photoview/TileView;->access$100(Lcom/miui/gallery/util/photoview/TileView;)Lcom/miui/gallery/util/photoview/TileDecodeManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/gallery/util/photoview/TileDecodeManager;->removeDecodingTile(I)V

    .line 373
    .end local v0    # "tile":Lcom/miui/gallery/util/photoview/Tile;
    .end local v1    # "tileKey":I
    :cond_2
    const-string v2, "TileView"

    const-string/jumbo v3, "tile decode fail: %s"

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 352
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
