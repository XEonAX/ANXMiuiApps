.class Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment$DecodeTask;
.super Landroid/os/AsyncTask;
.source "StickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;

.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;)V
    .locals 0
    .param p2, "item"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment$DecodeTask;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 121
    iput-object p2, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment$DecodeTask;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;

    .line 122
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment$DecodeTask;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment$DecodeTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 132
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->INSTANCE:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment$DecodeTask;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;

    invoke-virtual {v0, v1, p1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;->putToCache(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;Landroid/graphics/Bitmap;)V

    .line 133
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment$DecodeTask;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;->access$000(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment;)Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment$DecodeTask;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;

    iget-object v3, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;->content:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment$DecodeTask;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;

    iget-wide v4, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;->id:J

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment$DecodeTask;->mItem:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;

    iget-object v6, v0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerItem;->cateName:Ljava/lang/String;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerEditorView;->add(Landroid/graphics/Bitmap;Ljava/lang/String;JLjava/lang/String;)V

    .line 134
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 117
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerFragment$DecodeTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
