.class public Lcom/uploader/implement/a/b/a;
.super Ljava/lang/Object;
.source "ActionResponse.java"

# interfaces
.implements Lcom/uploader/implement/a/f;


# instance fields
.field final a:I

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/util/Map;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "content"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/uploader/implement/a/b/a;->a:I

    .line 29
    iput-object p2, p0, Lcom/uploader/implement/a/b/a;->b:Ljava/util/Map;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uploader/implement/a/b/a;->c:[Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public varargs constructor <init>(ILjava/util/Map;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "content"    # Ljava/util/Map;
    .param p3, "objects"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/uploader/implement/a/b/a;->a:I

    .line 23
    iput-object p2, p0, Lcom/uploader/implement/a/b/a;->b:Ljava/util/Map;

    .line 24
    iput-object p3, p0, Lcom/uploader/implement/a/b/a;->c:[Ljava/lang/Object;

    .line 25
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/uploader/implement/a/b/a;->a:I

    return v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uploader/implement/a/b/a;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/uploader/implement/a/b/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/uploader/implement/a/b/a;->b:Ljava/util/Map;

    return-object v0
.end method
