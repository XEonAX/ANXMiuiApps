.class Lcom/uploader/implement/b/a/b$a;
.super Ljava/lang/Object;
.source "ConnectionRecycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uploader/implement/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/uploader/implement/d/b;

.field final b:Lcom/uploader/implement/a/e;

.field final c:Lcom/uploader/implement/b/d;


# direct methods
.method constructor <init>(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/b/d;)V
    .locals 0
    .param p1, "session"    # Lcom/uploader/implement/d/b;
    .param p2, "request"    # Lcom/uploader/implement/a/e;
    .param p3, "listener"    # Lcom/uploader/implement/b/d;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/uploader/implement/b/a/b$a;->a:Lcom/uploader/implement/d/b;

    .line 60
    iput-object p2, p0, Lcom/uploader/implement/b/a/b$a;->b:Lcom/uploader/implement/a/e;

    .line 61
    iput-object p3, p0, Lcom/uploader/implement/b/a/b$a;->c:Lcom/uploader/implement/b/d;

    .line 62
    return-void
.end method
