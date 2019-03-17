.class public Lcom/alibaba/alibclinkpartner/d/e/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Map;
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

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alibclinkpartner/d/e/a;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/alibaba/alibclinkpartner/d/e/a;
    .locals 1

    new-instance v0, Lcom/alibaba/alibclinkpartner/d/e/a;

    invoke-direct {v0}, Lcom/alibaba/alibclinkpartner/d/e/a;-><init>()V

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "https://wgo.mmstat.com/%s?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/alibclinkpartner/d/e/a;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alibclinkpartner/d/e/a;->a:Ljava/util/Map;

    invoke-static {v2}, Lcom/alibaba/alibclinkpartner/j/i;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/alibaba/alibclinkpartner/d/e/a;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/alibaba/alibclinkpartner/d/e/a;->b:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/alibaba/alibclinkpartner/d/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/alibclinkpartner/d/e/a;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/e/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public b()Z
    .locals 5

    new-instance v0, Lcom/alibaba/alibclinkpartner/f/b;

    invoke-direct {v0}, Lcom/alibaba/alibclinkpartner/f/b;-><init>()V

    invoke-direct {p0}, Lcom/alibaba/alibclinkpartner/d/e/a;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alibclinkpartner/f/b;->a:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/alibclinkpartner/f/b;->c:I

    const-string v1, "ALPAplus"

    const-string v2, "send"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alibaba/alibclinkpartner/f/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/alibclinkpartner/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/alibclinkpartner/b;->a:Lcom/alibaba/alibclinkpartner/d/d/c;

    new-instance v2, Lcom/alibaba/alibclinkpartner/d/e/b;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/alibclinkpartner/d/e/b;-><init>(Lcom/alibaba/alibclinkpartner/d/e/a;Lcom/alibaba/alibclinkpartner/f/b;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/alibclinkpartner/d/d/c;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method
