.class Lcom/uploader/implement/b/a/c$2;
.super Ljava/lang/Object;
.source "CustomizedSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uploader/implement/b/a/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uploader/implement/b/a/c$b;

.field final synthetic b:Lcom/uploader/implement/b/a/c;


# direct methods
.method constructor <init>(Lcom/uploader/implement/b/a/c;Lcom/uploader/implement/b/a/c$b;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/uploader/implement/b/a/c$2;->b:Lcom/uploader/implement/b/a/c;

    iput-object p2, p0, Lcom/uploader/implement/b/a/c$2;->a:Lcom/uploader/implement/b/a/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 416
    iget-object v0, p0, Lcom/uploader/implement/b/a/c$2;->b:Lcom/uploader/implement/b/a/c;

    iget-object v1, p0, Lcom/uploader/implement/b/a/c$2;->a:Lcom/uploader/implement/b/a/c$b;

    iget v1, v1, Lcom/uploader/implement/b/a/c$b;->c:I

    iget-object v2, p0, Lcom/uploader/implement/b/a/c$2;->a:Lcom/uploader/implement/b/a/c$b;

    iget-object v2, v2, Lcom/uploader/implement/b/a/c$b;->a:[B

    iget-object v3, p0, Lcom/uploader/implement/b/a/c$2;->a:Lcom/uploader/implement/b/a/c$b;

    iget v3, v3, Lcom/uploader/implement/b/a/c$b;->b:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/uploader/implement/b/a/c;->a(I[BI)V

    .line 417
    return-void
.end method
