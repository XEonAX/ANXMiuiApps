.class Lcom/miui/gallery/assistant/library/LibraryManager$4$1;
.super Ljava/lang/Object;
.source "LibraryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/assistant/library/LibraryManager$4;->onDownloadResult(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/assistant/library/LibraryManager$4;

.field final synthetic val$libraryId:J

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/assistant/library/LibraryManager$4;JI)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/assistant/library/LibraryManager$4;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/miui/gallery/assistant/library/LibraryManager$4$1;->this$1:Lcom/miui/gallery/assistant/library/LibraryManager$4;

    iput-wide p2, p0, Lcom/miui/gallery/assistant/library/LibraryManager$4$1;->val$libraryId:J

    iput p4, p0, Lcom/miui/gallery/assistant/library/LibraryManager$4$1;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 319
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager$4$1;->this$1:Lcom/miui/gallery/assistant/library/LibraryManager$4;

    iget-object v0, v0, Lcom/miui/gallery/assistant/library/LibraryManager$4;->val$listener:Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryManager$4$1;->this$1:Lcom/miui/gallery/assistant/library/LibraryManager$4;

    iget-object v0, v0, Lcom/miui/gallery/assistant/library/LibraryManager$4;->val$listener:Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;

    iget-wide v2, p0, Lcom/miui/gallery/assistant/library/LibraryManager$4$1;->val$libraryId:J

    iget v1, p0, Lcom/miui/gallery/assistant/library/LibraryManager$4$1;->val$resultCode:I

    invoke-interface {v0, v2, v3, v1}, Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;->onDownloadResult(JI)V

    .line 322
    :cond_0
    return-void
.end method
