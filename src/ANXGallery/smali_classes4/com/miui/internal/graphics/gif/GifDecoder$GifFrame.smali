.class Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/graphics/gif/GifDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GifFrame"
.end annotation


# instance fields
.field public delay:I

.field public image:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    .line 189
    iput p2, p0, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;->delay:I

    .line 190
    return-void
.end method


# virtual methods
.method public recycle()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 196
    :cond_0
    return-void
.end method
