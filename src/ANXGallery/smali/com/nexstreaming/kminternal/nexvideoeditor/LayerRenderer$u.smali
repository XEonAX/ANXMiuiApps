.class Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;
.super Ljava/lang/Object;
.source "LayerRenderer.java"

# interfaces
.implements Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "u"
.end annotation


# instance fields
.field a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;

.field b:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;

.field c:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$m;

.field d:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;

.field e:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;

.field final synthetic f:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

.field private g:I


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V
    .locals 3

    .prologue
    .line 2114
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2116
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;

    invoke-direct {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;

    .line 2117
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;

    invoke-direct {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->b:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;

    .line 2118
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$m;

    invoke-direct {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$m;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->c:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$m;

    .line 2119
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;

    invoke-direct {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;

    .line 2120
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;

    invoke-direct {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;

    .line 2121
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;

    new-instance v1, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$l;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$l;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$1;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$o;)V

    .line 2122
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->b:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;

    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$o;)V

    .line 2123
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->c:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$m;

    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->b:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$m;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$o;)V

    .line 2124
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;

    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->c:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$m;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$o;)V

    .line 2125
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;

    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$o;)V

    .line 2126
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 2130
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 2131
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 2132
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 2133
    return v0
.end method

.method a()V
    .locals 3

    .prologue
    .line 2139
    const v0, 0x8b31

    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;

    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->a(ILjava/lang/String;)I

    move-result v0

    .line 2140
    const v1, 0x8b30

    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->a(ILjava/lang/String;)I

    move-result v1

    .line 2141
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    iput v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->g:I

    .line 2142
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->g:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 2143
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->g:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 2144
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->g:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 2145
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->g:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 2146
    const-string v1, "error"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->g:I

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;->a(I)V

    .line 2148
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;->d_(I)V

    .line 2153
    return-void
.end method

.method public a(I[F[FFLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 3

    .prologue
    .line 2168
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->g:I

    if-nez v0, :cond_0

    .line 2169
    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->a()V

    .line 2171
    :cond_0
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->g:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2172
    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 2173
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;

    invoke-virtual {v0, p5}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->a(Ljava/nio/FloatBuffer;)V

    .line 2174
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;

    invoke-virtual {v0, p6}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->b(Ljava/nio/FloatBuffer;)V

    .line 2175
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->a_(I)V

    .line 2176
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->b:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;

    invoke-virtual {v0, p3}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;->a([F)V

    .line 2177
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;

    invoke-virtual {v0, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->a([F)V

    .line 2178
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;

    invoke-virtual {v0, p4}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;->a(F)V

    .line 2179
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;

    new-instance v1, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$n;

    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

    invoke-direct {v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$n;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;->b(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$n;)V

    .line 2180
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 2181
    return-void
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;[F[FFLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7

    .prologue
    .line 2162
    iget v1, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;->a:I

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$u;->a(I[F[FFLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 2163
    return-void
.end method
