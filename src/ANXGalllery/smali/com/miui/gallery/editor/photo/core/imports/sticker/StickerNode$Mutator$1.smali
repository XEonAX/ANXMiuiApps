.class Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator$1;
.super Ljava/lang/Object;
.source "StickerEditorView.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$ModifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    .prologue
    .line 728
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModified()V
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator$1;->this$0:Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerNode$Mutator;->updateDisplayInfo()V

    .line 732
    return-void
.end method
