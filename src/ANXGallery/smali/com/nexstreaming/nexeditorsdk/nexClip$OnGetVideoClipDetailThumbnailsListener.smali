.class public abstract Lcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipDetailThumbnailsListener;
.super Ljava/lang/Object;
.source "nexClip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexClip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnGetVideoClipDetailThumbnailsListener"
.end annotation


# static fields
.field public static kEvent_Completed:I

.field public static kEvent_Fail:I

.field public static kEvent_Ok:I

.field public static kEvent_UserCancel:I

.field public static kEvent_systemError:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2251
    const/4 v0, 0x0

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipDetailThumbnailsListener;->kEvent_Ok:I

    .line 2252
    const/4 v0, 0x1

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipDetailThumbnailsListener;->kEvent_Completed:I

    .line 2253
    const/4 v0, -0x1

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipDetailThumbnailsListener;->kEvent_Fail:I

    .line 2254
    const/4 v0, -0x2

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipDetailThumbnailsListener;->kEvent_systemError:I

    .line 2255
    const/4 v0, -0x3

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipDetailThumbnailsListener;->kEvent_UserCancel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onGetDetailThumbnailResult(ILandroid/graphics/Bitmap;III)V
.end method
