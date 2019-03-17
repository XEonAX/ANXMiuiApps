.class public Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cixing:Ljava/lang/String;

.field public shiyi:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;->cixing:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;->shiyi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCixing()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;->cixing:Ljava/lang/String;

    return-object v0
.end method

.method public getShiyi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;->shiyi:Ljava/lang/String;

    return-object v0
.end method
