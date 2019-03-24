.class public Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GifFrame"
.end annotation


# instance fields
.field public mDuration:I

.field public mImage:Landroid/graphics/Bitmap;

.field public mIndex:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;->mImage:Landroid/graphics/Bitmap;

    .line 160
    iput p2, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;->mDuration:I

    .line 161
    iput p3, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;->mIndex:I

    .line 162
    return-void
.end method
