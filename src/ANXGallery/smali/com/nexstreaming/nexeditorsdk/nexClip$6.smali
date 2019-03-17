.class Lcom/nexstreaming/nexeditorsdk/nexClip$6;
.super Ljava/lang/Object;
.source "nexClip.java"

# interfaces
.implements Lcom/nexstreaming/app/common/task/Task$OnTaskEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipIDR2YOnlyThumbnails(IIIIILcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipIDR2YOnlyThumbnailsListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipIDR2YOnlyThumbnailsListener;

.field final synthetic b:Lcom/nexstreaming/nexeditorsdk/nexClip;


# direct methods
.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexClip;Lcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipIDR2YOnlyThumbnailsListener;)V
    .locals 0

    .prologue
    .line 2398
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexClip$6;->b:Lcom/nexstreaming/nexeditorsdk/nexClip;

    iput-object p2, p0, Lcom/nexstreaming/nexeditorsdk/nexClip$6;->a:Lcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipIDR2YOnlyThumbnailsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskEvent(Lcom/nexstreaming/app/common/task/Task;Lcom/nexstreaming/app/common/task/Task$Event;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2401
    const-string v0, "nexClip"

    const-string v1, "YonlyThumbTest onComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClip$6;->a:Lcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipIDR2YOnlyThumbnailsListener;

    sget v1, Lcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipIDR2YOnlyThumbnailsListener;->kEvent_Completed:I

    const/4 v2, 0x0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nexstreaming/nexeditorsdk/nexClip$OnGetVideoClipIDR2YOnlyThumbnailsListener;->onGetVideoClipIDR2YOnlyThumbnailsResult(I[BIII)V

    .line 2403
    return-void
.end method
