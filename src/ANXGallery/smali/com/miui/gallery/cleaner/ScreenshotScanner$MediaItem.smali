.class Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;
.super Ljava/lang/Object;
.source "ScreenshotScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cleaner/ScreenshotScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaItem"
.end annotation


# instance fields
.field public mId:J

.field public mPath:Ljava/lang/String;

.field public mSha1:Ljava/lang/String;

.field public mSize:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cleaner/ScreenshotScanner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cleaner/ScreenshotScanner$1;

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/miui/gallery/cleaner/ScreenshotScanner$MediaItem;-><init>()V

    return-void
.end method
