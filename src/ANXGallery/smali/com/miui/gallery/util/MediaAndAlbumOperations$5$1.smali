.class Lcom/miui/gallery/util/MediaAndAlbumOperations$5$1;
.super Ljava/lang/Object;
.source "MediaAndAlbumOperations.java"

# interfaces
.implements Lcom/miui/gallery/util/MediaAndAlbumOperations$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/MediaAndAlbumOperations$5;->onAlbumSelected(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/MediaAndAlbumOperations$5;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/MediaAndAlbumOperations$5;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/MediaAndAlbumOperations$5;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$5$1;->this$0:Lcom/miui/gallery/util/MediaAndAlbumOperations$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([J)V
    .locals 2
    .param p1, "result"    # [J

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$5$1;->this$0:Lcom/miui/gallery/util/MediaAndAlbumOperations$5;

    iget-object v0, v0, Lcom/miui/gallery/util/MediaAndAlbumOperations$5;->val$listener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/miui/gallery/util/MediaAndAlbumOperations$5$1;->this$0:Lcom/miui/gallery/util/MediaAndAlbumOperations$5;

    iget-object v0, v0, Lcom/miui/gallery/util/MediaAndAlbumOperations$5;->val$listener:Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/miui/gallery/util/MediaAndAlbumOperations$OnAddAlbumListener;->onComplete([JZ)V

    .line 151
    :cond_0
    return-void
.end method
