.class public Lcom/miui/gallery/video/editor/VideoEditor$NotSupportVideoException;
.super Ljava/lang/Exception;
.source "VideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/VideoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotSupportVideoException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/VideoEditor;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/video/editor/VideoEditor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/VideoEditor;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/miui/gallery/video/editor/VideoEditor$NotSupportVideoException;->this$0:Lcom/miui/gallery/video/editor/VideoEditor;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method
