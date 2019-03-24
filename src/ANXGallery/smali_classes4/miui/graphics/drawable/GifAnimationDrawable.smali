.class public Lmiui/graphics/drawable/GifAnimationDrawable;
.super Landroid/graphics/drawable/AnimationDrawable;
.source "SourceFile"


# instance fields
.field private nY:Landroid/content/res/Resources;

.field private final ym:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

.field private yn:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

.field private yo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private yp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private yq:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 41
    new-instance v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    invoke-direct {v0}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;-><init>()V

    iput-object v0, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->ym:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->yo:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->yp:Ljava/util/ArrayList;

    return-void
.end method

.method private L(I)V
    .locals 4

    .line 60
    iget-object v0, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->ym:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    iget-object v0, v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->ym:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    iget-object v0, v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;

    .line 67
    iget-object v2, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->ym:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    iget-object v2, v2, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 68
    iget-object v2, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->ym:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    iget-object v2, v2, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 72
    :cond_1
    iget-object v1, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->ym:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    invoke-virtual {v1}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->decodeNextFrames()V

    .line 75
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->nY:Landroid/content/res/Resources;

    iget-object v3, v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;->mImage:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 78
    iget-object v2, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->yn:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v1, v2, p1

    .line 79
    iget-object v1, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->yo:Ljava/util/ArrayList;

    iget v0, v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;->mDuration:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 80
    return-void
.end method

.method private a(Landroid/content/res/Resources;Lmiui/io/ResettableInputStream;)Z
    .locals 0

    .line 158
    iput-object p1, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->nY:Landroid/content/res/Resources;

    .line 159
    iget-object p1, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->ym:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    iput-object p2, p1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mGifSource:Lmiui/io/ResettableInputStream;

    .line 161
    iget-object p1, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->ym:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->decodeFrom(I)Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    move-result-object p1

    .line 162
    invoke-direct {p0, p1}, Lmiui/graphics/drawable/GifAnimationDrawable;->a(Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;)Z

    move-result p1

    return p1
.end method

.method private a(Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;)Z
    .locals 7

    .line 86
    iget-object v0, p1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lcom/miui/internal/graphics/gif/GifDecoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 90
    :cond_0
    iget-object p1, p1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lcom/miui/internal/graphics/gif/GifDecoder;

    .line 91
    iget-object v0, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->ym:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    invoke-virtual {p1}, Lcom/miui/internal/graphics/gif/GifDecoder;->isDecodeToTheEnd()Z

    move-result v2

    iput-boolean v2, v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mDecodedAllFrames:Z

    .line 92
    invoke-virtual {p1}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrameCount()I

    move-result v0

    .line 93
    if-gtz v0, :cond_1

    .line 94
    return v1

    .line 97
    :cond_1
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 98
    iget-object v3, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->ym:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    iget-boolean v3, v3, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mDecodedAllFrames:Z

    if-eqz v3, :cond_2

    .line 100
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->nY:Landroid/content/res/Resources;

    invoke-virtual {p1, v2}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v2}, Lcom/miui/internal/graphics/gif/GifDecoder;->getDelay(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lmiui/graphics/drawable/GifAnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {p1, v2}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 104
    invoke-virtual {p1, v2}, Lcom/miui/internal/graphics/gif/GifDecoder;->getDelay(I)I

    move-result v4

    .line 105
    iget-object v5, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->ym:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    iget-object v5, v5, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    new-instance v6, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;

    invoke-direct {v6, v3, v4, v2}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    :cond_3
    iget-object p1, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->ym:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    iget-boolean p1, p1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mDecodedAllFrames:Z

    if-nez p1, :cond_4

    .line 113
    iget-object p1, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->ym:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    invoke-virtual {p1}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->firstDecodeNextFrames()V

    .line 116
    iget-object p1, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->ym:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    iget-object p1, p1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;

    .line 117
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->nY:Landroid/content/res/Resources;

    iget-object v3, p1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;->mImage:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 118
    iget v2, p1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;->mDuration:I

    invoke-virtual {p0, v0, v2}, Lmiui/graphics/drawable/GifAnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 119
    iget p1, p1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;->mDuration:I

    invoke-virtual {p0, v0, p1}, Lmiui/graphics/drawable/GifAnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 123
    :cond_4
    invoke-virtual {p0, v1}, Lmiui/graphics/drawable/GifAnimationDrawable;->setOneShot(Z)V

    .line 126
    invoke-super {p0, v1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 128
    const/4 p1, 0x1

    return p1

    .line 87
    :cond_5
    :goto_2
    return v1
.end method


# virtual methods
.method public final addFrame(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .line 144
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 145
    iget-object p1, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->yo:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object p1, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->yp:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public final getDuration(I)I
    .locals 1

    .line 139
    iget-object v0, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->yo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public load(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .locals 1

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance v0, Lmiui/io/ResettableInputStream;

    invoke-direct {v0, p2, p3}, Lmiui/io/ResettableInputStream;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lmiui/graphics/drawable/GifAnimationDrawable;->a(Landroid/content/res/Resources;Lmiui/io/ResettableInputStream;)Z

    move-result p1

    return p1
.end method

.method public load(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p1, p2}, Lmiui/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {p0, v0, v1}, Lmiui/graphics/drawable/GifAnimationDrawable;->a(Landroid/content/res/Resources;Lmiui/io/ResettableInputStream;)Z

    move-result p1

    return p1
.end method

.method public load(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance v0, Lmiui/io/ResettableInputStream;

    invoke-direct {v0, p2}, Lmiui/io/ResettableInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lmiui/graphics/drawable/GifAnimationDrawable;->a(Landroid/content/res/Resources;Lmiui/io/ResettableInputStream;)Z

    move-result p1

    return p1
.end method

.method public final scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 4

    .line 151
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->yp:Ljava/util/ArrayList;

    iget v3, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->yq:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    iget-object v0, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->yo:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->yq:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p2, v0

    .line 154
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimationDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 155
    return-void
.end method

.method public final selectDrawable(I)Z
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lmiui/graphics/drawable/GifAnimationDrawable;->L(I)V

    .line 51
    iput p1, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->yq:I

    .line 52
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    move-result p1

    return p1
.end method

.method protected final setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 0

    .line 133
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimationDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 134
    iput-object p1, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->yn:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 135
    return-void
.end method

.method public final setMaxDecodeSize(J)V
    .locals 1

    .line 204
    iget-object v0, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->ym:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    iput-wide p1, v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mMaxDecodeSize:J

    .line 205
    return-void
.end method
