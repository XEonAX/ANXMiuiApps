.class public abstract Lcom/nexstreaming/nexeditorsdk/nexClip$OnLoadVideoClipThumbnailListener;
.super Ljava/lang/Object;
.source "nexClip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexClip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnLoadVideoClipThumbnailListener"
.end annotation


# static fields
.field public static kEvent_Ok:I

.field public static kEvent_Running:I

.field public static kEvent_loadCompleted:I

.field public static kEvent_loadFail:I

.field public static kEvent_mustRetry:I

.field public static kEvent_systemError:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2100
    const/4 v0, 0x0

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexClip$OnLoadVideoClipThumbnailListener;->kEvent_Ok:I

    .line 2107
    const/4 v0, 0x1

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexClip$OnLoadVideoClipThumbnailListener;->kEvent_loadCompleted:I

    .line 2114
    const/4 v0, 0x2

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexClip$OnLoadVideoClipThumbnailListener;->kEvent_Running:I

    .line 2121
    const/4 v0, 0x3

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexClip$OnLoadVideoClipThumbnailListener;->kEvent_mustRetry:I

    .line 2128
    const/4 v0, -0x1

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexClip$OnLoadVideoClipThumbnailListener;->kEvent_loadFail:I

    .line 2135
    const/4 v0, -0x2

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexClip$OnLoadVideoClipThumbnailListener;->kEvent_systemError:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2093
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onLoadThumbnailResult(I)V
.end method
