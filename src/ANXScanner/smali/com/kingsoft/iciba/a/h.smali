.class final Lcom/kingsoft/iciba/a/h;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/io/InputStream;

.field public c:Z

.field public d:Ljava/util/ArrayList;

.field public e:Lcom/kingsoft/iciba/a/a/a;


# direct methods
.method public constructor <init>(Lcom/kingsoft/iciba/a/e;Ljava/lang/String;Ljava/util/ArrayList;Lcom/kingsoft/iciba/a/a/a;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/iciba/a/h;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/kingsoft/iciba/a/h;->b:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/iciba/a/h;->c:Z

    iput-object v1, p0, Lcom/kingsoft/iciba/a/h;->d:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/kingsoft/iciba/a/h;->a:Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object v1, p0, Lcom/kingsoft/iciba/a/h;->d:Ljava/util/ArrayList;

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/iciba/a/h;->c:Z

    iput-object p4, p0, Lcom/kingsoft/iciba/a/h;->e:Lcom/kingsoft/iciba/a/a/a;

    return-void

    :cond_1
    iput-object p3, p0, Lcom/kingsoft/iciba/a/h;->d:Ljava/util/ArrayList;

    goto :goto_0
.end method
