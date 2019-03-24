.class public Lcom/miui/internal/component/plugin/Extension;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dP:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/miui/internal/component/plugin/Extension;->dP:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/miui/internal/component/plugin/Extension;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/miui/internal/component/plugin/Extension;->dP:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/miui/internal/component/plugin/Extension;->name:Ljava/lang/String;

    .line 18
    return-void
.end method
