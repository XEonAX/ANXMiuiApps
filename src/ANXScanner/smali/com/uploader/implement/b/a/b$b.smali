.class final Lcom/uploader/implement/b/a/b$b;
.super Ljava/lang/Object;
.source "ConnectionRecycler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uploader/implement/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/uploader/implement/b/e;

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uploader/implement/b/e;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uploader/implement/b/a/b$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/uploader/implement/b/e;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "connection"    # Lcom/uploader/implement/b/e;
    .param p2, "connections"    # Ljava/util/ArrayList;
    .param p3, "timeoutList"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uploader/implement/b/e;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uploader/implement/b/e;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/uploader/implement/b/a/b$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/uploader/implement/b/a/b$b;->a:Lcom/uploader/implement/b/e;

    .line 75
    iput-object p2, p0, Lcom/uploader/implement/b/a/b$b;->b:Ljava/util/ArrayList;

    .line 76
    iput-object p3, p0, Lcom/uploader/implement/b/a/b$b;->c:Ljava/util/ArrayList;

    .line 77
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/uploader/implement/b/a/b$b;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/uploader/implement/b/a/b$b;->a:Lcom/uploader/implement/b/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/uploader/implement/b/a/b$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/uploader/implement/b/a/b$b;->a:Lcom/uploader/implement/b/e;

    invoke-interface {v0}, Lcom/uploader/implement/b/e;->c()Z

    .line 84
    return-void
.end method
