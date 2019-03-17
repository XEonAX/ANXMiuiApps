.class Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:I

.field final c:[I

.field final d:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(II[ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 802
    iput p1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;->a:I

    .line 803
    iput p2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;->b:I

    .line 804
    iput-object p3, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;->c:[I

    .line 805
    iput-object p4, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;->d:Landroid/graphics/Bitmap;

    .line 806
    return-void
.end method
