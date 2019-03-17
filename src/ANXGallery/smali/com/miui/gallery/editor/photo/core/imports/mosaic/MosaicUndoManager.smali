.class Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;
.super Ljava/lang/Object;
.source "MosaicUndoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager$RevokedItem;,
        Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager$CaptureListener;
    }
.end annotation


# instance fields
.field private final mBitmapHeight:I

.field private final mBitmapWidth:I

.field private final mBufferItems:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureListener:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager$CaptureListener;

.field private final mMosaicOperationItems:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mReuseBufferItem:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mRevokedBufferItems:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mRevokedOperationItems:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager$RevokedItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewHeight:I

.field private final mViewWidth:I


# direct methods
.method constructor <init>(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewWidth"    # I
    .param p4, "viewHeight"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mBufferItems:Ljava/util/LinkedList;

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mRevokedBufferItems:Ljava/util/LinkedList;

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mMosaicOperationItems:Ljava/util/LinkedList;

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mRevokedOperationItems:Ljava/util/LinkedList;

    .line 34
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mReuseBufferItem:Ljava/util/Stack;

    .line 35
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mBitmapWidth:I

    .line 36
    iput p2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mBitmapHeight:I

    .line 37
    iput p3, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mViewWidth:I

    .line 38
    iput p4, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mViewHeight:I

    .line 39
    return-void
.end method

.method private addNewOperationItem(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem$PaintingItem;Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;)V
    .locals 2
    .param p1, "paintingItem"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem$PaintingItem;
    .param p2, "mosaicGLEntity"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    .prologue
    .line 149
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;

    invoke-direct {v0, p2}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;-><init>(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;)V

    .line 150
    .local v0, "item":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;->add(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem$PaintingItem;)V

    .line 151
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mMosaicOperationItems:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 152
    return-void
.end method

.method private clearRevokedItem()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mRevokedOperationItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mRevokedBufferItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mReuseBufferItem:Ljava/util/Stack;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mRevokedBufferItems:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public canRevert()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mRevokedBufferItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mRevokedOperationItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canRevoke()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 113
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mBufferItems:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mMosaicOperationItems:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public capture(Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;)V
    .locals 6
    .param p1, "mDisplayManager"    # Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;
    .param p2, "standardDrawable"    # Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;

    .prologue
    const/16 v5, 0x4100

    .line 70
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mBufferItems:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 72
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mReuseBufferItem:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mReuseBufferItem:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    .line 77
    .local v0, "bufferItem":Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;
    :goto_0
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->bind()V

    .line 78
    invoke-static {v5}, Landroid/opengl/GLES20;->glClear(I)V

    .line 79
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->getTextureId()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->drawFBO(I)V

    .line 80
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->unBind()V

    .line 81
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mBufferItems:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 90
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mCaptureListener:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager$CaptureListener;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mCaptureListener:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager$CaptureListener;

    invoke-interface {v1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager$CaptureListener;->onCapture()V

    .line 93
    :cond_0
    return-void

    .line 75
    .end local v0    # "bufferItem":Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;
    :cond_1
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mBitmapWidth:I

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mBitmapHeight:I

    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mViewWidth:I

    iget v4, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mViewHeight:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;-><init>(IIII)V

    .restart local v0    # "bufferItem":Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;
    goto :goto_0

    .line 83
    .end local v0    # "bufferItem":Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mBufferItems:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    .line 84
    .restart local v0    # "bufferItem":Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->bind()V

    .line 85
    invoke-static {v5}, Landroid/opengl/GLES20;->glClear(I)V

    .line 86
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->getTextureId()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->drawFBO(I)V

    .line 87
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->unBind()V

    .line 88
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mBufferItems:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public clearBuffer()V
    .locals 1

    .prologue
    .line 159
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mBufferItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mBufferItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->clear()V

    goto :goto_0

    .line 162
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mRevokedBufferItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mRevokedBufferItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->clear()V

    goto :goto_1

    .line 165
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mReuseBufferItem:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mReuseBufferItem:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;->clear()V

    goto :goto_2

    .line 168
    :cond_2
    return-void
.end method

.method public doRevert()Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;
    .locals 5

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->canRevert()Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 145
    :goto_0
    return-object v0

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mRevokedOperationItems:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager$RevokedItem;

    .line 142
    .local v1, "revokedItem":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager$RevokedItem;
    iget-object v2, v1, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager$RevokedItem;->paintingItem:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem$PaintingItem;

    iget-object v3, v1, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager$RevokedItem;->mosaicGLEntity:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->record(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem$PaintingItem;Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;Z)V

    .line 143
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mRevokedBufferItems:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    .line 144
    .local v0, "bufferItem":Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mBufferItems:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public doRevoke()Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->canRevoke()Z

    move-result v2

    if-nez v2, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-object v1

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mMosaicOperationItems:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;

    .line 125
    .local v0, "last":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mRevokedOperationItems:Ljava/util/LinkedList;

    new-instance v3, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager$RevokedItem;

    iget-object v4, v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;->mosaicGLEntity:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;->removeLast()Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem$PaintingItem;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager$RevokedItem;-><init>(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem$PaintingItem;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mMosaicOperationItems:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 129
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mRevokedBufferItems:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mBufferItems:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mBufferItems:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mBufferItems:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    goto :goto_0
.end method

.method public exportRecord()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mMosaicOperationItems:Ljava/util/LinkedList;

    return-object v0
.end method

.method public generateSample()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v1, "sample":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mMosaicOperationItems:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;

    .line 64
    .local v0, "item":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;
    iget-object v3, v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;->mosaicGLEntity:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    iget-object v3, v3, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;->name:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    .end local v0    # "item":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;
    :cond_0
    return-object v1
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 103
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mMosaicOperationItems:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    :goto_0
    return v0

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mMosaicOperationItems:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mMosaicOperationItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;->isEmpty()Z

    move-result v0

    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public record(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem$PaintingItem;Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;Z)V
    .locals 2
    .param p1, "paintingItem"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem$PaintingItem;
    .param p2, "mosaicGLEntity"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;
    .param p3, "fromUser"    # Z

    .prologue
    .line 42
    if-eqz p3, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->clearRevokedItem()V

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mMosaicOperationItems:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->addNewOperationItem(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem$PaintingItem;Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;)V

    .line 55
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mMosaicOperationItems:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;

    .line 49
    .local v0, "last":Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;
    iget-object v1, v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;->mosaicGLEntity:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    if-ne v1, p2, :cond_2

    .line 50
    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem;->add(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem$PaintingItem;)V

    goto :goto_0

    .line 52
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->addNewOperationItem(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicOperationItem$PaintingItem;Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;)V

    goto :goto_0
.end method

.method public setCaptureListener(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager$CaptureListener;)V
    .locals 0
    .param p1, "captureListener"    # Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager$CaptureListener;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->mCaptureListener:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager$CaptureListener;

    .line 156
    return-void
.end method
