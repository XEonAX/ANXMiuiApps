.class Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;
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
    name = "g"
.end annotation


# instance fields
.field a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$b;

.field b:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$m;

.field c:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;

.field d:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;

.field final synthetic e:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

.field private f:I


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V
    .locals 3

    .prologue
    .line 2283
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2284
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$b;

    invoke-direct {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$b;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$b;

    .line 2285
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;

    invoke-direct {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->c:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;

    .line 2286
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$m;

    invoke-direct {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$m;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->b:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$m;

    .line 2287
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;

    invoke-direct {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;

    .line 2288
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$b;

    new-instance v1, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$l;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$l;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$1;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$b;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$o;)V

    .line 2289
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->c:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;

    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$b;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$o;)V

    .line 2290
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->b:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$m;

    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->c:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$m;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$o;)V

    .line 2291
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;

    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->b:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$m;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$o;)V

    .line 2292
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 2295
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 2296
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 2297
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 2298
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    .line 2299
    return v0
.end method

.method a()V
    .locals 3

    .prologue
    .line 2302
    const v0, 0x8b31

    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;

    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->a(ILjava/lang/String;)I

    move-result v0

    .line 2303
    const v1, 0x8b30

    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->a(ILjava/lang/String;)I

    move-result v1

    .line 2304
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    iput v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->f:I

    .line 2305
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->f:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 2306
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->f:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 2307
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->f:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 2308
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->f:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 2309
    const-string v1, "layererrenderer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->f:I

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;->a(I)V

    .line 2311
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 2315
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$b;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$b;->c(I)V

    .line 2316
    return-void
.end method

.method public a(I[F[FFLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 3

    .prologue
    .line 2331
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->f:I

    if-nez v0, :cond_0

    .line 2332
    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->a()V

    .line 2333
    :cond_0
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->f:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2334
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$b;

    invoke-virtual {v0, p5}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$b;->a(Ljava/nio/FloatBuffer;)V

    .line 2335
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$b;

    invoke-virtual {v0, p6}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$b;->b(Ljava/nio/FloatBuffer;)V

    .line 2336
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$b;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$b;->b_(I)V

    .line 2337
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->c:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;

    invoke-virtual {v0, p3}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;->a([F)V

    .line 2338
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$b;

    invoke-virtual {v0, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$b;->a([F)V

    .line 2339
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;

    invoke-virtual {v0, p4}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;->a(F)V

    .line 2340
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;

    new-instance v1, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$n;

    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

    invoke-direct {v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$n;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;->b(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$n;)V

    .line 2341
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    .line 2342
    return-void
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;[F[FFLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7

    .prologue
    .line 2326
    iget v1, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;->a:I

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$g;->a(I[F[FFLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 2327
    return-void
.end method
