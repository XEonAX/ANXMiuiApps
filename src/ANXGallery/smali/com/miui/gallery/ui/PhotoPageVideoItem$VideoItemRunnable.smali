.class Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoItemRunnable;
.super Ljava/lang/Object;
.source "PhotoPageVideoItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageVideoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoItemRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

.field private final visible:Z


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/PhotoPageVideoItem;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageVideoItem;
    .param p2, "visible"    # Z

    .prologue
    .line 189
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoItemRunnable;->this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-boolean p2, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoItemRunnable;->visible:Z

    .line 191
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoItemRunnable;->this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoItemRunnable;->visible:Z

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->access$100(Lcom/miui/gallery/ui/PhotoPageVideoItem;Z)V

    .line 196
    return-void
.end method
