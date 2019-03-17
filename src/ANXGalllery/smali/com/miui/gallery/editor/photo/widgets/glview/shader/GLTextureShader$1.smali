.class Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader$1;
.super Ljava/lang/Object;
.source "GLTextureShader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->setFloat(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;

.field final synthetic val$floatValue:F

.field final synthetic val$location:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;IF)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader$1;->this$0:Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;

    iput p2, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader$1;->val$location:I

    iput p3, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader$1;->val$floatValue:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 149
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader$1;->val$location:I

    iget v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader$1;->val$floatValue:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 150
    return-void
.end method
