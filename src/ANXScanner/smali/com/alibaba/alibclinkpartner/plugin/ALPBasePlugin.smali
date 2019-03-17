.class public abstract Lcom/alibaba/alibclinkpartner/plugin/ALPBasePlugin;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alibaba/alibclinkpartner/plugin/ALPBasePlugin;",
        ">;"
    }
.end annotation


# static fields
.field public static final PRIORITY_HIGH:I = 0x3e7

.field public static final PRIORITY_LOW:I = 0x1

.field public static final PRIORITY_MID:I = 0x1f4


# instance fields
.field public event:Ljava/lang/String;

.field public pluginKey:Ljava/lang/String;

.field public pluginRules:[Ljava/lang/String;

.field public prior:I


# direct methods
.method public constructor <init>([Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Lcom/alibaba/alibclinkpartner/plugin/ALPBasePlugin;->pluginRules:[Ljava/lang/String;

    iput p2, p0, Lcom/alibaba/alibclinkpartner/plugin/ALPBasePlugin;->prior:I

    if-nez p3, :cond_1

    const-string p3, ""

    :cond_1
    iput-object p3, p0, Lcom/alibaba/alibclinkpartner/plugin/ALPBasePlugin;->pluginKey:Ljava/lang/String;

    if-nez p4, :cond_2

    const-string p4, ""

    :cond_2
    iput-object p4, p0, Lcom/alibaba/alibclinkpartner/plugin/ALPBasePlugin;->event:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x1f4

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/alibaba/alibclinkpartner/plugin/ALPBasePlugin;-><init>([Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/alibaba/alibclinkpartner/plugin/ALPBasePlugin;)I
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/alibaba/alibclinkpartner/plugin/ALPBasePlugin;->prior:I

    iget v1, p1, Lcom/alibaba/alibclinkpartner/plugin/ALPBasePlugin;->prior:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/alibaba/alibclinkpartner/plugin/ALPBasePlugin;

    invoke-virtual {p0, p1}, Lcom/alibaba/alibclinkpartner/plugin/ALPBasePlugin;->compareTo(Lcom/alibaba/alibclinkpartner/plugin/ALPBasePlugin;)I

    move-result v0

    return v0
.end method

.method public abstract execute(ILandroid/os/Bundle;)Z
.end method
