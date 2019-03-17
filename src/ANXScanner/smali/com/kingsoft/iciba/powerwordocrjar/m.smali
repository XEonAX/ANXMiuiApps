.class public Lcom/kingsoft/iciba/powerwordocrjar/m;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/m;->c:Z

    iput v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/m;->d:I

    return-void
.end method
