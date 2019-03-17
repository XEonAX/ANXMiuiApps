.class public Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public chSymbol:Ljava/lang/String;

.field public shiyiBeans:Ljava/util/ArrayList;

.field public ttsSymbol:Ljava/lang/String;

.field public ukSymbol:Ljava/lang/String;

.field public usSymbol:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->ukSymbol:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->usSymbol:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->ttsSymbol:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->chSymbol:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->shiyiBeans:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getChSymbol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->chSymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getShiyiBeans()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->shiyiBeans:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTtsSymbol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->ttsSymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getUkSymbol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->ukSymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getUsSymbol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->usSymbol:Ljava/lang/String;

    return-object v0
.end method
