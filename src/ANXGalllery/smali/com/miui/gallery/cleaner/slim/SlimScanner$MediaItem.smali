.class Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;
.super Ljava/lang/Object;
.source "SlimScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cleaner/slim/SlimScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaItem"
.end annotation


# instance fields
.field public mFilePath:Ljava/lang/String;

.field public mHeight:I

.field public mId:J

.field public mSize:J

.field public mSlimSize:J

.field public mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cleaner/slim/SlimScanner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cleaner/slim/SlimScanner$1;

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/miui/gallery/cleaner/slim/SlimScanner$MediaItem;-><init>()V

    return-void
.end method
