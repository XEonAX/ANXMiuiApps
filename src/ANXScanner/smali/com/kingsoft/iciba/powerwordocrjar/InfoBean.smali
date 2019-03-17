.class public Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public baseInfoBeans:Ljava/util/ArrayList;

.field public status:I

.field public word:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseInfoBeans()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;->baseInfoBeans:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;->status:I

    return v0
.end method

.method public getWord()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;->word:Ljava/lang/String;

    return-object v0
.end method
