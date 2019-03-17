.class public Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public backgroundColor:I

.field public meansColor:I

.field public meansSize:I

.field public symbolColor:I

.field public symbolSize:I

.field public tipsColor:I

.field public tipsSize:I

.field public wordColor:I

.field public wordSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->backgroundColor:I

    iput v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->wordColor:I

    iput v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->wordSize:I

    iput v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->symbolColor:I

    iput v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->symbolSize:I

    iput v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->meansColor:I

    iput v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->meansSize:I

    iput v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->tipsColor:I

    iput v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/BaseConfigureBean;->tipsSize:I

    return-void
.end method
