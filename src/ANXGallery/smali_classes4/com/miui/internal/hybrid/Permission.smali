.class public Lcom/miui/internal/hybrid/Permission;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fC:Ljava/lang/String;

.field private fD:Z

.field private fE:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUri()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/miui/internal/hybrid/Permission;->fC:Ljava/lang/String;

    return-object v0
.end method

.method public isApplySubdomains()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/miui/internal/hybrid/Permission;->fD:Z

    return v0
.end method

.method public isForbidden()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/miui/internal/hybrid/Permission;->fE:Z

    return v0
.end method

.method public setApplySubdomains(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/miui/internal/hybrid/Permission;->fD:Z

    .line 27
    return-void
.end method

.method public setForbidden(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/miui/internal/hybrid/Permission;->fE:Z

    .line 35
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/miui/internal/hybrid/Permission;->fC:Ljava/lang/String;

    .line 19
    return-void
.end method
