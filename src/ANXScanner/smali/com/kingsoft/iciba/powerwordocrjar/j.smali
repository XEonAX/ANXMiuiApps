.class public Lcom/kingsoft/iciba/powerwordocrjar/j;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Lorg/apache/http/client/methods/HttpRequestBase;

.field public d:Lorg/apache/http/HttpResponse;

.field public e:Z

.field public f:J

.field private g:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/j;->a:I

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/j;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/j;->c:Lorg/apache/http/client/methods/HttpRequestBase;

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/j;->d:Lorg/apache/http/HttpResponse;

    iput-boolean v1, p0, Lcom/kingsoft/iciba/powerwordocrjar/j;->e:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/j;->f:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/j;->g:I

    iput p1, p0, Lcom/kingsoft/iciba/powerwordocrjar/j;->a:I

    iput-object p2, p0, Lcom/kingsoft/iciba/powerwordocrjar/j;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingsoft/iciba/powerwordocrjar/j;->c:Lorg/apache/http/client/methods/HttpRequestBase;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/j;->g:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/kingsoft/iciba/powerwordocrjar/j;->g:I

    return-void
.end method
