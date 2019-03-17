.class public Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;
.super Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
.source "BaseOriginalFilterGroup.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/core/imports/filter/render/IFilterEmptyValidate;


# instance fields
.field private mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupFrameBufferTextures:[I

.field private mGroupFrameBuffers:[I

.field private mGroupFrameHeight:I

.field private mGroupFrameWidth:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 24
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iput-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameBuffers:[I

    .line 13
    iput-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameBufferTextures:[I

    .line 14
    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameWidth:I

    .line 15
    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameHeight:I

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;>;"
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 19
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iput-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameBuffers:[I

    .line 13
    iput-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameBufferTextures:[I

    .line 14
    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameWidth:I

    .line 15
    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameHeight:I

    .line 20
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mFilters:Ljava/util/List;

    .line 21
    return-void
.end method

.method private destroyGroupFrameBuffers()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 144
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameBufferTextures:[I

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameBufferTextures:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameBufferTextures:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 146
    iput-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameBufferTextures:[I

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameBuffers:[I

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameBuffers:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameBuffers:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 150
    iput-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameBuffers:[I

    .line 152
    :cond_1
    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    .line 38
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;

    .line 39
    .local v0, "filter":Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    invoke-virtual {v0}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;->init()V

    goto :goto_0

    .line 41
    .end local v0    # "filter":Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    :cond_0
    return-void
.end method

.method public initFrameBuffers(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;

    invoke-virtual {v1, p1, p2}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;->initFrameBuffers(II)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 160
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;

    .line 161
    .local v0, "filter":Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    instance-of v2, v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/IFilterEmptyValidate;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/IFilterEmptyValidate;

    .end local v0    # "filter":Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/IFilterEmptyValidate;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    :cond_1
    const/4 v1, 0x0

    .line 166
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 29
    invoke-super {p0}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;->onDestroy()V

    .line 30
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;

    .line 31
    .local v0, "filter":Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    invoke-virtual {v0}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;->destroy()V

    goto :goto_0

    .line 33
    .end local v0    # "filter":Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->destroyGroupFrameBuffers()V

    .line 34
    return-void
.end method

.method public onDisplaySizeChanged(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;->onDisplaySizeChanged(II)V

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;

    invoke-virtual {v1, p1, p2}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;->onDisplaySizeChanged(II)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method

.method public onDrawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I
    .locals 10
    .param p1, "textureId"    # I
    .param p2, "cubeBuffer"    # Ljava/nio/FloatBuffer;
    .param p3, "textureBuffer"    # Ljava/nio/FloatBuffer;

    .prologue
    const v9, 0x8d40

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 106
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameBuffers:[I

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameBufferTextures:[I

    if-nez v7, :cond_2

    .line 107
    :cond_0
    const/4 v5, -0x1

    .line 124
    :cond_1
    return v5

    .line 109
    :cond_2
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 110
    .local v4, "size":I
    move v3, p1

    .line 111
    .local v3, "previousTexture":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 112
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;

    .line 113
    .local v0, "filter":Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    add-int/lit8 v7, v4, -0x1

    if-ge v1, v7, :cond_3

    move v2, v5

    .line 114
    .local v2, "isNotLast":Z
    :goto_1
    if-eqz v2, :cond_4

    .line 115
    iget v7, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mInputWidth:I

    iget v8, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mInputHeight:I

    invoke-static {v6, v6, v7, v8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 116
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameBuffers:[I

    aget v7, v7, v1

    invoke-static {v9, v7}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 117
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3, v7, v8}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;->onDrawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    .line 118
    invoke-static {v9, v6}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 119
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameBufferTextures:[I

    aget v3, v7, v1

    .line 111
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "isNotLast":Z
    :cond_3
    move v2, v6

    .line 113
    goto :goto_1

    .line 121
    .restart local v2    # "isNotLast":Z
    :cond_4
    invoke-virtual {v0, v3, p2, p3}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;->onDrawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    goto :goto_2
.end method

.method public onDrawToTexture(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I
    .locals 7
    .param p1, "textureId"    # I
    .param p2, "cubeBuffer"    # Ljava/nio/FloatBuffer;
    .param p3, "textureBuffer"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 129
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 130
    .local v4, "size":I
    move v3, p1

    .line 131
    .local v3, "previousTexture":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 132
    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_0

    const/4 v2, 0x1

    .line 133
    .local v2, "isNotLast":Z
    :goto_1
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;

    .line 134
    .local v0, "filter":Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    if-eqz v2, :cond_1

    .line 135
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3, v5, v6}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;->onDrawToTexture(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    move-result v3

    .line 131
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "filter":Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    .end local v2    # "isNotLast":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 137
    .restart local v0    # "filter":Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    .restart local v2    # "isNotLast":Z
    :cond_1
    invoke-virtual {v0, v3, p2, p3}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;->onDrawToTexture(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    move-result v3

    goto :goto_2

    .line 140
    .end local v0    # "filter":Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;
    .end local v2    # "isNotLast":Z
    :cond_2
    return v3
.end method

.method public onInputSizeChanged(II)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;->onInputSizeChanged(II)V

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 47
    .local v10, "size":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 48
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;

    invoke-virtual {v0, p1, p2}, Lcom/miui/filtersdk/filter/base/BaseOriginalFilter;->onInputSizeChanged(II)V

    .line 47
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameBuffers:[I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameWidth:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameHeight:I

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameBuffers:[I

    array-length v0, v0

    add-int/lit8 v1, v10, -0x1

    if-eq v0, v1, :cond_2

    .line 51
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->destroyGroupFrameBuffers()V

    .line 52
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameWidth:I

    .line 53
    iput p2, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameHeight:I

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameBuffers:[I

    if-nez v0, :cond_3

    .line 56
    add-int/lit8 v0, v10, -0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameBuffers:[I

    .line 57
    add-int/lit8 v0, v10, -0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameBufferTextures:[I

    .line 59
    const/4 v9, 0x0

    :goto_1
    add-int/lit8 v0, v10, -0x1

    if-ge v9, v0, :cond_3

    .line 60
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameBuffers:[I

    invoke-static {v0, v1, v9}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 62
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameBufferTextures:[I

    invoke-static {v0, v1, v9}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 63
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameBufferTextures:[I

    aget v1, v1, v9

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 64
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1908

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 66
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 68
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const v2, 0x46180400    # 9729.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 70
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x47012f00    # 33071.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 72
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x47012f00    # 33071.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 75
    const v0, 0x8d40

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameBuffers:[I

    aget v1, v1, v9

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 76
    const v0, 0x8d40

    const v1, 0x8ce0

    const/16 v2, 0xde1

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/filter/render/BaseOriginalFilterGroup;->mGroupFrameBufferTextures:[I

    aget v3, v3, v9

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 79
    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 80
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 59
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 83
    :cond_3
    return-void
.end method
